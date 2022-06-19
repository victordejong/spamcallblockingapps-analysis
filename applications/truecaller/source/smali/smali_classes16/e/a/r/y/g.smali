.class public Le/a/r/y/g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Le/a/r/y/h;


# direct methods
.method public constructor <init>(Le/a/r/y/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/r/y/g;->b:Le/a/r/y/h;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Le/a/r/y/g;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Le/a/r/y/g;->a:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/r/y/g;->b:Le/a/r/y/h;

    .line 3
    iget-object p1, p1, Le/a/r/y/h;->i:Landroid/widget/ImageView;

    .line 4
    new-instance v0, Le/a/r/y/a;

    invoke-direct {v0, p0}, Le/a/r/y/a;-><init>(Le/a/r/y/g;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Le/a/r/y/g;->a:Z

    return-void
.end method
