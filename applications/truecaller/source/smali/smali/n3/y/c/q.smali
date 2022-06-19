.class public Ln3/y/c/q;
.super Ln3/y/c/m$k;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroid/view/Surface;

.field public final synthetic g:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;IZLandroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/q;->g:Ln3/y/c/m;

    iput-object p4, p0, Ln3/y/c/q;->f:Landroid/view/Surface;

    invoke-direct {p0, p1, p2, p3}, Ln3/y/c/m$k;-><init>(Ln3/y/c/m;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/c/q;->g:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    iget-object v1, p0, Ln3/y/c/q;->f:Landroid/view/Surface;

    .line 2
    iget-object v0, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 3
    invoke-virtual {v0}, Ln3/y/b/a/k0;->n()V

    .line 4
    invoke-virtual {v0}, Ln3/y/b/a/k0;->h()V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Ln3/y/b/a/k0;->l(Landroid/view/Surface;Z)V

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 6
    :goto_0
    invoke-virtual {v0, v2, v2}, Ln3/y/b/a/k0;->f(II)V

    return-void
.end method
