.class public final Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J#\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\"\u0010(\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010\u000fR\u0016\u0010+\u001a\u00020)8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010*R\u0016\u0010.\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/View;",
        "v",
        "Ls1/s;",
        "setClip",
        "(Landroid/view/View;)V",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouch",
        "(Landroid/view/View;Landroid/view/MotionEvent;)Z",
        "hasWindowFocus",
        "onWindowFocusChanged",
        "(Z)V",
        "onAttachedToWindow",
        "()V",
        "",
        "scale",
        "Landroid/animation/AnimatorSet;",
        "r",
        "(F)Landroid/animation/AnimatorSet;",
        "Landroid/view/GestureDetector;",
        "w",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "Lcom/truecaller/messaging/conversation/voice_notes/RecordView;",
        "t",
        "Lcom/truecaller/messaging/conversation/voice_notes/RecordView;",
        "getRecordView",
        "()Lcom/truecaller/messaging/conversation/voice_notes/RecordView;",
        "setRecordView",
        "(Lcom/truecaller/messaging/conversation/voice_notes/RecordView;)V",
        "recordView",
        "s",
        "Z",
        "getRecordingEnabled",
        "()Z",
        "setRecordingEnabled",
        "recordingEnabled",
        "",
        "I",
        "touchSlop",
        "u",
        "F",
        "downX",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public s:Z

.field public t:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

.field public u:F

.field public final v:I

.field public final w:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    const-string v0, "ViewConfiguration.get(context)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->v:I

    .line 4
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Le/a/a/c/s8/l;

    invoke-direct {v0, p0}, Le/a/a/c/s8/l;-><init>(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->w:Landroid/view/GestureDetector;

    .line 5
    invoke-virtual {p0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private final setClip(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->setClip(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getRecordView()Lcom/truecaller/messaging/conversation/voice_notes/RecordView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->t:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "recordView"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getRecordingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->s:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0, p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->setClip(Landroid/view/View;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->s:Z

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->w:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x2

    const-string v3, "recordView"

    const-string v4, "null cannot be cast to non-null type com.truecaller.messaging.conversation.voice_notes.RecordFloatingActionButton"

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_3

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->u:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->v:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 6
    iget-object v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->t:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    if-eqz v1, :cond_2

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;

    invoke-virtual {v1, p1, p2}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->h(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 p2, 0x1

    if-nez v1, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_6

    iget-object p2, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->t:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    if-eqz p2, :cond_5

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;

    invoke-virtual {p2, p1}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->i(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V

    goto :goto_2

    :cond_5
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_6
    :goto_2
    iget-boolean p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->s:Z

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onWindowFocusChanged(Z)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->t:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->j(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V

    goto :goto_0

    :cond_0
    const-string p1, "recordView"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final r(F)Landroid/animation/AnimatorSet;
    .locals 6

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x96

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const-string v5, "scaleY"

    .line 4
    invoke-static {p0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v4

    new-array v3, v2, [F

    aput p1, v3, v4

    const-string p1, "scaleX"

    .line 5
    invoke-static {p0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v1, v2

    .line 6
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method public final setRecordView(Lcom/truecaller/messaging/conversation/voice_notes/RecordView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->t:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    return-void
.end method

.method public final setRecordingEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->s:Z

    return-void
.end method
