.class public final Le/a/x/i0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ghost_call/callergradient/GhostCallerGradientView;


# direct methods
.method public constructor <init>(Lcom/truecaller/ghost_call/callergradient/GhostCallerGradientView;)V
    .locals 0

    iput-object p1, p0, Le/a/x/i0/e;->a:Lcom/truecaller/ghost_call/callergradient/GhostCallerGradientView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/x/i0/e;->a:Lcom/truecaller/ghost_call/callergradient/GhostCallerGradientView;

    const-string v1, "animator"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/truecaller/ghost_call/callergradient/GhostCallerGradientView;->c(Lcom/truecaller/ghost_call/callergradient/GhostCallerGradientView;F)V

    return-void
.end method
