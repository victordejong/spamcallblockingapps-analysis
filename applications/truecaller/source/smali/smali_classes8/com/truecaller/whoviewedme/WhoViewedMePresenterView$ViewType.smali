.class public final enum Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;",
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
        "Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "PREMIUM_WITH_PROFILE_VIEWS",
        "PREMIUM_ZERO_PROFILE_VIEWS",
        "REGULAR_WITH_PROFILE_VIEWS",
        "REGULAR_ZERO_PROFILE_VIEWS",
        "REGULAR_REVEALED_PROFILE_VIEW",
        "NONE",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

.field public static final enum NONE:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

.field public static final enum PREMIUM_WITH_PROFILE_VIEWS:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

.field public static final enum PREMIUM_ZERO_PROFILE_VIEWS:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

.field public static final enum REGULAR_REVEALED_PROFILE_VIEW:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

.field public static final enum REGULAR_WITH_PROFILE_VIEWS:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

.field public static final enum REGULAR_ZERO_PROFILE_VIEWS:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    new-instance v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    const-string v2, "PREMIUM_WITH_PROFILE_VIEWS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;->PREMIUM_WITH_PROFILE_VIEWS:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    const-string v2, "PREMIUM_ZERO_PROFILE_VIEWS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;->PREMIUM_ZERO_PROFILE_VIEWS:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    const-string v2, "REGULAR_WITH_PROFILE_VIEWS"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;->REGULAR_WITH_PROFILE_VIEWS:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    const-string v2, "REGULAR_ZERO_PROFILE_VIEWS"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;->REGULAR_ZERO_PROFILE_VIEWS:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    const-string v2, "REGULAR_REVEALED_PROFILE_VIEW"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;->REGULAR_REVEALED_PROFILE_VIEW:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    const-string v2, "NONE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;->NONE:Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;->$VALUES:[Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;
    .locals 1

    const-class v0, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;
    .locals 1

    sget-object v0, Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;->$VALUES:[Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    invoke-virtual {v0}, [Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;

    return-object v0
.end method
