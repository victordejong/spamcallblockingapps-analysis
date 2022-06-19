.class public final Le/a/i/a/a;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0008J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR%\u0010\u0014\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Le/a/i/a/a;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onPause",
        "()V",
        "onDestroy",
        "",
        "hasFocus",
        "onWindowFocusChanged",
        "(Z)V",
        "Lcom/truecaller/ads/ui/VideoFrame;",
        "kotlin.jvm.PlatformType",
        "a",
        "Ls1/g;",
        "pa",
        "()Lcom/truecaller/ads/ui/VideoFrame;",
        "mVideoFrame",
        "<init>",
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
.field public static b:Le/a/i/f0/m/c;


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    sget v0, Lcom/truecaller/ads/R$id;->custom_ad_media_frame:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/i/a/a;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/truecaller/ads/R$layout;->ad_custom_overlay_clicktoplay:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 3
    sget-object p1, Le/a/i/a/a;->b:Le/a/i/f0/m/c;

    if-nez p1, :cond_0

    const-string p1, "Last holder not set"

    .line 4
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 6
    :cond_0
    iget-object p1, p1, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 7
    check-cast p1, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getCustomFormatId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/truecaller/ads/CustomTemplate;->CLICK_TO_PLAY_VIDEO:Lcom/truecaller/ads/CustomTemplate;

    iget-object v2, v1, Lcom/truecaller/ads/CustomTemplate;->templateId:Ljava/lang/String;

    invoke-static {v0, v2}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "CTAbuttoncolor"

    .line 9
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/high16 v0, -0x1000000

    :goto_0
    :try_start_1
    const-string v1, "CTAbuttontextcolor"

    .line 11
    invoke-interface {p1, v1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 12
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 v1, -0x1

    :goto_1
    const-string v2, "CTAtext"

    .line 13
    invoke-interface {p1, v2}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 14
    invoke-virtual {p0}, Le/a/i/a/a;->pa()Lcom/truecaller/ads/ui/VideoFrame;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getVideoMediaView()Lcom/google/android/gms/ads/nativead/MediaView;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object p1

    sget-object v5, Le/a/i/a/g$a;->a:Le/a/i/a/g$a;

    invoke-virtual {v3, v4, p1, v5}, Lcom/truecaller/ads/ui/VideoFrame;->h1(Lcom/google/android/gms/ads/nativead/MediaView;Lcom/google/android/gms/ads/VideoController;Le/a/i/a/g;)Z

    .line 15
    sget p1, Lcom/truecaller/ads/R$id;->close:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v3, Le/a/i/a/a$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Le/a/i/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    sget p1, Lcom/truecaller/ads/R$id;->more_url:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    .line 17
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v5, 0x1

    new-array v6, v5, [[I

    new-array v7, v4, [I

    aput-object v7, v6, v4

    new-array v7, v5, [I

    aput v0, v7, v4

    invoke-direct {v3, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 18
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 20
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    const-string v0, "button"

    .line 21
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 22
    new-instance v0, Le/a/i/a/a$a;

    invoke-direct {v0, v5, p0}, Le/a/i/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/truecaller/ads/CustomTemplate;->templateId:Ljava/lang/String;

    const-string v2, " template supported"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Le/a/i/a/a;->b:Le/a/i/f0/m/c;

    .line 3
    invoke-virtual {p0}, Le/a/i/a/a;->pa()Lcom/truecaller/ads/ui/VideoFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/ads/ui/VideoFrame;->g1()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onPause()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "window"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const-string v0, "window.decorView"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x706

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public final pa()Lcom/truecaller/ads/ui/VideoFrame;
    .locals 1

    iget-object v0, p0, Le/a/i/a/a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/ads/ui/VideoFrame;

    return-object v0
.end method
