.class public Le/m/a/g/q/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/m/a/g/q/l;


# direct methods
.method public constructor <init>(Le/m/a/g/q/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/q/j;->a:Le/m/a/g/q/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Le/m/a/g/q/j;->a:Le/m/a/g/q/l;

    .line 3
    iget-object v0, p1, Le/m/a/g/q/l;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Le/m/a/g/q/l;->g:Z

    if-nez p1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/h0/a/a/b;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
