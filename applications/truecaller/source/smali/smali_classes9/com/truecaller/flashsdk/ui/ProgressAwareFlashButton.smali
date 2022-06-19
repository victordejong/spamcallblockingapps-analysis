.class public final Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;
.super Lcom/truecaller/flashsdk/ui/FlashButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$a;,
        Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0002!\"J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u0008J\u000f\u0010\u000b\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR$\u0010\u0014\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;",
        "Lcom/truecaller/flashsdk/ui/FlashButton;",
        "",
        "getLayout",
        "()I",
        "color",
        "Ls1/s;",
        "setThemeColor",
        "(I)V",
        "timeLeftToEnable",
        "d",
        "onDetachedFromWindow",
        "()V",
        "Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;",
        "s",
        "Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;",
        "getFlashProgressFinishListener",
        "()Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;",
        "setFlashProgressFinishListener",
        "(Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;)V",
        "flashProgressFinishListener",
        "Landroid/widget/ImageView;",
        "q",
        "Landroid/widget/ImageView;",
        "flashButtonImage",
        "Landroid/os/CountDownTimer;",
        "r",
        "Landroid/os/CountDownTimer;",
        "progressCountDownTimer",
        "Landroid/widget/ProgressBar;",
        "p",
        "Landroid/widget/ProgressBar;",
        "progressBar",
        "a",
        "b",
        "flash_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final p:Landroid/widget/ProgressBar;

.field public final q:Landroid/widget/ImageView;

.field public r:Landroid/os/CountDownTimer;

.field public s:Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attrs"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/truecaller/flashsdk/ui/FlashButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget p1, Lcom/truecaller/flashsdk/R$id;->progress_bar:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.progress_bar)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->p:Landroid/widget/ProgressBar;

    .line 4
    sget p2, Lcom/truecaller/flashsdk/R$id;->flash_button_image:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.flash_button_image)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->q:Landroid/widget/ImageView;

    const-wide/32 v0, 0xea60

    long-to-int p2, v0

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->s:Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;->a()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->r:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    :cond_1
    new-instance v0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$a;

    int-to-long v1, p1

    invoke-direct {v0, p0, v1, v2}, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$a;-><init>(Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;J)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->r:Landroid/os/CountDownTimer;

    :cond_2
    :goto_0
    return-void
.end method

.method public final getFlashProgressFinishListener()Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->s:Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$layout;->progress_aware_flash_button:I

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/truecaller/flashsdk/ui/FlashButton;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->r:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public final setFlashProgressFinishListener(Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->s:Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;

    return-void
.end method

.method public final setThemeColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->q:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
