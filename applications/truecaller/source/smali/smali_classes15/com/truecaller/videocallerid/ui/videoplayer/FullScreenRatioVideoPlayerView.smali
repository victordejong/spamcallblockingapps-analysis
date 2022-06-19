.class public final Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u000f\u001a\u00020\u00062\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0012\u0010\u000cJ\u0015\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0013\u0010\u000cJ\r\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0013\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001bH\u0014\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\"\u0010\"\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010\u000cR\u001d\u0010)\u001a\u00020%8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010&\u001a\u0004\u0008\'\u0010(R\"\u00100\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/\u00a8\u00061"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;",
        "Landroid/widget/FrameLayout;",
        "Le/a/k/a/k/l;",
        "config",
        "",
        "analyticsContext",
        "Ls1/s;",
        "e",
        "(Le/a/k/a/k/l;Ljava/lang/String;)V",
        "",
        "show",
        "f",
        "(Z)V",
        "Lkotlin/Function0;",
        "muteButtonClickListener",
        "d",
        "(Ls1/z/b/a;)V",
        "mute",
        "g",
        "c",
        "Le/a/k/a/k/z/a;",
        "getAudioState",
        "()Le/a/k/a/k/z/a;",
        "Lq3/a/x2/i1;",
        "Le/a/k/a/k/z/b;",
        "getPlayingState",
        "()Lq3/a/x2/i1;",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "a",
        "Z",
        "isLandscape",
        "()Z",
        "setLandscape",
        "Le/a/k/m/o;",
        "Ls1/g;",
        "getBinding",
        "()Le/a/k/m/o;",
        "binding",
        "b",
        "I",
        "getActivityOrientation",
        "()I",
        "setActivityOrientation",
        "(I)V",
        "activityOrientation",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final c:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->a:Z

    .line 4
    iput p2, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->b:I

    .line 5
    sget-object p2, Ls1/h;->c:Ls1/h;

    new-instance v0, Le/a/k/a/k/g;

    invoke-direct {v0, p0, p1}, Le/a/k/a/k/g;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;Landroid/content/Context;)V

    invoke-static {p2, v0}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->c:Ls1/g;

    return-void
.end method

.method public static final synthetic a(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;)Le/a/k/m/o;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->getBinding()Le/a/k/m/o;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;ZI)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p2, Le/a/k/a/k/i;

    invoke-direct {p2, p0, p1}, Le/a/k/a/k/i;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;Z)V

    invoke-static {p0, p2}, Le/a/p5/s0/f;->w(Landroid/view/View;Ls1/z/b/a;)V

    return-void
.end method

.method private final getBinding()Le/a/k/m/o;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k/m/o;

    return-object v0
.end method


# virtual methods
.method public final c(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->getBinding()Le/a/k/m/o;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/o;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    invoke-virtual {v0, p1}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;->f(Z)V

    return-void
.end method

.method public final d(Ls1/z/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "muteButtonClickListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->getBinding()Le/a/k/m/o;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/o;->e:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$a;

    invoke-direct {v1, p1}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$a;-><init>(Ls1/z/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final e(Le/a/k/a/k/l;Ljava/lang/String;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$b;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;Le/a/k/a/k/l;Ljava/lang/String;)V

    invoke-static {p0, v0}, Le/a/p5/s0/f;->w(Landroid/view/View;Ls1/z/b/a;)V

    return-void
.end method

.method public final f(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$c;

    invoke-direct {v0, p0, p1}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;Z)V

    invoke-static {p0, v0}, Le/a/p5/s0/f;->w(Landroid/view/View;Ls1/z/b/a;)V

    return-void
.end method

.method public final g(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget p1, Lcom/truecaller/videocallerid/R$drawable;->ic_vid_muted_audio:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/truecaller/videocallerid/R$drawable;->ic_vid_unmuted_audio:I

    .line 2
    :goto_0
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->getBinding()Le/a/k/m/o;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/o;->e:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public final getActivityOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->b:I

    return v0
.end method

.method public final getAudioState()Le/a/k/a/k/z/a;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->getBinding()Le/a/k/m/o;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/o;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    invoke-virtual {v0}, Le/a/k/a/k/c;->getAudioState()Le/a/k/a/k/z/a;

    move-result-object v0

    return-object v0
.end method

.method public final getPlayingState()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Le/a/k/a/k/z/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->getBinding()Le/a/k/m/o;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/o;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    invoke-virtual {v0}, Le/a/k/a/k/c;->getPlayingState()Lq3/a/x2/i1;

    move-result-object v0

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 3
    iget v0, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    iget-boolean p2, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->a:Z

    if-eqz p2, :cond_0

    mul-int/lit8 p2, p1, 0x9

    .line 5
    div-int/lit8 p2, p2, 0x10

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p1, 0x10

    .line 6
    div-int/lit8 p2, p2, 0x9

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean p1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->a:Z

    if-eqz p1, :cond_2

    mul-int/lit8 p1, p2, 0x10

    .line 8
    div-int/lit8 p1, p1, 0x9

    goto :goto_0

    :cond_2
    mul-int/lit8 p1, p2, 0x9

    .line 9
    div-int/lit8 p1, p1, 0x10

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 10
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 11
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 12
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setActivityOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->b:I

    return-void
.end method

.method public final setLandscape(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;->a:Z

    return-void
.end method
