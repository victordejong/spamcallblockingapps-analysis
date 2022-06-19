.class public final enum Lcom/truecaller/wizard/framework/WizardStartContext;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/wizard/framework/WizardStartContext;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0016\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/truecaller/wizard/framework/WizardStartContext;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "EDIT_PROFILE",
        "PREMIUM_VIEW",
        "CALLER_ID_SETTING",
        "MAIN_SETTINGS",
        "NUDGE_NOTIFICATION",
        "INIT",
        "INIT_RESUME",
        "REGISTER",
        "BLOCKING",
        "CHANGE_PHONE",
        "LOGOUT",
        "GLOBAL_SEARCH",
        "NOTIFICATION",
        "NOTIFICATIONS_VIEW",
        "AC_PROMOTION",
        "wizard-tc_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/wizard/framework/WizardStartContext;

.field public static final enum AC_PROMOTION:Lcom/truecaller/wizard/framework/WizardStartContext;

.field public static final enum BLOCKING:Lcom/truecaller/wizard/framework/WizardStartContext;

.field public static final enum CALLER_ID_SETTING:Lcom/truecaller/wizard/framework/WizardStartContext;

.field public static final enum CHANGE_PHONE:Lcom/truecaller/wizard/framework/WizardStartContext;

.field public static final enum EDIT_PROFILE:Lcom/truecaller/wizard/framework/WizardStartContext;

.field public static final enum GLOBAL_SEARCH:Lcom/truecaller/wizard/framework/WizardStartContext;

.field public static final enum INIT:Lcom/truecaller/wizard/framework/WizardStartContext;

.field public static final enum INIT_RESUME:Lcom/truecaller/wizard/framework/WizardStartContext;

.field public static final enum LOGOUT:Lcom/truecaller/wizard/framework/WizardStartContext;

.field public static final enum MAIN_SETTINGS:Lcom/truecaller/wizard/framework/WizardStartContext;

.field public static final enum NOTIFICATION:Lcom/truecaller/wizard/framework/WizardStartContext;

.field public static final enum NOTIFICATIONS_VIEW:Lcom/truecaller/wizard/framework/WizardStartContext;

.field public static final enum NUDGE_NOTIFICATION:Lcom/truecaller/wizard/framework/WizardStartContext;

.field public static final enum PREMIUM_VIEW:Lcom/truecaller/wizard/framework/WizardStartContext;

.field public static final enum REGISTER:Lcom/truecaller/wizard/framework/WizardStartContext;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/truecaller/wizard/framework/WizardStartContext;

    new-instance v1, Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "EDIT_PROFILE"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/wizard/framework/WizardStartContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->EDIT_PROFILE:Lcom/truecaller/wizard/framework/WizardStartContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "PREMIUM_VIEW"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/wizard/framework/WizardStartContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->PREMIUM_VIEW:Lcom/truecaller/wizard/framework/WizardStartContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "CALLER_ID_SETTING"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/wizard/framework/WizardStartContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->CALLER_ID_SETTING:Lcom/truecaller/wizard/framework/WizardStartContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "MAIN_SETTINGS"

    const/4 v3, 0x3

    .line 4
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/wizard/framework/WizardStartContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->MAIN_SETTINGS:Lcom/truecaller/wizard/framework/WizardStartContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "NUDGE_NOTIFICATION"

    const/4 v3, 0x4

    .line 5
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/wizard/framework/WizardStartContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->NUDGE_NOTIFICATION:Lcom/truecaller/wizard/framework/WizardStartContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "INIT"

    const/4 v3, 0x5

    .line 6
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/wizard/framework/WizardStartContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->INIT:Lcom/truecaller/wizard/framework/WizardStartContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "INIT_RESUME"

    const/4 v3, 0x6

    .line 7
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/wizard/framework/WizardStartContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->INIT_RESUME:Lcom/truecaller/wizard/framework/WizardStartContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "REGISTER"

    const/4 v3, 0x7

    .line 8
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/wizard/framework/WizardStartContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->REGISTER:Lcom/truecaller/wizard/framework/WizardStartContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "BLOCKING"

    const/16 v3, 0x8

    .line 9
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/wizard/framework/WizardStartContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->BLOCKING:Lcom/truecaller/wizard/framework/WizardStartContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "CHANGE_PHONE"

    const/16 v3, 0x9

    .line 10
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/wizard/framework/WizardStartContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->CHANGE_PHONE:Lcom/truecaller/wizard/framework/WizardStartContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "LOGOUT"

    const/16 v3, 0xa

    .line 11
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/wizard/framework/WizardStartContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->LOGOUT:Lcom/truecaller/wizard/framework/WizardStartContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "GLOBAL_SEARCH"

    const/16 v3, 0xb

    const-string v4, "GLOBAL_SEARCH"

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/wizard/framework/WizardStartContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->GLOBAL_SEARCH:Lcom/truecaller/wizard/framework/WizardStartContext;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "NOTIFICATION"

    const/16 v3, 0xc

    const-string v4, "NOTIFICATION"

    .line 13
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/wizard/framework/WizardStartContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->NOTIFICATION:Lcom/truecaller/wizard/framework/WizardStartContext;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "NOTIFICATIONS_VIEW"

    const/16 v3, 0xd

    const-string v4, "NOTIFICATIONS_VIEW"

    .line 14
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/wizard/framework/WizardStartContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->NOTIFICATIONS_VIEW:Lcom/truecaller/wizard/framework/WizardStartContext;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "AC_PROMOTION"

    const/16 v3, 0xe

    const-string v4, "AC_PROMOTION"

    .line 15
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/wizard/framework/WizardStartContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->AC_PROMOTION:Lcom/truecaller/wizard/framework/WizardStartContext;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/wizard/framework/WizardStartContext;->$VALUES:[Lcom/truecaller/wizard/framework/WizardStartContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/wizard/framework/WizardStartContext;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/wizard/framework/WizardStartContext;
    .locals 1

    const-class v0, Lcom/truecaller/wizard/framework/WizardStartContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/wizard/framework/WizardStartContext;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/wizard/framework/WizardStartContext;
    .locals 1

    sget-object v0, Lcom/truecaller/wizard/framework/WizardStartContext;->$VALUES:[Lcom/truecaller/wizard/framework/WizardStartContext;

    invoke-virtual {v0}, [Lcom/truecaller/wizard/framework/WizardStartContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/wizard/framework/WizardStartContext;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/framework/WizardStartContext;->value:Ljava/lang/String;

    return-object v0
.end method
