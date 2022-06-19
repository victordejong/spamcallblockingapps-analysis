.class public final enum Lcom/truecaller/flashsdk/core/Theme;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/flashsdk/core/Theme;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/truecaller/flashsdk/core/Theme;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "DARK",
        "LIGHT",
        "COFFEE",
        "RAMADAN",
        "PITCH_BLACK",
        "LIGHT_GRAY",
        "flash_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/flashsdk/core/Theme;

.field public static final enum COFFEE:Lcom/truecaller/flashsdk/core/Theme;

.field public static final enum DARK:Lcom/truecaller/flashsdk/core/Theme;

.field public static final enum LIGHT:Lcom/truecaller/flashsdk/core/Theme;

.field public static final enum LIGHT_GRAY:Lcom/truecaller/flashsdk/core/Theme;

.field public static final enum PITCH_BLACK:Lcom/truecaller/flashsdk/core/Theme;

.field public static final enum RAMADAN:Lcom/truecaller/flashsdk/core/Theme;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/truecaller/flashsdk/core/Theme;

    new-instance v1, Lcom/truecaller/flashsdk/core/Theme;

    const-string v2, "DARK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/flashsdk/core/Theme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/flashsdk/core/Theme;->DARK:Lcom/truecaller/flashsdk/core/Theme;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/flashsdk/core/Theme;

    const-string v2, "LIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/flashsdk/core/Theme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/flashsdk/core/Theme;->LIGHT:Lcom/truecaller/flashsdk/core/Theme;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/flashsdk/core/Theme;

    const-string v2, "COFFEE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/flashsdk/core/Theme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/flashsdk/core/Theme;->COFFEE:Lcom/truecaller/flashsdk/core/Theme;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/flashsdk/core/Theme;

    const-string v2, "RAMADAN"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/flashsdk/core/Theme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/flashsdk/core/Theme;->RAMADAN:Lcom/truecaller/flashsdk/core/Theme;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/flashsdk/core/Theme;

    const-string v2, "PITCH_BLACK"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/flashsdk/core/Theme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/flashsdk/core/Theme;->PITCH_BLACK:Lcom/truecaller/flashsdk/core/Theme;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/flashsdk/core/Theme;

    const-string v2, "LIGHT_GRAY"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/flashsdk/core/Theme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/flashsdk/core/Theme;->LIGHT_GRAY:Lcom/truecaller/flashsdk/core/Theme;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/flashsdk/core/Theme;->$VALUES:[Lcom/truecaller/flashsdk/core/Theme;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/flashsdk/core/Theme;
    .locals 1

    const-class v0, Lcom/truecaller/flashsdk/core/Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/flashsdk/core/Theme;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/flashsdk/core/Theme;
    .locals 1

    sget-object v0, Lcom/truecaller/flashsdk/core/Theme;->$VALUES:[Lcom/truecaller/flashsdk/core/Theme;

    invoke-virtual {v0}, [Lcom/truecaller/flashsdk/core/Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/flashsdk/core/Theme;

    return-object v0
.end method
