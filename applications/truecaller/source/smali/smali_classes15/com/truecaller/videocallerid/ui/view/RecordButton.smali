.class public final Lcom/truecaller/videocallerid/ui/view/RecordButton;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R%\u0010\u0010\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/ui/view/RecordButton;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Ls1/s;",
        "onDetachedFromWindow",
        "()V",
        "g1",
        "Le/a/k/m/x;",
        "t",
        "Le/a/k/m/x;",
        "binding",
        "Landroid/animation/ObjectAnimator;",
        "kotlin.jvm.PlatformType",
        "u",
        "Ls1/g;",
        "getCountDownAnimator",
        "()Landroid/animation/ObjectAnimator;",
        "countDownAnimator",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic v:I


# instance fields
.field public final t:Le/a/k/m/x;

.field public final u:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    sget p2, Lcom/truecaller/videocallerid/R$layout;->view_video_caller_id_record_button:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget p1, Lcom/truecaller/videocallerid/R$id;->progressBar:I

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/videocallerid/ui/view/RecordingProgressView;

    if-eqz p2, :cond_0

    .line 7
    sget p1, Lcom/truecaller/videocallerid/R$id;->recordImageView:I

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 9
    sget p1, Lcom/truecaller/videocallerid/R$id;->stopIconImageView:I

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 11
    new-instance p1, Le/a/k/m/x;

    invoke-direct {p1, p0, p2, v0, v1}, Le/a/k/m/x;-><init>(Landroid/view/View;Lcom/truecaller/videocallerid/ui/view/RecordingProgressView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    const-string p2, "ViewVideoCallerIdRecordB\u2026ater.from(context), this)"

    .line 12
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/view/RecordButton;->t:Le/a/k/m/x;

    .line 13
    new-instance p1, Le/a/k/a/l/b;

    invoke-direct {p1, p0}, Le/a/k/a/l/b;-><init>(Lcom/truecaller/videocallerid/ui/view/RecordButton;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/view/RecordButton;->u:Ls1/g;

    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final synthetic f1(Lcom/truecaller/videocallerid/ui/view/RecordButton;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/view/RecordButton;->getCountDownAnimator()Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private final getCountDownAnimator()Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/view/RecordButton;->u:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    return-object v0
.end method


# virtual methods
.method public final g1()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/view/RecordButton;->getCountDownAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/view/RecordButton;->t:Le/a/k/m/x;

    .line 3
    iget-object v1, v0, Le/a/k/m/x;->b:Lcom/truecaller/videocallerid/ui/view/RecordingProgressView;

    .line 4
    iget-object v2, v1, Lcom/truecaller/videocallerid/ui/view/RecordingProgressView;->f:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lcom/truecaller/videocallerid/ui/view/RecordingProgressView;->setProgress(F)V

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/truecaller/videocallerid/R$dimen;->vid_recording_progress_bg_padding_start:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 7
    iput v3, v1, Lcom/truecaller/videocallerid/ui/view/RecordingProgressView;->e:F

    .line 8
    invoke-virtual {v1}, Lcom/truecaller/videocallerid/ui/view/RecordingProgressView;->a()V

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/truecaller/videocallerid/R$color;->video_caller_id_recording_progress_bg_start:I

    .line 10
    sget-object v5, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 11
    invoke-static {v3, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 12
    iget-object v4, v1, Lcom/truecaller/videocallerid/ui/view/RecordingProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 14
    iget-object v0, v0, Le/a/k/m/x;->c:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 16
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/view/RecordButton;->getCountDownAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method
