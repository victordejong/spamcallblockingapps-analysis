.class Lf/v/c$j;
.super Lf/v/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/v/c;->o(Landroid/view/ViewGroup;Lf/v/s;Lf/v/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lf/v/c;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lf/v/c$j;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lf/v/n;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lf/v/c$j;->a:Z

    return-void
.end method


# virtual methods
.method public b(Lf/v/m;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/v/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lf/v/x;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public c(Lf/v/m;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/v/c$j;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/v/c$j;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lf/v/x;->c(Landroid/view/ViewGroup;Z)V

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Lf/v/m;->T(Lf/v/m$f;)Lf/v/m;

    return-void
.end method

.method public d(Lf/v/m;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/v/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lf/v/x;->c(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf/v/c$j;->a:Z

    return-void
.end method

.method public e(Lf/v/m;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/v/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lf/v/x;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method
