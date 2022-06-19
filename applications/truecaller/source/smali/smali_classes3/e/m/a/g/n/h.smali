.class public Le/m/a/g/n/h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Le/m/a/g/n/i$f;

.field public final synthetic c:Le/m/a/g/n/i;


# direct methods
.method public constructor <init>(Le/m/a/g/n/i;ZLe/m/a/g/n/i$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/n/h;->c:Le/m/a/g/n/i;

    iput-boolean p2, p0, Le/m/a/g/n/h;->a:Z

    iput-object p3, p0, Le/m/a/g/n/h;->b:Le/m/a/g/n/i$f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/m/a/g/n/h;->c:Le/m/a/g/n/i;

    const/4 v0, 0x0

    .line 2
    iput v0, p1, Le/m/a/g/n/i;->u:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Le/m/a/g/n/i;->o:Landroid/animation/Animator;

    .line 4
    iget-object p1, p0, Le/m/a/g/n/h;->b:Le/m/a/g/n/i$f;

    if-eqz p1, :cond_0

    .line 5
    check-cast p1, Le/m/a/g/n/f;

    .line 6
    iget-object v0, p1, Le/m/a/g/n/f;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;

    iget-object p1, p1, Le/m/a/g/n/f;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/g/n/h;->c:Le/m/a/g/n/i;

    iget-object v0, v0, Le/m/a/g/n/i;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Le/m/a/g/n/h;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Le/m/a/g/o/u;->b(IZ)V

    .line 2
    iget-object v0, p0, Le/m/a/g/n/h;->c:Le/m/a/g/n/i;

    const/4 v1, 0x2

    .line 3
    iput v1, v0, Le/m/a/g/n/i;->u:I

    .line 4
    iput-object p1, v0, Le/m/a/g/n/i;->o:Landroid/animation/Animator;

    return-void
.end method
