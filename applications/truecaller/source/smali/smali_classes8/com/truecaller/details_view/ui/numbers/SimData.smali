.class public final enum Lcom/truecaller/details_view/ui/numbers/SimData;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/details_view/ui/numbers/SimData;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001b\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/truecaller/details_view/ui/numbers/SimData;",
        "",
        "",
        "icon",
        "I",
        "getIcon",
        "()I",
        "slot",
        "getSlot",
        "<init>",
        "(Ljava/lang/String;III)V",
        "SIM_1",
        "SIM_2",
        "SIM_UNKNOWN",
        "details-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/details_view/ui/numbers/SimData;

.field public static final enum SIM_1:Lcom/truecaller/details_view/ui/numbers/SimData;

.field public static final enum SIM_2:Lcom/truecaller/details_view/ui/numbers/SimData;

.field public static final enum SIM_UNKNOWN:Lcom/truecaller/details_view/ui/numbers/SimData;


# instance fields
.field private final icon:I

.field private final slot:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/details_view/ui/numbers/SimData;

    new-instance v1, Lcom/truecaller/details_view/ui/numbers/SimData;

    .line 1
    sget v2, Lcom/truecaller/details_view/R$drawable;->ic_tcx_action_call_sim_1_outline_24dp:I

    const-string v3, "SIM_1"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2, v4}, Lcom/truecaller/details_view/ui/numbers/SimData;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/truecaller/details_view/ui/numbers/SimData;->SIM_1:Lcom/truecaller/details_view/ui/numbers/SimData;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/details_view/ui/numbers/SimData;

    .line 2
    sget v2, Lcom/truecaller/details_view/R$drawable;->ic_tcx_action_call_sim_2_outline_24dp:I

    const-string v3, "SIM_2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2, v4}, Lcom/truecaller/details_view/ui/numbers/SimData;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/truecaller/details_view/ui/numbers/SimData;->SIM_2:Lcom/truecaller/details_view/ui/numbers/SimData;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/details_view/ui/numbers/SimData;

    .line 3
    sget v2, Lcom/truecaller/details_view/R$drawable;->ic_tcx_action_call_outline_24dp:I

    const-string v3, "SIM_UNKNOWN"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/truecaller/details_view/ui/numbers/SimData;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/truecaller/details_view/ui/numbers/SimData;->SIM_UNKNOWN:Lcom/truecaller/details_view/ui/numbers/SimData;

    aput-object v1, v0, v4

    sput-object v0, Lcom/truecaller/details_view/ui/numbers/SimData;->$VALUES:[Lcom/truecaller/details_view/ui/numbers/SimData;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/details_view/ui/numbers/SimData;->icon:I

    iput p4, p0, Lcom/truecaller/details_view/ui/numbers/SimData;->slot:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/details_view/ui/numbers/SimData;
    .locals 1

    const-class v0, Lcom/truecaller/details_view/ui/numbers/SimData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/details_view/ui/numbers/SimData;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/details_view/ui/numbers/SimData;
    .locals 1

    sget-object v0, Lcom/truecaller/details_view/ui/numbers/SimData;->$VALUES:[Lcom/truecaller/details_view/ui/numbers/SimData;

    invoke-virtual {v0}, [Lcom/truecaller/details_view/ui/numbers/SimData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/details_view/ui/numbers/SimData;

    return-object v0
.end method


# virtual methods
.method public final getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/details_view/ui/numbers/SimData;->icon:I

    return v0
.end method

.method public final getSlot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/details_view/ui/numbers/SimData;->slot:I

    return v0
.end method
