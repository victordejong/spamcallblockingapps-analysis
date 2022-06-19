.class public Ln3/y/c/e0;
.super Ln3/y/c/m$k;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/e0;->f:Ln3/y/c/m;

    invoke-direct {p0, p1, p2, p3}, Ln3/y/c/m$k;-><init>(Ln3/y/c/m;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/y/c/e0;->f:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Ln3/y/c/j0;->o:Z

    .line 3
    iget-object v1, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    invoke-virtual {v1}, Ln3/y/b/a/k0;->e()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    const-wide/16 v2, 0x0

    .line 5
    invoke-virtual {v1}, Ln3/y/b/a/k0;->getCurrentWindowIndex()I

    move-result v4

    invoke-virtual {v1, v4, v2, v3}, Ln3/y/b/a/k0;->i(IJ)V

    .line 6
    :cond_0
    iget-object v0, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ln3/y/b/a/k0;->k(Z)V

    return-void
.end method
