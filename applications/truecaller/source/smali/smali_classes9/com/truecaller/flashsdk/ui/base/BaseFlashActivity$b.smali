.class public final Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$b;
.super Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity<",
        "TPresenterView;TPresenter;TFooterView;>.a;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;Landroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    const-string v0, "imageView"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$b;->g:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;

    invoke-direct {p0, p1, p2}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$a;-><init>(Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public g(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/f/a/r/k/f;->l(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/f/a/r/k/l;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$b;->g:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;

    .line 4
    iget-object p1, p1, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->m:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    invoke-super {p0, p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$a;->m(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$b;->g:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;

    .line 4
    iget-object p1, p1, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->m:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public m(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$a;->m(Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$b;->g:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;

    .line 3
    iget-object p1, p1, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->m:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
