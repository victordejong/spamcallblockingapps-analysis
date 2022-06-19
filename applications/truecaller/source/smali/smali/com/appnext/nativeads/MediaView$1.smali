.class public final Lcom/appnext/nativeads/MediaView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/nativeads/MediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic fN:Lcom/appnext/nativeads/MediaView;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/MediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/MediaView$1;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView$1;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {v0}, Lcom/appnext/nativeads/MediaView;->a(Lcom/appnext/nativeads/MediaView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView$1;->fN:Lcom/appnext/nativeads/MediaView;

    invoke-static {v0}, Lcom/appnext/nativeads/MediaView;->a(Lcom/appnext/nativeads/MediaView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/appnext/nativeads/R$drawable;->apnxt_na_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
