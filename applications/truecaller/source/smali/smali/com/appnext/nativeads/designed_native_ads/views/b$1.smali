.class public final Lcom/appnext/nativeads/designed_native_ads/views/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/SettingsManager$ConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/nativeads/designed_native_ads/views/b;->a(Ljava/lang/String;Lcom/appnext/nativeads/designed_native_ads/views/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic gW:Lcom/appnext/nativeads/designed_native_ads/views/b$b;

.field public final synthetic gX:Lcom/appnext/nativeads/designed_native_ads/views/b;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/designed_native_ads/views/b;Lcom/appnext/nativeads/designed_native_ads/views/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$1;->gX:Lcom/appnext/nativeads/designed_native_ads/views/b;

    iput-object p2, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$1;->gW:Lcom/appnext/nativeads/designed_native_ads/views/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$1;->gX:Lcom/appnext/nativeads/designed_native_ads/views/b;

    invoke-static {p1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->a(Lcom/appnext/nativeads/designed_native_ads/views/b;)V

    .line 2
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$1;->gW:Lcom/appnext/nativeads/designed_native_ads/views/b$b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/appnext/nativeads/designed_native_ads/views/b$b;->bm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "DesignedNativeAdView$init"

    .line 4
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final loaded(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$1;->gX:Lcom/appnext/nativeads/designed_native_ads/views/b;

    invoke-static {p1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->a(Lcom/appnext/nativeads/designed_native_ads/views/b;)V

    .line 2
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$1;->gW:Lcom/appnext/nativeads/designed_native_ads/views/b$b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/appnext/nativeads/designed_native_ads/views/b$b;->bm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "DesignedNativeAdView$init"

    .line 4
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
