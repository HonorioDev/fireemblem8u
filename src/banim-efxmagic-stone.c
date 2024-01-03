#include "global.h"

#include "anime.h"
#include "ekrbattle.h"
#include "efxbattle.h"
#include "efxmagic.h"
#include "hardware.h"
#include "bmlib.h"

// clang-format off

struct ProcCmd CONST_DATA gUnknown_085D7E20[] =
{
    PROC_NAME("efxStone"),
    PROC_REPEAT(sub_8067510),
    PROC_END,
};

// clang-format on

//! FE8U = 0x080674D4
void StartSpellAnimStone(struct Anim * anim)
{
    struct ProcEfx * proc;

    SpellFx_Begin();
    NewEfxSpellCast();
    SpellFx_ClearBG1Position();

    proc = Proc_Start(gUnknown_085D7E20, PROC_TREE_3);
    proc->anim = anim;
    proc->timer = 0;
    proc->hitted = CheckRoundMiss(GetAnimRoundTypeAnotherSide(anim));

    return;
}

//! FE8U = 0x08067510
void sub_8067510(struct ProcEfx * proc)
{
    struct Anim * anim = GetAnimAnotherSide(proc->anim);
    int duration = EfxGetCamMovDuration();

    proc->timer++;

    if (proc->timer == 1)
    {
        NewEfxFarAttackWithDistance(proc->anim, -1);
    }
    else if (proc->timer == duration + 10)
    {
        PlaySFX(0x3b8, 0x100, anim->xPosition, 1);
        sub_80676E4(anim, 200);
    }
    else if (proc->timer == duration + 72)
    {
        anim->state3 |= 9;

        if (!proc->hitted)
        {
            PlaySFX(0x3B9, 0x100, anim->xPosition, 1);

            sub_80675D4(anim);

            if (GettUnitEfxDebuff(anim) == UNIT_STATUS_NONE)
            {
                SetUnitEfxDebuff(anim, UNIT_STATUS_PETRIFY);
            }
        }

        StartBattleAnimHitEffectsDefault(anim, proc->hitted);
    }
    else if (proc->timer == duration + 236)
    {
        SpellFx_Finish();
        RegisterEfxSpellCastEnd();
        Proc_Break(proc);
    }

    return;
}

// clang-format off

struct ProcCmd CONST_DATA ProcScr_efxStoneBG[] =
{
    PROC_NAME("efxStoneBG"),
    PROC_REPEAT(sub_8067660),
    PROC_END,
};

u16 * CONST_DATA gUnknown_085D7E50[] =
{
    Img_086BDB7C,
    Img_086BE0CC,
    Img_086BE668,
    Img_086BEC5C,
    Img_086BF2F4,
    Img_086BF9B0,
    Img_086C0110,
    Img_086C0924,
    Img_086C119C,
    Img_086C1AD0,
    Img_086C2438,
    Img_086C2DA8,
    Img_086C375C,
    Img_086C40F4,
    Img_086C4AB4,
    Img_086C53CC,
    Img_086C5D20,
    Img_086C669C,
    Img_086C7010,
};

u16 * CONST_DATA gUnknown_085D7E9C[] =
{
    Tsa_086C796C,
    Tsa_086C7A2C,
    Tsa_086C7AF8,
    Tsa_086C7BD0,
    Tsa_086C7CBC,
    Tsa_086C7DC0,
    Tsa_086C7ED4,
    Tsa_086C7FFC,
    Tsa_086C8138,
    Tsa_086C828C,
    Tsa_086C8404,
    Tsa_086C8570,
    Tsa_086C86E4,
    Tsa_086C8860,
    Tsa_086C89EC,
    Tsa_086C8B30,
    Tsa_086C8C84,
    Tsa_086C8DE8,
    Tsa_086C8F4C,
};

// clang-format on

//! FE8U = 0x080675D4
void sub_80675D4(struct Anim * anim)
{
    // clang-format off
    static const u16 gUnknown_080DE974[] =
    {
        0, 4,
        1, 4,
        2, 4,
        3, 4,
        4, 4,
        5, 4,
        6, 4,
        7, 4,
        8, 4,
        9, 4,
        10, 4,
        11, 4,
        12, 4,
        13, 4,
        14, 4,
        15, 4,
        16, 4,
        17, 4,
        18, 4,
        -1,
    };
    // clang-format on

    struct ProcEfxBG * proc;

    gEfxBgSemaphore++;

    proc = Proc_Start(ProcScr_efxStoneBG, PROC_TREE_3);
    proc->anim = GetAnimAnotherSide(anim);
    proc->timer = 0;
    proc->frame = 0;
    proc->frame_config = gUnknown_080DE974;

    proc->tsal = gUnknown_085D7E9C;
    proc->tsar = gUnknown_085D7E9C;

    proc->img = gUnknown_085D7E50;

    SpellFx_RegisterBgPal(gUnknown_086C790C, PLTT_SIZE_4BPP);
    SpellFx_SetSomeColorEffect();

    if (gEkrDistanceType != 0)
    {
        if (GetAnimPosition(proc->anim) == 0)
        {
            BG_SetPosition(1, 232, 0);
        }
        else
        {
            BG_SetPosition(1, 24, 0);
        }
    }

    return;
}

//! FE8U = 0x08067660
void sub_8067660(struct ProcEfxBG * proc)
{
    int ret = EfxAdvanceFrameLut((s16 *)&proc->timer, (s16 *)&proc->frame, proc->frame_config);

    if (ret >= 0)
    {
        u16 ** tsaL = proc->tsal;
        u16 ** tsaR = proc->tsar;
        u16 ** img = proc->img;

        SpellFx_WriteBgMap(proc->anim, *(tsaL + ret), *(tsaR + ret));
        SpellFx_RegisterBgGfx(*(img + ret), 32 * 8 * CHR_SIZE);

        if (ret == 17)
        {
            SpellFx_RegisterBgPal(gUnknown_086C792C, PLTT_SIZE_4BPP);
        }

        if (ret == 18)
        {
            SpellFx_RegisterBgPal(gUnknown_086C794C, PLTT_SIZE_4BPP);
        }
    }
    else
    {
        if (ret == -1)
        {
            SpellFx_ClearBG1();
            gEfxBgSemaphore--;
            SetDefaultColorEffects_();
            Proc_Break(proc);
        }
    }

    return;
}

// clang-format off

struct ProcCmd CONST_DATA gUnknown_085D7EE8[] =
{
    PROC_NAME("efxStoneOBJ"),
    PROC_REPEAT(sub_8067764),
    PROC_END,
};

// clang-format on

//! FE8U = 0x080676E4
void sub_80676E4(struct Anim * anim, int terminator)
{
    struct ProcEfxOBJ * proc;
    struct Anim * frontAnim;
    u32 * scr;

    gEfxBgSemaphore++;

    proc = Proc_Start(gUnknown_085D7EE8, PROC_TREE_3);
    proc->anim = GetAnimAnotherSide(anim);
    proc->timer = 0;
    proc->terminator = terminator;

    scr = gUnknown_086BDA5C;
    frontAnim = EfxCreateFrontAnim(anim, scr, scr, scr, scr);
    proc->anim2 = frontAnim;

    frontAnim->yPosition += 12;
    frontAnim->timer = 0;
    frontAnim->drawLayerPriority = 20;

    AnimSort();

    SpellFx_RegisterObjPal(gUnknown_086BD76C, PLTT_SIZE_4BPP);
    SpellFx_RegisterObjGfx(gUnknown_086BD260, 32 * 4 * CHR_SIZE);

    return;
}

//! FE8U = 0x08067764
void sub_8067764(struct ProcEfxOBJ * proc)
{
    proc->timer++;

    if (proc->timer == proc->terminator)
    {
        gEfxBgSemaphore--;
        AnimDelete(proc->anim2);
        Proc_Break(proc);
    }

    return;
}
