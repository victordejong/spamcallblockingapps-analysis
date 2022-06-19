.class public Lcom/appnext/nativeads/MediaView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/nativeads/MediaView$MediaType;,
        Lcom/appnext/nativeads/MediaView$a;
    }
.end annotation


# instance fields
.field private clickEnabled:Z

.field private fD:Z

.field private fE:Lcom/appnext/nativeads/NativeAd;

.field private fF:Lcom/appnext/nativeads/MediaView$MediaType;

.field private fG:Lcom/appnext/nativeads/NativeAdData;

.field private fH:Lcom/appnext/a/a;

.field private fI:Lcom/appnext/a/b;

.field private fJ:Landroid/view/View;

.field private fK:Lcom/appnext/nativeads/MediaView$a;

.field private fL:Z

.field private fM:I

.field private finished:Z

.field private mHandler:Landroid/os/Handler;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private mute:Z

.field private tick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/appnext/nativeads/MediaView;->fD:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/appnext/nativeads/MediaView;->mute:Z

    .line 4
    iput-boolean p1, p0, Lcom/appnext/nativeads/MediaView;->clickEnabled:Z

    .line 5
    iput-boolean v0, p0, Lcom/appnext/nativeads/MediaView;->fL:Z

    .line 6
    iput-boolean v0, p0, Lcom/appnext/nativeads/MediaView;->finished:Z

    .line 7
    iput v0, p0, Lcom/appnext/nativeads/MediaView;->fM:I

    .line 8
    new-instance p1, Lcom/appnext/nativeads/MediaView$8;

    invoke-direct {p1, p0}, Lcom/appnext/nativeads/MediaView$8;-><init>(Lcom/appnext/nativeads/MediaView;)V

    iput-object p1, p0, Lcom/appnext/nativeads/MediaView;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/appnext/nativeads/MediaView;->fD:Z

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/appnext/nativeads/MediaView;->mute:Z

    .line 12
    iput-boolean p1, p0, Lcom/appnext/nativeads/MediaView;->clickEnabled:Z

    .line 13
    iput-boolean p2, p0, Lcom/appnext/nativeads/MediaView;->fL:Z

    .line 14
    iput-boolean p2, p0, Lcom/appnext/nativeads/MediaView;->finished:Z

    .line 15
    iput p2, p0, Lcom/appnext/nativeads/MediaView;->fM:I

    .line 16
    new-instance p1, Lcom/appnext/nativeads/MediaView$8;

    invoke-direct {p1, p0}, Lcom/appnext/nativeads/MediaView$8;-><init>(Lcom/appnext/nativeads/MediaView;)V

    iput-object p1, p0, Lcom/appnext/nativeads/MediaView;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/appnext/nativeads/MediaView;->fD:Z

    const/4 p2, 0x0

    .line 19
    iput-boolean p2, p0, Lcom/appnext/nativeads/MediaView;->mute:Z

    .line 20
    iput-boolean p1, p0, Lcom/appnext/nativeads/MediaView;->clickEnabled:Z

    .line 21
    iput-boolean p2, p0, Lcom/appnext/nativeads/MediaView;->fL:Z

    .line 22
    iput-boolean p2, p0, Lcom/appnext/nativeads/MediaView;->finished:Z

    .line 23
    iput p2, p0, Lcom/appnext/nativeads/MediaView;->fM:I

    .line 24
    new-instance p1, Lcom/appnext/nativeads/MediaView$8;

    invoke-direct {p1, p0}, Lcom/appnext/nativeads/MediaView$8;-><init>(Lcom/appnext/nativeads/MediaView;)V

    iput-object p1, p0, Lcom/appnext/nativeads/MediaView;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/appnext/nativeads/MediaView;->fD:Z

    const/4 p2, 0x0

    .line 27
    iput-boolean p2, p0, Lcom/appnext/nativeads/MediaView;->mute:Z

    .line 28
    iput-boolean p1, p0, Lcom/appnext/nativeads/MediaView;->clickEnabled:Z

    .line 29
    iput-boolean p2, p0, Lcom/appnext/nativeads/MediaView;->fL:Z

    .line 30
    iput-boolean p2, p0, Lcom/appnext/nativeads/MediaView;->finished:Z

    .line 31
    iput p2, p0, Lcom/appnext/nativeads/MediaView;->fM:I

    .line 32
    new-instance p1, Lcom/appnext/nativeads/MediaView$8;

    invoke-direct {p1, p0}, Lcom/appnext/nativeads/MediaView$8;-><init>(Lcom/appnext/nativeads/MediaView;)V

    iput-object p1, p0, Lcom/appnext/nativeads/MediaView;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/appnext/nativeads/MediaView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/appnext/nativeads/MediaView;->fM:I

    return p1
.end method

.method public static synthetic a(Lcom/appnext/nativeads/MediaView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/appnext/nativeads/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method public static synthetic a(Lcom/appnext/nativeads/MediaView;)Landroid/view/View;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/appnext/nativeads/MediaView;->fJ:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic a(Lcom/appnext/nativeads/MediaView;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/appnext/nativeads/MediaView;->finished:Z

    return p1
.end method

.method public static synthetic b(Lcom/appnext/nativeads/MediaView;)Lcom/appnext/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    return-object p0
.end method

.method public static synthetic b(Lcom/appnext/nativeads/MediaView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/appnext/nativeads/MediaView;->fL:Z

    return p1
.end method

.method private ba()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/appnext/a/b;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appnext/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appnext/nativeads/MediaView;->fI:Lcom/appnext/a/b;

    .line 2
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView;->fE:Lcom/appnext/nativeads/NativeAd;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/nativeads/MediaView;->fI:Lcom/appnext/a/b;

    iget-object v3, p0, Lcom/appnext/nativeads/MediaView;->fG:Lcom/appnext/nativeads/NativeAdData;

    invoke-virtual {v3}, Lcom/appnext/core/AppnextAd;->getWideImageURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/appnext/nativeads/NativeAd;->downloadAndDisplayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView;->fI:Lcom/appnext/a/b;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView;->fI:Lcom/appnext/a/b;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView;->fI:Lcom/appnext/a/b;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView;->fI:Lcom/appnext/a/b;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView;->fI:Lcom/appnext/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "MediaView$initStatic"

    .line 8
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lcom/appnext/nativeads/MediaView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic d(Lcom/appnext/nativeads/MediaView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/MediaView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic e(Lcom/appnext/nativeads/MediaView;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/MediaView;->tick:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic f(Lcom/appnext/nativeads/MediaView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/appnext/nativeads/MediaView;->fM:I

    return p0
.end method

.method public static synthetic g(Lcom/appnext/nativeads/MediaView;)Lcom/appnext/nativeads/NativeAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/MediaView;->fE:Lcom/appnext/nativeads/NativeAd;

    return-object p0
.end method

.method public static synthetic h(Lcom/appnext/nativeads/MediaView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/appnext/nativeads/MediaView;->finished:Z

    return p0
.end method

.method public static synthetic i(Lcom/appnext/nativeads/MediaView;)Z
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->callOnClick()Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/appnext/nativeads/MediaView;)Lcom/appnext/nativeads/MediaView$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/MediaView;->fK:Lcom/appnext/nativeads/MediaView$a;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/nativeads/NativeAdData;Lcom/appnext/nativeads/MediaView$MediaType;)V
    .locals 4

    const-string v0, "MediaView$initVideo"

    .line 5
    :try_start_0
    iput-object p1, p0, Lcom/appnext/nativeads/MediaView;->fE:Lcom/appnext/nativeads/NativeAd;

    .line 6
    iput-object p2, p0, Lcom/appnext/nativeads/MediaView;->fG:Lcom/appnext/nativeads/NativeAdData;

    .line 7
    iput-object p3, p0, Lcom/appnext/nativeads/MediaView;->fF:Lcom/appnext/nativeads/MediaView$MediaType;

    .line 8
    sget-object p1, Lcom/appnext/nativeads/MediaView$MediaType;->VIDEO:Lcom/appnext/nativeads/MediaView$MediaType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne p3, p1, :cond_5

    .line 9
    :try_start_1
    new-instance p1, Lcom/appnext/a/a;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/appnext/a/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_2
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    new-instance p1, Lcom/appnext/a/a;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/appnext/a/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    .line 12
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/appnext/nativeads/MediaView;->mHandler:Landroid/os/Handler;

    .line 13
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    new-instance p2, Lcom/appnext/nativeads/MediaView$1;

    invoke-direct {p2, p0}, Lcom/appnext/nativeads/MediaView$1;-><init>(Lcom/appnext/nativeads/MediaView;)V

    invoke-virtual {p1, p2}, Lcom/appnext/a/a;->setPlayPauseListener(Lcom/appnext/a/a$a;)V

    .line 14
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    invoke-virtual {p1}, Landroid/widget/VideoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/appnext/nativeads/MediaView$2;

    invoke-direct {p2, p0}, Lcom/appnext/nativeads/MediaView$2;-><init>(Lcom/appnext/nativeads/MediaView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 15
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, 0x1

    const/4 v1, -0x1

    invoke-direct {p2, v1, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    new-instance p2, Lcom/appnext/nativeads/MediaView$3;

    invoke-direct {p2, p0}, Lcom/appnext/nativeads/MediaView$3;-><init>(Lcom/appnext/nativeads/MediaView;)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 18
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    new-instance p2, Lcom/appnext/nativeads/MediaView$4;

    invoke-direct {p2, p0}, Lcom/appnext/nativeads/MediaView$4;-><init>(Lcom/appnext/nativeads/MediaView;)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 19
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    new-instance p2, Lcom/appnext/nativeads/MediaView$5;

    invoke-direct {p2, p0}, Lcom/appnext/nativeads/MediaView$5;-><init>(Lcom/appnext/nativeads/MediaView;)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 20
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView;->fG:Lcom/appnext/nativeads/NativeAdData;

    invoke-virtual {p1}, Lcom/appnext/nativeads/NativeAdData;->getSelectedVideo()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, ""

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_3

    .line 22
    :cond_0
    new-instance p2, Lcom/appnext/nativeads/MediaView$a;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/appnext/nativeads/MediaView$a;-><init>(Lcom/appnext/nativeads/MediaView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/appnext/nativeads/MediaView;->fJ:Landroid/view/View;

    .line 23
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 24
    iget-object p2, p0, Lcom/appnext/nativeads/MediaView;->fJ:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 25
    iget-object p2, p0, Lcom/appnext/nativeads/MediaView;->fJ:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 26
    iget-object p2, p0, Lcom/appnext/nativeads/MediaView;->fJ:Landroid/view/View;

    check-cast p2, Landroid/widget/ImageView;

    sget p3, Lcom/appnext/nativeads/R$drawable;->apnxt_na_play:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    iget-object p2, p0, Lcom/appnext/nativeads/MediaView;->fJ:Landroid/view/View;

    check-cast p2, Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 28
    iget-object p2, p0, Lcom/appnext/nativeads/MediaView;->fJ:Landroid/view/View;

    new-instance p3, Lcom/appnext/nativeads/MediaView$6;

    invoke-direct {p3, p0}, Lcom/appnext/nativeads/MediaView$6;-><init>(Lcom/appnext/nativeads/MediaView;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {p0}, Lcom/appnext/nativeads/MediaView;->isAutoPLay()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 30
    iget-object p2, p0, Lcom/appnext/nativeads/MediaView;->fJ:Landroid/view/View;

    check-cast p2, Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    :cond_1
    new-instance p2, Lcom/appnext/nativeads/MediaView$a;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/appnext/nativeads/MediaView$a;-><init>(Lcom/appnext/nativeads/MediaView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/appnext/nativeads/MediaView;->fK:Lcom/appnext/nativeads/MediaView$a;

    .line 32
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 33
    iget-object p2, p0, Lcom/appnext/nativeads/MediaView;->fK:Lcom/appnext/nativeads/MediaView$a;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {p3, v1}, Lcom/appnext/core/g;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    iget-object p2, p0, Lcom/appnext/nativeads/MediaView;->fK:Lcom/appnext/nativeads/MediaView$a;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v1}, Lcom/appnext/core/g;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    invoke-virtual {p0}, Lcom/appnext/nativeads/MediaView;->isMute()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 36
    iget-object p2, p0, Lcom/appnext/nativeads/MediaView;->fK:Lcom/appnext/nativeads/MediaView$a;

    sget p3, Lcom/appnext/nativeads/R$drawable;->apnxt_na_mute:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 37
    :cond_2
    iget-object p2, p0, Lcom/appnext/nativeads/MediaView;->fK:Lcom/appnext/nativeads/MediaView$a;

    sget p3, Lcom/appnext/nativeads/R$drawable;->apnxt_na_unmute:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    :goto_1
    iget-object p2, p0, Lcom/appnext/nativeads/MediaView;->fK:Lcom/appnext/nativeads/MediaView$a;

    new-instance p3, Lcom/appnext/nativeads/MediaView$7;

    invoke-direct {p3, p0}, Lcom/appnext/nativeads/MediaView$7;-><init>(Lcom/appnext/nativeads/MediaView;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object p2, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    .line 40
    invoke-static {p1}, Lcom/appnext/core/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/appnext/videos/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    .line 45
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 46
    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_4

    .line 47
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    .line 49
    invoke-direct {p0}, Lcom/appnext/nativeads/MediaView;->ba()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 50
    :try_start_3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 51
    :cond_5
    invoke-direct {p0}, Lcom/appnext/nativeads/MediaView;->ba()V

    .line 52
    :goto_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_6

    const/high16 p1, -0x1000000

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_6
    return-void

    :catchall_2
    move-exception p1

    const-string p2, "MediaView$initData"

    .line 54
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView;->fF:Lcom/appnext/nativeads/MediaView$MediaType;

    sget-object v1, Lcom/appnext/nativeads/MediaView$MediaType;->VIDEO:Lcom/appnext/nativeads/MediaView$MediaType;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x5a

    if-ge p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/appnext/nativeads/MediaView;->pause()V

    return-void

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/appnext/nativeads/MediaView;->fL:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/appnext/nativeads/MediaView;->isAutoPLay()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/appnext/nativeads/MediaView;->finished:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/appnext/nativeads/MediaView;->play()V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    const-string v0, "MediaView$destroy"

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4
    iget-object v2, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 5
    iget-object v2, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 6
    iget-object v2, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    invoke-virtual {v2}, Landroid/widget/VideoView;->suspend()V

    .line 7
    iput-object v1, p0, Lcom/appnext/nativeads/MediaView;->fH:Lcom/appnext/a/a;

    .line 8
    iget-object v2, p0, Lcom/appnext/nativeads/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 9
    iput-object v1, p0, Lcom/appnext/nativeads/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 10
    invoke-static {v0, v2}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/appnext/nativeads/MediaView;->fI:Lcom/appnext/a/b;

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 13
    iput-object v1, p0, Lcom/appnext/nativeads/MediaView;->fI:Lcom/appnext/a/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 14
    invoke-static {v0, v2}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public isAutoPLay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/appnext/nativeads/MediaView;->fD:Z

    return v0
.end method

.method public isClickEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/appnext/nativeads/MediaView;->clickEnabled:Z

    return v0
.end method

.method public isMute()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/appnext/nativeads/MediaView;->mute:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 3
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView;->fJ:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/appnext/nativeads/R$drawable;->apnxt_na_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3
    iget-object v0, p0, Lcom/appnext/nativeads/MediaView;->fJ:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "MediaView$play"

    .line 4
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setAutoPLay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/appnext/nativeads/MediaView;->fD:Z

    return-void
.end method

.method public setClickEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/appnext/nativeads/MediaView;->clickEnabled:Z

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/appnext/nativeads/MediaView;->mute:Z

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/appnext/nativeads/MediaView;->isMute()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/appnext/nativeads/MediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "MediaView$setMute"

    .line 6
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
