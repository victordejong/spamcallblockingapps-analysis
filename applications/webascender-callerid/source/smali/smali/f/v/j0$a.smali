.class Lf/v/j0$a;
.super Lf/v/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/v/j0;->n0(Landroid/view/ViewGroup;Lf/v/s;ILf/v/s;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lf/v/j0;


# direct methods
.method constructor <init>(Lf/v/j0;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/v/j0$a;->d:Lf/v/j0;

    iput-object p2, p0, Lf/v/j0$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lf/v/j0$a;->b:Landroid/view/View;

    iput-object p4, p0, Lf/v/j0$a;->c:Landroid/view/View;

    invoke-direct {p0}, Lf/v/n;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lf/v/m;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/v/j0$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Lf/v/x;->a(Landroid/view/ViewGroup;)Lf/v/w;

    move-result-object p1

    iget-object v0, p0, Lf/v/j0$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lf/v/w;->d(Landroid/view/View;)V

    return-void
.end method

.method public c(Lf/v/m;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/v/j0$a;->c:Landroid/view/View;

    sget v1, Lf/v/j;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lf/v/j0$a;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Lf/v/x;->a(Landroid/view/ViewGroup;)Lf/v/w;

    move-result-object v0

    iget-object v1, p0, Lf/v/j0$a;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lf/v/w;->d(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1, p0}, Lf/v/m;->T(Lf/v/m$f;)Lf/v/m;

    return-void
.end method

.method public e(Lf/v/m;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/v/j0$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/v/j0$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Lf/v/x;->a(Landroid/view/ViewGroup;)Lf/v/w;

    move-result-object p1

    iget-object v0, p0, Lf/v/j0$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lf/v/w;->c(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lf/v/j0$a;->d:Lf/v/j0;

    invoke-virtual {p1}, Lf/v/m;->cancel()V

    :goto_0
    return-void
.end method
