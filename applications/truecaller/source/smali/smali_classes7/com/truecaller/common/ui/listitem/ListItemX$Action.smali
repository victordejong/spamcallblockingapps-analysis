.class public final enum Lcom/truecaller/common/ui/listitem/ListItemX$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/common/ui/listitem/ListItemX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/common/ui/listitem/ListItemX$Action;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/truecaller/common/ui/listitem/ListItemX$Action;",
        "",
        "",
        "drawableResId",
        "I",
        "getDrawableResId",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "CALL",
        "MESSAGE",
        "INFO",
        "FLASH",
        "VOICE",
        "SIM_ONE",
        "SIM_TWO",
        "PROFILE",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/common/ui/listitem/ListItemX$Action;

.field public static final enum CALL:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

.field public static final enum FLASH:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

.field public static final enum INFO:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

.field public static final enum MESSAGE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

.field public static final enum PROFILE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

.field public static final enum SIM_ONE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

.field public static final enum SIM_TWO:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

.field public static final enum VOICE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;


# instance fields
.field private final drawableResId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    new-instance v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    .line 1
    sget v2, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_action_call_outline_24dp:I

    const-string v3, "CALL"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/common/ui/listitem/ListItemX$Action;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->CALL:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    .line 2
    sget v2, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_action_message_outline_24dp:I

    const-string v3, "MESSAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/common/ui/listitem/ListItemX$Action;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->MESSAGE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    .line 3
    sget v2, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_action_info_24dp:I

    const-string v3, "INFO"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/common/ui/listitem/ListItemX$Action;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->INFO:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    .line 4
    sget v2, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_action_flash_outline_24dp:I

    const-string v3, "FLASH"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/common/ui/listitem/ListItemX$Action;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->FLASH:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    .line 5
    sget v2, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_action_voice_outline_24dp:I

    const-string v3, "VOICE"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/common/ui/listitem/ListItemX$Action;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->VOICE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    .line 6
    sget v2, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_action_call_sim_1_outline_24dp:I

    const-string v3, "SIM_ONE"

    const/4 v4, 0x5

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/common/ui/listitem/ListItemX$Action;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->SIM_ONE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    .line 7
    sget v2, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_action_call_sim_2_outline_24dp:I

    const-string v3, "SIM_TWO"

    const/4 v4, 0x6

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/common/ui/listitem/ListItemX$Action;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->SIM_TWO:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    .line 8
    sget v2, Lcom/truecaller/common/ui/R$drawable;->ic_action_chevron_right:I

    const-string v3, "PROFILE"

    const/4 v4, 0x7

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/common/ui/listitem/ListItemX$Action;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->PROFILE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->$VALUES:[Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->drawableResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/common/ui/listitem/ListItemX$Action;
    .locals 1

    const-class v0, Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/common/ui/listitem/ListItemX$Action;
    .locals 1

    sget-object v0, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->$VALUES:[Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    invoke-virtual {v0}, [Lcom/truecaller/common/ui/listitem/ListItemX$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    return-object v0
.end method


# virtual methods
.method public final getDrawableResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->drawableResId:I

    return v0
.end method
