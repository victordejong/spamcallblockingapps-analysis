.class public final Le/a/h/b/c$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/c$c;-><init>(Le/a/h/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/c$c;


# direct methods
.method public constructor <init>(Le/a/h/b/c$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/h/b/c$c$b;->a:Le/a/h/b/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/h/b/c$c$b;->a:Le/a/h/b/c$c;

    iget-object p1, p1, Le/a/h/b/c$c;->g:Le/a/h/b/c;

    .line 2
    iget-object p1, p1, Le/a/h/b/c;->b:Landroid/view/ViewGroup;

    .line 3
    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Le/a/h/b/c$c$b;->a:Le/a/h/b/c$c;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Le/a/h/b/c$c;->b:Z

    .line 6
    iget-object p1, p1, Le/a/h/b/c$c;->g:Le/a/h/b/c;

    .line 7
    iget-object p1, p1, Le/a/h/b/c;->s:Le/a/h/b/j0$a;

    .line 8
    invoke-interface {p1}, Le/a/h/b/j0$a;->Ed()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/h/b/c$c$b;->a:Le/a/h/b/c$c;

    iget-object p1, p1, Le/a/h/b/c$c;->g:Le/a/h/b/c;

    .line 2
    iget-object p1, p1, Le/a/h/b/c;->s:Le/a/h/b/j0$a;

    .line 3
    invoke-interface {p1}, Le/a/h/b/j0$a;->I7()V

    return-void
.end method
