.class public Ln3/y/e/q;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln3/y/e/k;


# direct methods
.method public constructor <init>(Ln3/y/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/q;->a:Ln3/y/e/k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/e/q;->a:Ln3/y/e/k;

    const/4 v0, 0x2

    iput v0, p1, Ln3/y/e/k;->p:I

    .line 2
    iget-boolean v0, p1, Ln3/y/e/k;->z:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Ln3/y/e/k;->L0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Ln3/y/e/q;->a:Ln3/y/e/k;

    const/4 v0, 0x0

    iput-boolean v0, p1, Ln3/y/e/k;->z:Z

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/e/q;->a:Ln3/y/e/k;

    const/4 v0, 0x3

    iput v0, p1, Ln3/y/e/k;->p:I

    return-void
.end method
