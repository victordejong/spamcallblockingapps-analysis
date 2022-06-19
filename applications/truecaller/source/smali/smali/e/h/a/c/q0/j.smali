.class public Le/h/a/c/q0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Le/h/a/c/q0/i$b;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/i$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/j;->a:Le/h/a/c/q0/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/h/a/c/q0/j;->a:Le/h/a/c/q0/i$b;

    iget-object p1, p1, Le/h/a/c/q0/i$b;->a:Le/h/a/c/q0/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le/h/a/c/q0/a;->PA(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
