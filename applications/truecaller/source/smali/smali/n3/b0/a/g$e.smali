.class public Ln3/b0/a/g$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/b0/a/g;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$c0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$c0;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/ViewPropertyAnimator;

.field public final synthetic d:Ln3/b0/a/g;


# direct methods
.method public constructor <init>(Ln3/b0/a/g;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b0/a/g$e;->d:Ln3/b0/a/g;

    iput-object p2, p0, Ln3/b0/a/g$e;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    iput-object p3, p0, Ln3/b0/a/g$e;->b:Landroid/view/View;

    iput-object p4, p0, Ln3/b0/a/g$e;->c:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/b0/a/g$e;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/b0/a/g$e;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object p1, p0, Ln3/b0/a/g$e;->d:Ln3/b0/a/g;

    iget-object v0, p0, Ln3/b0/a/g$e;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p1, v0}, Ln3/b0/a/x;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 3
    iget-object p1, p0, Ln3/b0/a/g$e;->d:Ln3/b0/a/g;

    iget-object p1, p1, Ln3/b0/a/g;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Ln3/b0/a/g$e;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Ln3/b0/a/g$e;->d:Ln3/b0/a/g;

    invoke-virtual {p1}, Ln3/b0/a/g;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/b0/a/g$e;->d:Ln3/b0/a/g;

    iget-object v0, p0, Ln3/b0/a/g$e;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p1, v0}, Ln3/b0/a/x;->dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method
