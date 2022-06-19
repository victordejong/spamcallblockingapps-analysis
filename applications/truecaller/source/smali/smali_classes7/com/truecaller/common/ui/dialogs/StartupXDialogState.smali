.class public final enum Lcom/truecaller/common/ui/dialogs/StartupXDialogState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/common/ui/dialogs/StartupXDialogState;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/truecaller/common/ui/dialogs/StartupXDialogState;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SHOWING",
        "DISMISSED_POSITIVE",
        "DISMISSED_NEGATIVE",
        "DISMISSED",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

.field public static final enum DISMISSED:Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

.field public static final enum DISMISSED_NEGATIVE:Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

.field public static final enum DISMISSED_POSITIVE:Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

.field public static final enum SHOWING:Lcom/truecaller/common/ui/dialogs/StartupXDialogState;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    new-instance v1, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    const-string v2, "SHOWING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;->SHOWING:Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    const-string v2, "DISMISSED_POSITIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;->DISMISSED_POSITIVE:Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    const-string v2, "DISMISSED_NEGATIVE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;->DISMISSED_NEGATIVE:Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    const-string v2, "DISMISSED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;->DISMISSED:Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;->$VALUES:[Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/common/ui/dialogs/StartupXDialogState;
    .locals 1

    const-class v0, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/common/ui/dialogs/StartupXDialogState;
    .locals 1

    sget-object v0, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;->$VALUES:[Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    invoke-virtual {v0}, [Lcom/truecaller/common/ui/dialogs/StartupXDialogState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    return-object v0
.end method
