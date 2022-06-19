.class public Le/a/e/d2/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/e/d2/l;


# direct methods
.method public constructor <init>(Le/a/e/d2/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/d2/k;->a:Le/a/e/d2/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/d2/k;->a:Le/a/e/d2/l;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Le/a/e/d2/l;->j:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/d2/k;->a:Le/a/e/d2/l;

    .line 2
    iget-boolean v0, p1, Le/a/e/d2/l;->j:Z

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p1, Le/a/e/d2/l;->h:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
