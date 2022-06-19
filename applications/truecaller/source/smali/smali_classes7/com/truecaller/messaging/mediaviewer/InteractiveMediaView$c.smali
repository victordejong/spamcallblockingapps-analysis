.class public final Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->f(Ls1/z/b/l;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

.field public final synthetic b:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;Ls1/z/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$c;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    iput-object p2, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$c;->b:Ls1/z/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$c;->b:Ls1/z/b/l;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$c;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
