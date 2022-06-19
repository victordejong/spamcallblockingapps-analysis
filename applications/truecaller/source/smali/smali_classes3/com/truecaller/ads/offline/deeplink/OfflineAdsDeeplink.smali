.class public final Lcom/truecaller/ads/offline/deeplink/OfflineAdsDeeplink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\u00020\t8\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\t8\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\t8\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\t8\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\t8\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u000fR\u0016\u0010\u0015\u001a\u00020\t8\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u000f\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/truecaller/ads/offline/deeplink/OfflineAdsDeeplink;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroid/os/Bundle;",
        "extras",
        "Landroid/content/Intent;",
        "createDeeplink",
        "(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;",
        "",
        "deepLink",
        "Lcom/truecaller/ads/offline/dto/OfflineAdType;",
        "getAdType",
        "(Ljava/lang/String;)Lcom/truecaller/ads/offline/dto/OfflineAdType;",
        "PATH_DEEPLINK_UNIFIED_ONLINE",
        "Ljava/lang/String;",
        "PATH_DEEPLINK_ONLINE",
        "PARAM_DEEPLINK_LEADGEN_ID",
        "PATH_DEEPLINK_OFFLINE",
        "PATH_DEEPLINK_ARTICLE_PAGE",
        "EXTRA_LEADGEN_ID",
        "EXTRA_OFFLINE_AD_TYPE",
        "<init>",
        "()V",
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
.field public static final EXTRA_LEADGEN_ID:Ljava/lang/String; = "extraLeadgenId"

.field public static final EXTRA_OFFLINE_AD_TYPE:Ljava/lang/String; = "extraOfflineAdType"

.field public static final INSTANCE:Lcom/truecaller/ads/offline/deeplink/OfflineAdsDeeplink;

.field public static final PARAM_DEEPLINK_LEADGEN_ID:Ljava/lang/String; = "leadgenId"

.field public static final PATH_DEEPLINK_ARTICLE_PAGE:Ljava/lang/String; = "article_page"

.field public static final PATH_DEEPLINK_OFFLINE:Ljava/lang/String; = "offline_leadgen"

.field public static final PATH_DEEPLINK_ONLINE:Ljava/lang/String; = "leadgen"

.field public static final PATH_DEEPLINK_UNIFIED_ONLINE:Ljava/lang/String; = "online_leadgen"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/ads/offline/deeplink/OfflineAdsDeeplink;

    invoke-direct {v0}, Lcom/truecaller/ads/offline/deeplink/OfflineAdsDeeplink;-><init>()V

    sput-object v0, Lcom/truecaller/ads/offline/deeplink/OfflineAdsDeeplink;->INSTANCE:Lcom/truecaller/ads/offline/deeplink/OfflineAdsDeeplink;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createDeeplink(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 4
    .annotation build Lcom/airbnb/deeplinkdispatch/DeepLink;
        value = {
            "truecaller://offline_leadgen/{leadgenId}",
            "truecaller://online_leadgen/{leadgenId}",
            "truecaller://article_page/{leadgenId}"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deep_link_uri"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/truecaller/ads/offline/deeplink/OfflineAdsDeeplink;->INSTANCE:Lcom/truecaller/ads/offline/deeplink/OfflineAdsDeeplink;

    const-string v3, "it"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lcom/truecaller/ads/offline/deeplink/OfflineAdsDeeplink;->getAdType(Ljava/lang/String;)Lcom/truecaller/ads/offline/dto/OfflineAdType;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/ads/offline/common/ui/OfflineAdsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "leadgenId"

    .line 3
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "extraLeadgenId"

    invoke-virtual {v2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string p0, "extraOfflineAdType"

    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 5
    invoke-virtual {v2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v2
.end method

.method private final getAdType(Ljava/lang/String;)Lcom/truecaller/ads/offline/dto/OfflineAdType;
    .locals 3

    const-string v0, "article_page"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p1, v0, v1, v2}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/truecaller/ads/offline/dto/OfflineAdType;->ARTICLE_PAGE:Lcom/truecaller/ads/offline/dto/OfflineAdType;

    goto :goto_0

    :cond_0
    const-string v0, "offline_leadgen"

    .line 2
    invoke-static {p1, v0, v1, v2}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/truecaller/ads/offline/dto/OfflineAdType;->OFFLINE_LEADGEN:Lcom/truecaller/ads/offline/dto/OfflineAdType;

    goto :goto_0

    :cond_1
    const-string v0, "leadgen"

    .line 3
    invoke-static {p1, v0, v1, v2}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/truecaller/ads/offline/dto/OfflineAdType;->ONLINE_LEADGEN:Lcom/truecaller/ads/offline/dto/OfflineAdType;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
