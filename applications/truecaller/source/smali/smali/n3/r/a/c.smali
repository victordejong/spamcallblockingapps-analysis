.class public Ln3/r/a/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Ln3/r/a/u0$d;

.field public final synthetic e:Ln3/r/a/b$b;


# direct methods
.method public constructor <init>(Ln3/r/a/b;Landroid/view/ViewGroup;Landroid/view/View;ZLn3/r/a/u0$d;Ln3/r/a/b$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/r/a/c;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Ln3/r/a/c;->b:Landroid/view/View;

    iput-boolean p4, p0, Ln3/r/a/c;->c:Z

    iput-object p5, p0, Ln3/r/a/c;->d:Ln3/r/a/u0$d;

    iput-object p6, p0, Ln3/r/a/c;->e:Ln3/r/a/b$b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/r/a/c;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Ln3/r/a/c;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 2
    iget-boolean p1, p0, Ln3/r/a/c;->c:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Ln3/r/a/c;->d:Ln3/r/a/u0$d;

    .line 4
    iget-object p1, p1, Ln3/r/a/u0$d;->a:Ln3/r/a/u0$d$c;

    .line 5
    iget-object v0, p0, Ln3/r/a/c;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Ln3/r/a/u0$d$c;->a(Landroid/view/View;)V

    .line 6
    :cond_0
    iget-object p1, p0, Ln3/r/a/c;->e:Ln3/r/a/b$b;

    invoke-virtual {p1}, Ln3/r/a/b$c;->a()V

    return-void
.end method
