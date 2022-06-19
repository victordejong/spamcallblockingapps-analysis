.class public final Lcom/appnext/nativeads/designed_native_ads/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/nativeads/designed_native_ads/a$1;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic gj:Lcom/appnext/nativeads/designed_native_ads/a$1;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/designed_native_ads/a$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/a$1$1;->gj:Lcom/appnext/nativeads/designed_native_ads/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/a$1$1;->gj:Lcom/appnext/nativeads/designed_native_ads/a$1;

    iget-object v0, v0, Lcom/appnext/nativeads/designed_native_ads/a$1;->gi:Lcom/appnext/nativeads/designed_native_ads/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/a;->a(Lcom/appnext/nativeads/designed_native_ads/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/a$1$1;->gj:Lcom/appnext/nativeads/designed_native_ads/a$1;

    iget-object v0, v0, Lcom/appnext/nativeads/designed_native_ads/a$1;->gi:Lcom/appnext/nativeads/designed_native_ads/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/a;->a(Lcom/appnext/nativeads/designed_native_ads/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/nativeads/designed_native_ads/a$a;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/a$1$1;->gj:Lcom/appnext/nativeads/designed_native_ads/a$1;

    iget-object v1, v1, Lcom/appnext/nativeads/designed_native_ads/a$1;->gi:Lcom/appnext/nativeads/designed_native_ads/a;

    invoke-static {v1}, Lcom/appnext/nativeads/designed_native_ads/a;->b(Lcom/appnext/nativeads/designed_native_ads/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appnext/nativeads/designed_native_ads/a$a;->e(Ljava/util/List;)V

    return-void
.end method
