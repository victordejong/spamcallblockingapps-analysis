.class public final enum Lcom/truecaller/ads/adsrouter/ui/AdNetwork;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/ads/adsrouter/ui/AdNetwork;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/ads/adsrouter/ui/AdNetwork;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "GAM",
        "AD_ROUTER",
        "AD_ROUTER_OFFLINE",
        "AMAZON",
        "APPNEXT",
        "FACEBOOK",
        "NONE",
        "ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

.field public static final enum AD_ROUTER:Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

.field public static final enum AD_ROUTER_OFFLINE:Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

.field public static final enum AMAZON:Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

.field public static final enum APPNEXT:Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

.field public static final enum FACEBOOK:Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

.field public static final enum GAM:Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

.field public static final enum NONE:Lcom/truecaller/ads/adsrouter/ui/AdNetwork;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    const-string v2, "GAM"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;->GAM:Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    const-string v2, "AD_ROUTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;->AD_ROUTER:Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    const-string v2, "AD_ROUTER_OFFLINE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;->AD_ROUTER_OFFLINE:Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    const-string v2, "AMAZON"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;->AMAZON:Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    const-string v2, "APPNEXT"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;->APPNEXT:Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    const-string v2, "FACEBOOK"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;->FACEBOOK:Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    const-string v2, "NONE"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;->NONE:Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;->$VALUES:[Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/ads/adsrouter/ui/AdNetwork;
    .locals 1

    const-class v0, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/ads/adsrouter/ui/AdNetwork;
    .locals 1

    sget-object v0, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;->$VALUES:[Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    invoke-virtual {v0}, [Lcom/truecaller/ads/adsrouter/ui/AdNetwork;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    return-object v0
.end method
