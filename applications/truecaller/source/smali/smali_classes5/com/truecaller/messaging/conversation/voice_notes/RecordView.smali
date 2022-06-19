.class public final Lcom/truecaller/messaging/conversation/voice_notes/RecordView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;,
        Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0097\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001 \u0018\u00002\u00020\u0001:\u0002\u000e\\J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001d\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\u0015\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0006J\u0015\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0006J\'\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\u001b\u0010\u001e\u001a\u00020\u00042\n\u0010\u001b\u001a\u00060\u001cj\u0002`\u001dH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R%\u0010*\u001a\n %*\u0004\u0018\u00010$0$8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u0016\u0010-\u001a\u00020+8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010,R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R%\u00103\u001a\n %*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010\'\u001a\u0004\u00081\u00102R\u0016\u00106\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u00105R\u0016\u00109\u001a\u0002078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u00108R\u0016\u0010:\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010/R\u0016\u0010=\u001a\u00020;8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010<R%\u0010B\u001a\n %*\u0004\u0018\u00010>0>8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u0010\'\u001a\u0004\u0008@\u0010AR$\u0010I\u001a\u0004\u0018\u00010C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010D\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\u0016\u0010J\u001a\u0002078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u00108R\u0016\u0010M\u001a\u00020K8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010LR\u0016\u0010N\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u00105R\"\u0010T\u001a\u0002048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u00105\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR\u0018\u0010W\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010VR\u0016\u0010[\u001a\u00020X8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008Y\u0010Z\u00a8\u0006]"
    }
    d2 = {
        "Lcom/truecaller/messaging/conversation/voice_notes/RecordView;",
        "Landroid/widget/RelativeLayout;",
        "Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;",
        "recordButton",
        "Ls1/s;",
        "g",
        "(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V",
        "Landroid/view/MotionEvent;",
        "motionEvent",
        "h",
        "(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Landroid/view/MotionEvent;)V",
        "i",
        "recordBtn",
        "j",
        "a",
        "Landroid/widget/TextView;",
        "slideToCancel",
        "",
        "initialX",
        "d",
        "(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Landroid/widget/TextView;F)V",
        "Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;",
        "state",
        "l",
        "(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;)V",
        "k",
        "()V",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "f",
        "(Ljava/lang/Exception;)V",
        "e/a/a/c/s8/n",
        "q",
        "Le/a/a/c/s8/n;",
        "updateVisualizer",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "n",
        "Ls1/g;",
        "getGuidelineThreshold",
        "()Landroid/view/View;",
        "guidelineThreshold",
        "",
        "Ljava/lang/String;",
        "outputFilePath",
        "c",
        "F",
        "o",
        "getTvSlideToCancel",
        "()Landroid/widget/TextView;",
        "tvSlideToCancel",
        "",
        "J",
        "elapsedTime",
        "",
        "Z",
        "didSlideToDelete",
        "previousX",
        "",
        "I",
        "screenWidthCenter",
        "Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;",
        "p",
        "getVisualizerView",
        "()Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;",
        "visualizerView",
        "Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;",
        "Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;",
        "getRecordListener",
        "()Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;",
        "setRecordListener",
        "(Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;)V",
        "recordListener",
        "isRecording",
        "Landroid/os/Handler;",
        "Landroid/os/Handler;",
        "visualizerHandler",
        "startTime",
        "b",
        "getMaxDurationMs",
        "()J",
        "setMaxDurationMs",
        "(J)V",
        "maxDurationMs",
        "Landroid/media/MediaRecorder;",
        "Landroid/media/MediaRecorder;",
        "recorder",
        "Le/a/a/c/s8/c;",
        "m",
        "Le/a/a/c/s8/c;",
        "audioFocusHandler",
        "RecordState",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic r:I


# instance fields
.field public a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;

.field public b:J

.field public c:F

.field public d:F

.field public e:J

.field public f:J

.field public g:Landroid/media/MediaRecorder;

.field public h:Z

.field public i:Z

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:Landroid/os/Handler;

.field public m:Le/a/a/c/s8/c;

.field public final n:Ls1/g;

.field public final o:Ls1/g;

.field public final p:Ls1/g;

.field public final q:Le/a/a/c/s8/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/voice-note"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".aac"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->j:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v2, "resources"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->k:I

    .line 5
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->l:Landroid/os/Handler;

    const p2, 0x7f0a08f4

    .line 6
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->n:Ls1/g;

    const p2, 0x7f0a12d1

    .line 7
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->o:Ls1/g;

    const p2, 0x7f0a13f8

    .line 8
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->p:Ls1/g;

    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string v2, "LayoutInflater.from(context)"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {p2, v2}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0d04f4

    invoke-virtual {p2, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getTvSlideToCancel()Landroid/widget/TextView;

    move-result-object p2

    const v2, 0x7f081755

    const v3, 0x7f040690

    .line 11
    invoke-static {p1, v2, v3}, Le/a/b0/q/o;->f(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 12
    invoke-virtual {p2, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getVisualizerView()Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;

    move-result-object p1

    .line 14
    iget-object p2, p1, Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 16
    invoke-static {p0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 17
    new-instance p1, Le/a/a/c/s8/n;

    invoke-direct {p1, p0}, Le/a/a/c/s8/n;-><init>(Lcom/truecaller/messaging/conversation/voice_notes/RecordView;)V

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->q:Le/a/a/c/s8/n;

    return-void
.end method

.method public static final synthetic b(Lcom/truecaller/messaging/conversation/voice_notes/RecordView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getTvSlideToCancel()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/truecaller/messaging/conversation/voice_notes/RecordView;)Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getVisualizerView()Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;

    move-result-object p0

    return-object p0
.end method

.method private final getGuidelineThreshold()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->n:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getTvSlideToCancel()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->o:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getVisualizerView()Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->p:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V
    .locals 2

    const-string v0, "recordBtn"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 3
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getTvSlideToCancel()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "tvSlideToCancel"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->c:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->d(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Landroid/widget/TextView;F)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->e()V

    :cond_0
    return-void
.end method

.method public final d(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Landroid/widget/TextView;F)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-string v0, "positionAnimator"

    .line 2
    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    new-instance v0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$b;

    invoke-direct {v0, p1}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$b;-><init>(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p1, v0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->r(F)Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x0

    .line 5
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 7
    invoke-static {p2}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 8
    sget-object p2, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;->RECORD:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->l(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->k()V

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/g;->i1(Ljava/io/File;)Z

    return-void
.end method

.method public final f(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->h:Z

    .line 3
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;

    if-eqz p1, :cond_0

    check-cast p1, Le/a/a/c/a4;

    .line 4
    iget-object p1, p1, Le/a/a/c/a4;->a:Le/a/a/c/y3;

    iget-object p1, p1, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {p1}, Le/a/a/c/f4;->le()V

    .line 5
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->j:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/g;->i1(Ljava/io/File;)Z

    .line 6
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->l:Landroid/os/Handler;

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->q:Le/a/a/c/s8/n;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V
    .locals 4

    const-string v0, "recordButton"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getVisualizerView()Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-static {v0}, Le/a/c/p/a;->s2(Landroid/media/AudioManager;)Le/a/a/c/s8/c;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->m:Le/a/a/c/s8/c;

    .line 5
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    .line 6
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    const/4 v2, 0x2

    .line 8
    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    const/4 v2, 0x3

    .line 9
    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 10
    iget-wide v2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->b:J

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 11
    iget-object v2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 12
    new-instance v2, Le/a/a/c/s8/m;

    invoke-direct {v2, p0, p1}, Le/a/a/c/s8/m;-><init>(Lcom/truecaller/messaging/conversation/voice_notes/RecordView;Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 13
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 14
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 15
    iput-boolean v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->h:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 16
    invoke-virtual {p0, v1}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->f(Ljava/lang/Exception;)V

    .line 17
    iget-object v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->g:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 18
    invoke-virtual {p0, v1}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->f(Ljava/lang/Exception;)V

    .line 19
    iget-object v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->g:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 20
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->g:Landroid/media/MediaRecorder;

    .line 21
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->q:Le/a/a/c/s8/n;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/high16 v0, 0x40000000    # 2.0f

    .line 22
    invoke-virtual {p1, v0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->r(F)Landroid/animation/AnimatorSet;

    .line 23
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getX()F

    move-result p1

    iput p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->c:F

    .line 24
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->e:J

    .line 26
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;

    if-eqz p1, :cond_1

    check-cast p1, Le/a/a/c/a4;

    .line 27
    iget-object v0, p1, Le/a/a/c/a4;->a:Le/a/a/c/y3;

    iget-object v0, v0, Le/a/a/c/y3;->c:Le/a/a/c/s4;

    invoke-interface {v0}, Le/a/a/c/k/a/j$b;->r4()V

    .line 28
    iget-object v0, p1, Le/a/a/c/a4;->a:Le/a/a/c/y3;

    iget-object v0, v0, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {v0}, Le/a/a/c/f4;->Pg()V

    .line 29
    iget-object p1, p1, Le/a/a/c/a4;->a:Le/a/a/c/y3;

    .line 30
    iget-object p1, p1, Le/a/a/c/y3;->J0:Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;

    .line 31
    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/voice_notes/RecordToastView;->c()V

    :cond_1
    return-void
.end method

.method public final getMaxDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->b:J

    return-wide v0
.end method

.method public final getRecordListener()Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;

    return-object v0
.end method

.method public final h(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Landroid/view/MotionEvent;)V
    .locals 6

    const-string v0, "recordButton"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Le/a/b0/k/h;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->c:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->k:I

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->c:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->k:I

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 7
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9
    iget v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->d:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->c:F

    iput v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->d:F

    .line 10
    :cond_3
    invoke-static {}, Le/a/b0/k/h;->a()Z

    move-result v0

    const-string v4, "guidelineThreshold"

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v5, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->d:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getGuidelineThreshold()Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_5

    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getGuidelineThreshold()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    cmpg-float v0, v0, v3

    if-eqz v0, :cond_5

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->d:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getGuidelineThreshold()Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_5

    :goto_2
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    const-string v3, "tvSlideToCancel"

    if-eqz v0, :cond_7

    .line 13
    sget-object v0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;->DELETE:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->l(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;)V

    .line 14
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getTvSlideToCancel()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;

    if-eqz p1, :cond_6

    check-cast p1, Le/a/a/c/a4;

    .line 16
    iget-object p1, p1, Le/a/a/c/a4;->a:Le/a/a/c/y3;

    iget-object p1, p1, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {p1}, Le/a/a/c/f4;->Sf()V

    .line 17
    :cond_6
    iput-boolean v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->i:Z

    goto :goto_5

    .line 18
    :cond_7
    invoke-static {}, Le/a/b0/k/h;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v5, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->d:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getGuidelineThreshold()Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_9

    goto :goto_4

    .line 20
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v5, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->d:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getGuidelineThreshold()Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_9

    goto :goto_4

    :cond_9
    move v1, v2

    :goto_4
    if-eqz v1, :cond_b

    .line 21
    sget-object v0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;->RECORD:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->l(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;)V

    .line 22
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getTvSlideToCancel()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;

    if-eqz p1, :cond_a

    check-cast p1, Le/a/a/c/a4;

    .line 24
    iget-object p1, p1, Le/a/a/c/a4;->a:Le/a/a/c/y3;

    iget-object p1, p1, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {p1}, Le/a/a/c/f4;->P5()V

    .line 25
    :cond_a
    iput-boolean v2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->i:Z

    .line 26
    :cond_b
    :goto_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->d:F

    :cond_c
    return-void
.end method

.method public final i(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V
    .locals 3

    const-string v0, "recordButton"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 3
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getTvSlideToCancel()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "tvSlideToCancel"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->c:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->d(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Landroid/widget/TextView;F)V

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$c;

    invoke-direct {v0, p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$c;-><init>(Lcom/truecaller/messaging/conversation/voice_notes/RecordView;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final j(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V
    .locals 2

    const-string v0, "recordBtn"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->h:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/a/c/a4;

    .line 3
    iget-object v0, v0, Le/a/a/c/a4;->a:Le/a/a/c/y3;

    iget-object v0, v0, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {v0}, Le/a/a/c/f4;->Zb()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 5
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getTvSlideToCancel()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "tvSlideToCancel"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->c:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->d(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Landroid/widget/TextView;F)V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->e()V

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->q:Le/a/a/c/s8/n;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->i:Z

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->g:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 4
    :cond_0
    iput-boolean v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->h:Z

    .line 5
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->m:Le/a/a/c/s8/c;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a/c/s8/c;->a(Landroid/media/AudioManager;)V

    goto :goto_0

    :cond_1
    const-string v0, "audioFocusHandler"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    throw v0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->f(Ljava/lang/Exception;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->g:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    :cond_2
    return-void
.end method

.method public final l(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;->getColor()I

    move-result v1

    invoke-static {v0, v1}, Le/a/p5/s0/g;->M(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;->getIcon()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 3
    sget-object v2, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 4
    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-string v0, "DrawableCompat.wrap(\n   \u2026heme))\n        ).mutate()"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060615

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 8
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setMaxDurationMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->b:J

    return-void
.end method

.method public final setRecordListener(Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;

    return-void
.end method
