.class public Ln3/g0/c$h;
.super Ln3/g0/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/g0/c;->m(Landroid/view/ViewGroup;Ln3/g0/u;Ln3/g0/u;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Ln3/g0/c;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/g0/c$h;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ln3/g0/p;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ln3/g0/c$h;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ln3/g0/m;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/g0/c$h;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ln3/g0/x;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public c(Ln3/g0/m;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/g0/c$h;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ln3/g0/x;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public d(Ln3/g0/m;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/g0/c$h;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/g0/c$h;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ln3/g0/x;->a(Landroid/view/ViewGroup;Z)V

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Ln3/g0/m;->y(Ln3/g0/m$d;)Ln3/g0/m;

    return-void
.end method

.method public e(Ln3/g0/m;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/g0/c$h;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ln3/g0/x;->a(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ln3/g0/c$h;->a:Z

    return-void
.end method
