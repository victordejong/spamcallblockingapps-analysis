.class public Le/m/a/g/n/g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Z

.field public final synthetic c:Le/m/a/g/n/i$f;

.field public final synthetic d:Le/m/a/g/n/i;


# direct methods
.method public constructor <init>(Le/m/a/g/n/i;ZLe/m/a/g/n/i$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/n/g;->d:Le/m/a/g/n/i;

    iput-boolean p2, p0, Le/m/a/g/n/g;->b:Z

    iput-object p3, p0, Le/m/a/g/n/g;->c:Le/m/a/g/n/i$f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Le/m/a/g/n/g;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/m/a/g/n/g;->d:Le/m/a/g/n/i;

    const/4 v0, 0x0

    .line 2
    iput v0, p1, Le/m/a/g/n/i;->u:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Le/m/a/g/n/i;->o:Landroid/animation/Animator;

    .line 4
    iget-boolean v0, p0, Le/m/a/g/n/g;->a:Z

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p1, Le/m/a/g/n/i;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v0, p0, Le/m/a/g/n/g;->b:Z

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p1, v1, v0}, Le/m/a/g/o/u;->b(IZ)V

    .line 6
    iget-object p1, p0, Le/m/a/g/n/g;->c:Le/m/a/g/n/i$f;

    if-eqz p1, :cond_1

    .line 7
    check-cast p1, Le/m/a/g/n/f;

    .line 8
    iget-object v0, p1, Le/m/a/g/n/f;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;

    iget-object p1, p1, Le/m/a/g/n/f;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;->a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/g/n/g;->d:Le/m/a/g/n/i;

    iget-object v0, v0, Le/m/a/g/n/i;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Le/m/a/g/n/g;->b:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Le/m/a/g/o/u;->b(IZ)V

    .line 2
    iget-object v0, p0, Le/m/a/g/n/g;->d:Le/m/a/g/n/i;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Le/m/a/g/n/i;->u:I

    .line 4
    iput-object p1, v0, Le/m/a/g/n/i;->o:Landroid/animation/Animator;

    .line 5
    iput-boolean v2, p0, Le/m/a/g/n/g;->a:Z

    return-void
.end method
