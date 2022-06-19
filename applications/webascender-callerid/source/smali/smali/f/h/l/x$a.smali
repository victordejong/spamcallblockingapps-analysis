.class Lf/h/l/x$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/h/l/x;->h(Landroid/view/View;Lf/h/l/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/h/l/y;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lf/h/l/x;Lf/h/l/y;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lf/h/l/x$a;->a:Lf/h/l/y;

    iput-object p3, p0, Lf/h/l/x$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/h/l/x$a;->a:Lf/h/l/y;

    iget-object v0, p0, Lf/h/l/x$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lf/h/l/y;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/h/l/x$a;->a:Lf/h/l/y;

    iget-object v0, p0, Lf/h/l/x$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lf/h/l/y;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/h/l/x$a;->a:Lf/h/l/y;

    iget-object v0, p0, Lf/h/l/x$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lf/h/l/y;->c(Landroid/view/View;)V

    return-void
.end method
