.class public final enum Lcom/truecaller/ui/settings/appearance/ThemeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/ui/settings/appearance/ThemeType;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/truecaller/ui/settings/appearance/ThemeType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "DEFAULT_INHERIT",
        "BRIGHT_MODE",
        "DARK_MODE",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/ui/settings/appearance/ThemeType;

.field public static final enum BRIGHT_MODE:Lcom/truecaller/ui/settings/appearance/ThemeType;

.field public static final enum DARK_MODE:Lcom/truecaller/ui/settings/appearance/ThemeType;

.field public static final enum DEFAULT_INHERIT:Lcom/truecaller/ui/settings/appearance/ThemeType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/ui/settings/appearance/ThemeType;

    new-instance v1, Lcom/truecaller/ui/settings/appearance/ThemeType;

    const-string v2, "DEFAULT_INHERIT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ui/settings/appearance/ThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ui/settings/appearance/ThemeType;->DEFAULT_INHERIT:Lcom/truecaller/ui/settings/appearance/ThemeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ui/settings/appearance/ThemeType;

    const-string v2, "BRIGHT_MODE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ui/settings/appearance/ThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ui/settings/appearance/ThemeType;->BRIGHT_MODE:Lcom/truecaller/ui/settings/appearance/ThemeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ui/settings/appearance/ThemeType;

    const-string v2, "DARK_MODE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ui/settings/appearance/ThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ui/settings/appearance/ThemeType;->DARK_MODE:Lcom/truecaller/ui/settings/appearance/ThemeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/ui/settings/appearance/ThemeType;->$VALUES:[Lcom/truecaller/ui/settings/appearance/ThemeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/ui/settings/appearance/ThemeType;
    .locals 1

    const-class v0, Lcom/truecaller/ui/settings/appearance/ThemeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/ui/settings/appearance/ThemeType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/ui/settings/appearance/ThemeType;
    .locals 1

    sget-object v0, Lcom/truecaller/ui/settings/appearance/ThemeType;->$VALUES:[Lcom/truecaller/ui/settings/appearance/ThemeType;

    invoke-virtual {v0}, [Lcom/truecaller/ui/settings/appearance/ThemeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ui/settings/appearance/ThemeType;

    return-object v0
.end method
