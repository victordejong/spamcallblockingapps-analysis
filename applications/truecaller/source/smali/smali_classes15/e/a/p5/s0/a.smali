.class public final Le/a/p5/s0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public a:Z

.field public final synthetic b:Z

.field public final synthetic c:Ls1/z/b/a;


# direct methods
.method public constructor <init>(ZLs1/z/b/a;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/p5/s0/a;->b:Z

    iput-object p2, p0, Le/a/p5/s0/a;->c:Ls1/z/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Le/a/p5/s0/a;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Le/a/p5/s0/a;->b:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Le/a/p5/s0/a;->a:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/p5/s0/a;->c:Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Le/a/p5/s0/a;->a:Z

    return-void
.end method
