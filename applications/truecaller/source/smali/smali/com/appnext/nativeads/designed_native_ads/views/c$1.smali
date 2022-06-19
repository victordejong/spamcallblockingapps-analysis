.class public final Lcom/appnext/nativeads/designed_native_ads/views/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/nativeads/designed_native_ads/views/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic hb:Lcom/appnext/nativeads/designed_native_ads/views/c;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/designed_native_ads/views/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/c$1;->hb:Lcom/appnext/nativeads/designed_native_ads/views/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/c$1;->hb:Lcom/appnext/nativeads/designed_native_ads/views/c;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/c;->a(Lcom/appnext/nativeads/designed_native_ads/views/c;)Lcom/appnext/nativeads/designed_native_ads/views/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/c$1;->hb:Lcom/appnext/nativeads/designed_native_ads/views/c;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/c;->a(Lcom/appnext/nativeads/designed_native_ads/views/c;)Lcom/appnext/nativeads/designed_native_ads/views/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/c$1;->hb:Lcom/appnext/nativeads/designed_native_ads/views/c;

    invoke-static {v1}, Lcom/appnext/nativeads/designed_native_ads/views/c;->b(Lcom/appnext/nativeads/designed_native_ads/views/c;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/appnext/nativeads/designed_native_ads/views/c$a;->f(I)V

    :cond_0
    return-void
.end method
