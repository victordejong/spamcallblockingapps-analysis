.class public final Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;
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
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\'\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J7\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0014H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008 \u0010\u001eJ\u0017\u0010#\u001a\u00020\t2\u0008\u0010\"\u001a\u0004\u0018\u00010!\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010&\u001a\u00020\t2\u0008\u0010\"\u001a\u0004\u0018\u00010%\u00a2\u0006\u0004\u0008&\u0010\'J\u0017\u0010)\u001a\u00020\t2\u0008\u0010\"\u001a\u0004\u0018\u00010(\u00a2\u0006\u0004\u0008)\u0010*J\r\u0010+\u001a\u00020\t\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010/\u001a\u00020\t2\u0008\u0010.\u001a\u0004\u0018\u00010-\u00a2\u0006\u0004\u0008/\u00100J\u0015\u00102\u001a\u00020\t2\u0006\u00101\u001a\u00020\u0010\u00a2\u0006\u0004\u00082\u00103J\r\u00104\u001a\u00020\u000e\u00a2\u0006\u0004\u00084\u00105J%\u0010;\u001a\u00020\t2\u0006\u00107\u001a\u0002062\u0006\u00109\u001a\u0002082\u0006\u0010:\u001a\u00020\u000e\u00a2\u0006\u0004\u0008;\u0010<J9\u0010C\u001a\u00020\t2\u0006\u00107\u001a\u0002062\u0008\u0010>\u001a\u0004\u0018\u00010=2\u0008\u0010?\u001a\u0004\u0018\u0001082\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020@\u00a2\u0006\u0004\u0008C\u0010DJ;\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030I2\u0006\u0010E\u001a\u00020\u00032\u0006\u0010F\u001a\u00020\u00032\u0006\u0010G\u001a\u00020\u00032\u0006\u0010H\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008J\u0010KJ\u0017\u0010M\u001a\u00020\t2\u0006\u0010L\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008M\u0010NJ\u0017\u0010P\u001a\u00020\t2\u0006\u0010O\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008P\u0010NJ\u0017\u0010Q\u001a\u00020\t2\u0006\u0010F\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008Q\u0010NJ3\u0010W\u001a\u00020V2\u0012\u0010S\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t0R2\u0006\u0010T\u001a\u00020\u00032\u0006\u0010U\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008W\u0010XJ#\u0010Y\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00042\u0008\u0008\u0002\u0010F\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008Y\u0010ZJ#\u0010[\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00042\u0008\u0008\u0002\u0010F\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008[\u0010ZJ\u000f\u0010]\u001a\u00020\\H\u0002\u00a2\u0006\u0004\u0008]\u0010^J\u000f\u0010_\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008_\u0010,J\u0017\u0010`\u001a\u00020\\2\u0006\u00107\u001a\u000206H\u0002\u00a2\u0006\u0004\u0008`\u0010aR\u0016\u0010d\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u0016\u0010h\u001a\u00020e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0018\u0010j\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010iR\u0016\u0010l\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010kR\u0016\u0010n\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010kR\u0018\u0010q\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u0018\u0010s\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010rR\u0016\u0010u\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010kR\u0016\u0010x\u001a\u00020\u00038B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008v\u0010wR\u0016\u0010{\u001a\u00020\\8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010zR\u0016\u0010|\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010kR\u0018\u0010}\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010iR\u0016\u0010\u007f\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008~\u0010cR \u0010\u0082\u0001\u001a\u00020\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008_\u0010\u0080\u0001\u001a\u0005\u0008\u0081\u0001\u00105R\u0017\u0010\u0083\u0001\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010kR\u0019\u0010\u0084\u0001\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010iR\u0017\u0010\u0085\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010cR\u0018\u0010\u0087\u0001\u001a\u00020\\8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0086\u0001\u0010zR\u001b\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008C\u0010\u0089\u0001R\u001a\u0010\u008e\u0001\u001a\u00030\u008b\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008c\u0001\u0010\u008d\u0001R\u0018\u0010\u0090\u0001\u001a\u00020\u00038B@\u0002X\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u008f\u0001\u0010wR\u001a\u0010\u0092\u0001\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008W\u0010\u0091\u0001R\u0018\u0010\u0094\u0001\u001a\u00020\u00038B@\u0002X\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0093\u0001\u0010wR\u001a\u0010\u0096\u0001\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008`\u0010\u0095\u0001R\u0018\u0010\u0098\u0001\u001a\u00020\\8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0097\u0001\u0010zR\u001b\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008;\u0010\u0089\u0001\u00a8\u0006\u009a\u0001"
    }
    d2 = {
        "Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;",
        "Landroid/widget/FrameLayout;",
        "Ls1/d0/e;",
        "",
        "Lcom/truecaller/messaging/mediaviewer/FloatRange;",
        "getScaleLimits",
        "()Ls1/d0/e;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Ls1/s;",
        "dispatchDraw",
        "(Landroid/graphics/Canvas;)V",
        "Landroid/view/View;",
        "child",
        "",
        "drawingTime",
        "",
        "drawChild",
        "(Landroid/graphics/Canvas;Landroid/view/View;J)Z",
        "changed",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "(ZIIII)V",
        "Landroid/view/MotionEvent;",
        "ev",
        "onInterceptTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "event",
        "onTouchEvent",
        "Le/a/a/j/o;",
        "listener",
        "setOnOverScrollListener",
        "(Le/a/a/j/o;)V",
        "Le/a/a/j/n;",
        "setOnImageSwipeListener",
        "(Le/a/a/j/n;)V",
        "Le/m/a/c/q0$b;",
        "setPlayerEventListener",
        "(Le/m/a/c/q0$b;)V",
        "o",
        "()V",
        "Lcom/google/android/exoplayer2/ui/PlayerControlView;",
        "view",
        "setPlayerControlView",
        "(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V",
        "playWhenReady",
        "setPlayWhenReady",
        "(Z)V",
        "getPlaybackPosition",
        "()J",
        "Lcom/truecaller/messaging/mediaviewer/MediaPosition;",
        "position",
        "Landroid/net/Uri;",
        "uri",
        "entityId",
        "m",
        "(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/net/Uri;J)V",
        "Landroid/graphics/drawable/Drawable;",
        "icon",
        "avatarUri",
        "",
        "title",
        "subtitle",
        "l",
        "(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V",
        "scaleFactor",
        "newScale",
        "focusX",
        "focusY",
        "Ls1/k;",
        "k",
        "(FFFF)Ls1/k;",
        "newOffsetX",
        "d",
        "(F)V",
        "newOffsetY",
        "e",
        "g",
        "Lkotlin/Function1;",
        "setter",
        "fromValue",
        "toValue",
        "Landroid/animation/Animator;",
        "f",
        "(Ls1/z/b/l;FF)Landroid/animation/Animator;",
        "i",
        "(F)Ls1/d0/e;",
        "j",
        "Le/a/a/j/f;",
        "c",
        "()Le/a/a/j/f;",
        "n",
        "h",
        "(Lcom/truecaller/messaging/mediaviewer/MediaPosition;)Le/a/a/j/f;",
        "q",
        "I",
        "scrollAxis",
        "Landroid/view/ScaleGestureDetector;",
        "v",
        "Landroid/view/ScaleGestureDetector;",
        "scaleDetector",
        "Landroid/animation/Animator;",
        "offsetXAnimator",
        "F",
        "scale",
        "b",
        "offsetY",
        "r",
        "Lcom/google/android/exoplayer2/ui/PlayerControlView;",
        "playerControlView",
        "Le/a/a/j/n;",
        "mediaSwipeListener",
        "a",
        "offsetX",
        "getDrawableHeight",
        "()F",
        "drawableHeight",
        "u",
        "Le/a/a/j/f;",
        "nextMediaHolder",
        "lastFocusX",
        "offsetYAnimator",
        "p",
        "swipeThreshold",
        "Ls1/g;",
        "getShortAnimationTime",
        "shortAnimationTime",
        "lastFocusY",
        "scaleAnimator",
        "mediaSpacing",
        "t",
        "currentMediaHolder",
        "Ln3/p/a/c;",
        "Ln3/p/a/c;",
        "offsetXFlingAnimation",
        "Landroid/view/GestureDetector;",
        "w",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "getDrawableWidth",
        "drawableWidth",
        "Le/a/a/j/o;",
        "overScrollListener",
        "getDrawableScale",
        "drawableScale",
        "Le/m/a/c/q0$b;",
        "playerEventListener",
        "s",
        "previousMediaHolder",
        "offsetYFlingAnimation",
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
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:Le/a/a/j/o;

.field public g:Le/a/a/j/n;

.field public h:Le/m/a/c/q0$b;

.field public i:Landroid/animation/Animator;

.field public j:Landroid/animation/Animator;

.field public k:Landroid/animation/Animator;

.field public l:Ln3/p/a/c;

.field public m:Ln3/p/a/c;

.field public final n:Ls1/g;

.field public final o:I

.field public final p:I

.field public q:I

.field public r:Lcom/google/android/exoplayer2/ui/PlayerControlView;

.field public s:Le/a/a/j/f;

.field public t:Le/a/a/j/f;

.field public u:Le/a/a/j/f;

.field public final v:Landroid/view/ScaleGestureDetector;

.field public final w:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    iput p2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    .line 4
    new-instance p2, Le/a/a/j/e;

    invoke-direct {p2, p1}, Le/a/a/j/e;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->n:Ls1/g;

    const/high16 p2, 0x41c00000    # 24.0f

    .line 5
    invoke-static {p1, p2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->o:I

    const/high16 p2, 0x42f00000    # 120.0f

    .line 6
    invoke-static {p1, p2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->p:I

    const/4 p2, -0x1

    .line 7
    iput p2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->q:I

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c()Le/a/a/j/f;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->s:Le/a/a/j/f;

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c()Le/a/a/j/f;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c()Le/a/a/j/f;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->u:Le/a/a/j/f;

    .line 11
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Le/a/a/j/d;

    invoke-direct {v0, p0}, Le/a/a/j/d;-><init>(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->v:Landroid/view/ScaleGestureDetector;

    .line 12
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Le/a/a/j/b;

    invoke-direct {v0, p0}, Le/a/a/j/b;-><init>(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->w:Landroid/view/GestureDetector;

    return-void
.end method

.method public static final a(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;FLs1/d0/e;FLs1/z/b/l;)Ln3/p/a/c;
    .locals 8

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ln3/p/a/c;

    new-instance v1, Ln3/p/a/e;

    invoke-direct {v1}, Ln3/p/a/e;-><init>()V

    invoke-direct {v0, v1}, Ln3/p/a/c;-><init>(Ln3/p/a/e;)V

    .line 3
    iput p1, v0, Ln3/p/a/b;->b:F

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Ln3/p/a/b;->c:Z

    .line 5
    iget v1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    div-float v1, p3, v1

    .line 6
    iput v1, v0, Ln3/p/a/b;->a:F

    .line 7
    move-object v1, p2

    check-cast v1, Ls1/d0/d;

    invoke-virtual {v1}, Ls1/d0/d;->getStart()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 8
    iput v2, v0, Ln3/p/a/b;->h:F

    .line 9
    invoke-virtual {v1}, Ls1/d0/d;->c()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 10
    iput v1, v0, Ln3/p/a/b;->g:F

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 11
    invoke-virtual {v0, v1}, Ln3/p/a/c;->k(F)Ln3/p/a/c;

    .line 12
    new-instance v1, Le/a/a/j/c;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p3

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Le/a/a/j/c;-><init>(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;FFLs1/d0/e;Ls1/z/b/l;)V

    invoke-virtual {v0, v1}, Ln3/p/a/b;->b(Ln3/p/a/b$m;)Ln3/p/a/b;

    .line 13
    invoke-virtual {v0}, Ln3/p/a/b;->i()V

    return-object v0
.end method

.method public static final synthetic b(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;)Ls1/d0/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->getScaleLimits()Ls1/d0/e;

    move-result-object p0

    return-object p0
.end method

.method private final getDrawableHeight()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    invoke-virtual {v0}, Le/a/a/j/f;->getDrawableHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    return v0
.end method

.method private final getDrawableScale()F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->getDrawableWidth()F

    move-result v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->getDrawableHeight()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private final getDrawableWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    invoke-virtual {v0}, Le/a/a/j/f;->getDrawableWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    return v0
.end method

.method private final getScaleLimits()Ls1/d0/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/d0/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->getDrawableScale()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2
    new-instance v2, Ls1/d0/d;

    invoke-direct {v2, v0, v1}, Ls1/d0/d;-><init>(FF)V

    return-object v2
.end method

.method private final getShortAnimationTime()J
    .locals 2

    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->n:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final c()Le/a/a/j/f;
    .locals 5

    .line 1
    new-instance v0, Le/a/a/j/f;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Le/a/a/j/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 4
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object v0
.end method

.method public final d(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->l:Ln3/p/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln3/p/a/b;->c()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->i:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3
    :cond_1
    new-instance v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$a;

    invoke-direct {v0, p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$a;-><init>(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;)V

    iget v1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->f(Ls1/z/b/l;FF)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->i:Landroid/animation/Animator;

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->i(F)Ls1/d0/e;

    move-result-object v0

    .line 4
    iget v5, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    invoke-static {v0, v5}, Le/a/c/p/a;->f(Ls1/d0/e;F)F

    move-result v0

    .line 5
    iget v5, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    invoke-virtual {p0, v5}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->j(F)Ls1/d0/e;

    move-result-object v5

    .line 6
    iget v6, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    invoke-static {v5, v6}, Le/a/c/p/a;->f(Ls1/d0/e;F)F

    move-result v5

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    .line 7
    iget v7, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    int-to-float v8, v4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    iget-object v7, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->s:Le/a/a/j/f;

    invoke-virtual {v7}, Le/a/a/j/f;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    if-eqz v2, :cond_2

    .line 8
    iget v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    int-to-float v7, v4

    cmpl-float v2, v2, v7

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->u:Le/a/a/j/f;

    invoke-virtual {v2}, Le/a/a/j/f;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    .line 9
    :cond_2
    iget v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    cmpg-float v2, v2, v1

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, v6

    .line 10
    :goto_2
    iget-object v7, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->f:Le/a/a/j/o;

    if-eqz v7, :cond_5

    invoke-interface {v7, v2}, Le/a/a/j/o;->c(F)Z

    move-result v2

    if-ne v2, v3, :cond_5

    :goto_3
    move v2, v3

    goto :goto_4

    :cond_5
    move v2, v4

    .line 11
    :goto_4
    iget v7, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    cmpg-float v1, v7, v1

    if-nez v1, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    move v1, v4

    :goto_5
    if-eqz v1, :cond_7

    move v1, v5

    goto :goto_6

    :cond_7
    move v1, v6

    .line 12
    :goto_6
    iget-object v7, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->f:Le/a/a/j/o;

    if-eqz v7, :cond_8

    invoke-interface {v7, v1}, Le/a/a/j/o;->b(F)Z

    move-result v1

    if-ne v1, v3, :cond_8

    goto :goto_7

    :cond_8
    move v3, v4

    .line 13
    :goto_7
    iget v1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    invoke-static {v4, v1}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v1

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v7, v1

    check-cast v7, Ls1/u/z;

    invoke-virtual {v7}, Ls1/u/z;->a()I

    move-result v7

    .line 17
    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 18
    :cond_9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const-string v7, "child"

    .line 19
    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v7, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    const/high16 v8, 0x3f400000    # 0.75f

    if-eqz v2, :cond_a

    move v9, v6

    goto :goto_a

    :cond_a
    move v9, v8

    :goto_a
    mul-float/2addr v9, v0

    sub-float/2addr v7, v9

    neg-float v7, v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 20
    iget v7, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    if-eqz v3, :cond_b

    move v8, v6

    :cond_b
    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    neg-float v7, v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_9

    .line 21
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->s:Le/a/a/j/f;

    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    iget v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->o:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->u:Le/a/a/j/f;

    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->o:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2
.end method

.method public final e(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->m:Ln3/p/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln3/p/a/b;->c()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->j:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3
    :cond_1
    new-instance v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$b;

    invoke-direct {v0, p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$b;-><init>(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;)V

    iget v1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->f(Ls1/z/b/l;FF)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->j:Landroid/animation/Animator;

    return-void
.end method

.method public final f(Ls1/z/b/l;FF)Landroid/animation/Animator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Float;",
            "Ls1/s;",
            ">;FF)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 2
    invoke-direct {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->getShortAnimationTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance p3, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$c;

    invoke-direct {p3, p0, p1}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$c;-><init>(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;Ls1/z/b/l;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    const-string p1, "ValueAnimator.ofFloat(fr\u2026        start()\n        }"

    .line 5
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final g(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->k:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2
    :cond_0
    new-instance v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$d;

    invoke-direct {v0, p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$d;-><init>(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;)V

    iget v1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->f(Ls1/z/b/l;FF)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->k:Landroid/animation/Animator;

    return-void
.end method

.method public final getPlaybackPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    invoke-virtual {v0}, Le/a/a/j/f;->getPlaybackPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h(Lcom/truecaller/messaging/mediaviewer/MediaPosition;)Le/a/a/j/f;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->u:Le/a/a/j/f;

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->s:Le/a/a/j/f;

    :goto_0
    return-object p1
.end method

.method public final i(F)Ls1/d0/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ls1/d0/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->getDrawableWidth()F

    move-result v1

    invoke-direct {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->getDrawableScale()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    .line 3
    new-instance p1, Ls1/d0/d;

    invoke-direct {p1, v0, v1}, Ls1/d0/d;-><init>(FF)V

    return-object p1
.end method

.method public final j(F)Ls1/d0/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ls1/d0/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->getDrawableHeight()F

    move-result v1

    invoke-direct {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->getDrawableScale()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    .line 3
    new-instance p1, Ls1/d0/d;

    invoke-direct {p1, v0, v1}, Ls1/d0/d;-><init>(FF)V

    return-object p1
.end method

.method public final k(FFFF)Ls1/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Ls1/k<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    neg-float p3, p3

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    mul-float/2addr p3, v0

    div-float/2addr p3, p2

    .line 1
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    neg-float p3, p4

    mul-float/2addr p3, v0

    div-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 2
    new-instance p3, Ls1/k;

    invoke-direct {p3, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final l(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "position"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "subtitle"

    invoke-static {p5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->h(Lcom/truecaller/messaging/mediaviewer/MediaPosition;)Le/a/a/j/f;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Le/a/a/j/f;->d()V

    if-nez p3, :cond_0

    .line 4
    iget-object p3, p1, Le/a/a/j/f;->e:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p1, Le/a/a/j/f;->e:Landroid/widget/ImageView;

    invoke-static {v0}, Le/f/a/c;->f(Landroid/view/View;)Le/f/a/i;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p3}, Le/f/a/i;->p(Landroid/net/Uri;)Le/f/a/h;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Le/f/a/r/a;->f()Le/f/a/r/a;

    move-result-object p3

    check-cast p3, Le/f/a/h;

    .line 8
    invoke-virtual {p3, p2}, Le/f/a/r/a;->v(Landroid/graphics/drawable/Drawable;)Le/f/a/r/a;

    move-result-object p2

    check-cast p2, Le/f/a/h;

    .line 9
    iget-object p3, p1, Le/a/a/j/f;->e:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    move-result-object p2

    const-string p3, "Glide.with(fileImageView\u2026     .into(fileImageView)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :goto_0
    iget-object p2, p1, Le/a/a/j/f;->f:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p2, p1, Le/a/a/j/f;->g:Landroid/widget/TextView;

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p1, Le/a/a/j/f;->d:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final m(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/net/Uri;J)V
    .locals 2

    const-string v0, "position"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->h(Lcom/truecaller/messaging/mediaviewer/MediaPosition;)Le/a/a/j/f;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Le/a/a/j/f;->d()V

    .line 4
    iget-object v0, p1, Le/a/a/j/f;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p1, Le/a/a/j/f;->a:Landroid/widget/ImageView;

    invoke-static {p3, p4}, Lcom/truecaller/messaging/mediaviewer/MediaViewerActivity;->qa(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Le/f/a/c;->f(Landroid/view/View;)Le/f/a/i;

    move-result-object p3

    .line 7
    invoke-virtual {p3, p2}, Le/f/a/i;->p(Landroid/net/Uri;)Le/f/a/h;

    move-result-object p2

    const/4 p3, 0x1

    .line 8
    invoke-virtual {p2, p3}, Le/f/a/r/a;->A(Z)Le/f/a/r/a;

    move-result-object p2

    check-cast p2, Le/f/a/h;

    .line 9
    sget-object p3, Le/f/a/n/o/k;->b:Le/f/a/n/o/k;

    invoke-virtual {p2, p3}, Le/f/a/r/a;->i(Le/f/a/n/o/k;)Le/f/a/r/a;

    move-result-object p2

    check-cast p2, Le/f/a/h;

    .line 10
    new-instance p3, Le/a/a/j/m;

    iget-object p1, p1, Le/a/a/j/f;->a:Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Le/a/a/j/m;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p2, p3}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->r:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    invoke-virtual {v1, v0}, Le/a/a/j/f;->setPlayerControlView(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->h:Le/m/a/c/q0$b;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->s:Le/a/a/j/f;

    invoke-virtual {v1, v0}, Le/a/a/j/f;->c(Le/m/a/c/q0$b;)V

    .line 4
    iget-object v1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->u:Le/a/a/j/f;

    invoke-virtual {v1, v0}, Le/a/a/j/f;->c(Le/m/a/c/q0$b;)V

    .line 5
    iget-object v1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "listener"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, v1, Le/a/a/j/f;->i:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Le/m/a/c/q0$b;)V

    .line 8
    :cond_1
    iget-object v1, v1, Le/a/a/j/f;->j:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final o()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->i(F)Ls1/d0/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Le/a/c/p/a;->d(FLs1/d0/e;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->d(F)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->j(F)Ls1/d0/e;

    move-result-object v1

    invoke-static {v2, v1}, Le/a/c/p/a;->d(FLs1/d0/e;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->e(F)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->g(F)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->i:Landroid/animation/Animator;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eq p1, p2, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->j:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eq p1, p2, :cond_2

    .line 3
    :cond_1
    iget p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    invoke-direct {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->getScaleLimits()Ls1/d0/e;

    move-result-object p2

    invoke-static {p1, p2}, Le/a/c/p/a;->d(FLs1/d0/e;)F

    move-result p1

    iput p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    .line 4
    iget p2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    .line 5
    invoke-virtual {p0, p1}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->i(F)Ls1/d0/e;

    move-result-object p1

    .line 6
    invoke-static {p2, p1}, Le/a/c/p/a;->d(FLs1/d0/e;)F

    move-result p1

    iput p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    .line 7
    iget p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    .line 8
    iget p2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    invoke-virtual {p0, p2}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->j(F)Ls1/d0/e;

    move-result-object p2

    .line 9
    invoke-static {p1, p2}, Le/a/c/p/a;->d(FLs1/d0/e;)F

    move-result p1

    iput p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->i:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eq v0, v1, :cond_8

    :cond_1
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->j:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eq v0, v1, :cond_8

    :cond_2
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->k:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_3

    goto/16 :goto_1

    .line 3
    :cond_3
    iget v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-nez v0, :cond_5

    .line 4
    iget v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    iget v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->p:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->u:Le/a/a/j/f;

    invoke-virtual {v0}, Le/a/a/j/f;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    .line 6
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    invoke-virtual {v0, v2}, Le/a/a/j/f;->setPlayWhenReady(Z)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->s:Le/a/a/j/f;

    .line 8
    iget-object v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    iput-object v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->s:Le/a/a/j/f;

    .line 9
    iget-object v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->u:Le/a/a/j/f;

    iput-object v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    .line 10
    iput-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->u:Le/a/a/j/f;

    .line 11
    invoke-virtual {v0}, Le/a/a/j/f;->d()V

    .line 12
    invoke-virtual {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->n()V

    .line 13
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->g:Le/a/a/j/n;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/a/j/n;->pf()V

    goto :goto_0

    .line 14
    :cond_4
    iget v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    iget v3, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->p:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->s:Le/a/a/j/f;

    invoke-virtual {v0}, Le/a/a/j/f;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    .line 16
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    invoke-virtual {v0, v2}, Le/a/a/j/f;->setPlayWhenReady(Z)V

    .line 17
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->u:Le/a/a/j/f;

    .line 18
    iget-object v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    iput-object v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->u:Le/a/a/j/f;

    .line 19
    iget-object v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->s:Le/a/a/j/f;

    iput-object v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    .line 20
    iput-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->s:Le/a/a/j/f;

    .line 21
    invoke-virtual {v0}, Le/a/a/j/f;->d()V

    .line 22
    invoke-virtual {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->n()V

    .line 23
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->g:Le/a/a/j/n;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/a/j/n;->fa()V

    .line 24
    :cond_5
    :goto_0
    iget v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    invoke-direct {p0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->getScaleLimits()Ls1/d0/e;

    move-result-object v2

    invoke-static {v0, v2}, Le/a/c/p/a;->d(FLs1/d0/e;)F

    move-result v0

    .line 25
    iget v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    div-float v2, v0, v2

    .line 26
    iget v3, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->d:F

    iget v4, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->e:F

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->k(FFFF)Ls1/k;

    move-result-object v2

    .line 27
    iget-object v3, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 28
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 29
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 30
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 31
    iget v4, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    add-float/2addr v4, v3

    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->i(F)Ls1/d0/e;

    move-result-object v3

    invoke-static {v4, v3}, Le/a/c/p/a;->d(FLs1/d0/e;)F

    move-result v3

    .line 32
    iget v4, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    add-float/2addr v4, v2

    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->j(F)Ls1/d0/e;

    move-result-object v2

    invoke-static {v4, v2}, Le/a/c/p/a;->d(FLs1/d0/e;)F

    move-result v2

    .line 33
    iget v4, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    cmpg-float v4, v3, v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v3}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->d(F)V

    .line 34
    :cond_6
    iget v3, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    cmpg-float v3, v2, v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v2}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->e(F)V

    .line 35
    :cond_7
    iget v2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    cmpg-float v2, v0, v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->g(F)V

    .line 36
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->f:Le/a/a/j/o;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Le/a/a/j/o;->a()V

    goto :goto_2

    :cond_9
    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->q:I

    .line 38
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->l:Ln3/p/a/c;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ln3/p/a/b;->c()V

    .line 39
    :cond_a
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->m:Ln3/p/a/c;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ln3/p/a/b;->c()V

    .line 40
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->v:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 41
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->v:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 42
    :cond_c
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->w:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method public final setOnImageSwipeListener(Le/a/a/j/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->g:Le/a/a/j/n;

    return-void
.end method

.method public final setOnOverScrollListener(Le/a/a/j/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->f:Le/a/a/j/o;

    return-void
.end method

.method public final setPlayWhenReady(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    invoke-virtual {v0, p1}, Le/a/a/j/f;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final setPlayerControlView(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->r:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    invoke-virtual {v0, p1}, Le/a/a/j/f;->setPlayerControlView(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_0
    return-void
.end method

.method public final setPlayerEventListener(Le/m/a/c/q0$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->h:Le/m/a/c/q0$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->s:Le/a/a/j/f;

    invoke-virtual {v1, v0}, Le/a/a/j/f;->c(Le/m/a/c/q0$b;)V

    .line 3
    iget-object v1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    invoke-virtual {v1, v0}, Le/a/a/j/f;->c(Le/m/a/c/q0$b;)V

    .line 4
    iget-object v1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->u:Le/a/a/j/f;

    invoke-virtual {v1, v0}, Le/a/a/j/f;->c(Le/m/a/c/q0$b;)V

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->h:Le/m/a/c/q0$b;

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "listener"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, v0, Le/a/a/j/f;->i:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Le/m/a/c/q0$b;)V

    .line 9
    :cond_1
    iget-object v0, v0, Le/a/a/j/f;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
