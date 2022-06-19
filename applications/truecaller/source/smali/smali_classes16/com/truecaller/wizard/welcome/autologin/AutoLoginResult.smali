.class public final enum Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SUCCESS",
        "ERROR",
        "LOGOUT",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

.field public static final enum ERROR:Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

.field public static final enum LOGOUT:Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

.field public static final enum SUCCESS:Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    new-instance v1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    const-string v2, "SUCCESS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;->SUCCESS:Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;->ERROR:Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    const-string v2, "LOGOUT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;->LOGOUT:Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;->$VALUES:[Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;
    .locals 1

    const-class v0, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;
    .locals 1

    sget-object v0, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;->$VALUES:[Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    invoke-virtual {v0}, [Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    return-object v0
.end method
