.class public final Le/a/i/e/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/deeplinkdispatch/Parser;


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lcom/truecaller/ads/offline/deeplink/OfflineAdsDeeplink;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;

    new-instance v2, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;

    sget-object v3, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;->METHOD:Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;

    const-string v4, "truecaller://article_page/{leadgenId}"

    const-string v5, "createDeeplink"

    invoke-direct {v2, v4, v3, v0, v5}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;-><init>(Ljava/lang/String;Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;

    const-string v4, "truecaller://offline_leadgen/{leadgenId}"

    invoke-direct {v2, v4, v3, v0, v5}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;-><init>(Ljava/lang/String;Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;

    const-string v4, "truecaller://online_leadgen/{leadgenId}"

    invoke-direct {v2, v4, v3, v0, v5}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;-><init>(Ljava/lang/String;Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x2

    aput-object v2, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/i/e/i/a;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseUri(Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;
    .locals 3

    .line 1
    sget-object v0, Le/a/i/e/i/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;

    .line 2
    invoke-virtual {v1, p1}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
