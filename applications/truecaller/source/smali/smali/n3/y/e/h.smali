.class public Ln3/y/e/h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln3/y/e/k;


# direct methods
.method public constructor <init>(Ln3/y/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/h;->a:Ln3/y/e/k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/y/e/h;->a:Ln3/y/e/k;

    iget-object p1, p1, Ln3/y/e/k;->j0:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Ln3/y/e/h;->a:Ln3/y/e/k;

    sget v1, Landroidx/media2/widget/R$id;->ffwd:I

    invoke-virtual {p1, v1}, Ln3/y/e/k;->g(I)Landroid/widget/ImageButton;

    move-result-object p1

    .line 3
    iget-object v1, p0, Ln3/y/e/h;->a:Ln3/y/e/k;

    iget-object v1, v1, Ln3/y/e/k;->d:Ln3/y/e/x;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ln3/y/e/x;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/e/h;->a:Ln3/y/e/k;

    iget-object p1, p1, Ln3/y/e/k;->k0:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
