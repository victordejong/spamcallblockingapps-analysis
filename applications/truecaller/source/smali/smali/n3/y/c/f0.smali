.class public Ln3/y/c/f0;
.super Ln3/y/c/m$k;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/f0;->f:Ln3/y/c/m;

    invoke-direct {p0, p1, p2, p3}, Ln3/y/c/m$k;-><init>(Ln3/y/c/m;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/c/f0;->f:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Ln3/y/c/j0;->o:Z

    .line 3
    iget-object v0, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    invoke-virtual {v0, v1}, Ln3/y/b/a/k0;->k(Z)V

    return-void
.end method
