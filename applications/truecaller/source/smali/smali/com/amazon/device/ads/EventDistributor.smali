.class public Lcom/amazon/device/ads/EventDistributor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EventDistributor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public distribute(Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/amazon/device/ads/DTBAdResponse;Lcom/amazon/device/ads/DTBRendererObserver;Lcom/amazon/device/ads/DTBRenderer;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            "Lcom/amazon/device/ads/DTBAdResponse;",
            "Lcom/amazon/device/ads/DTBRendererObserver;",
            "Lcom/amazon/device/ads/DTBRenderer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getAdProviders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/device/ads/AdProvider;

    .line 2
    invoke-interface {v2, p1, p2, p4}, Lcom/amazon/device/ads/AdProvider;->matches(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DTBAdResponse;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 3
    invoke-interface/range {v2 .. v7}, Lcom/amazon/device/ads/AdProvider;->takeOwnership(Landroid/view/ViewGroup;Lcom/amazon/device/ads/DTBAdResponse;Lcom/amazon/device/ads/DTBRendererObserver;Lcom/amazon/device/ads/DTBRenderer;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 4
    sget-object p2, Lcom/amazon/device/ads/EventDistributor;->LOG_TAG:Ljava/lang/String;

    const-string p3, "Fail to execute distribute method"

    invoke-static {p2, p3}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p2, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    sget-object p4, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {p2, p4, p3, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
