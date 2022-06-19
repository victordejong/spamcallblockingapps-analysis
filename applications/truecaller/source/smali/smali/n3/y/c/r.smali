.class public Ln3/y/c/r;
.super Ln3/y/c/m$k;
.source "SourceFile"


# instance fields
.field public final synthetic f:F

.field public final synthetic g:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;IZF)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/r;->g:Ln3/y/c/m;

    iput p4, p0, Ln3/y/c/r;->f:F

    invoke-direct {p0, p1, p2, p3}, Ln3/y/c/m$k;-><init>(Ln3/y/c/m;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/c/r;->g:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    iget v1, p0, Ln3/y/c/r;->f:F

    .line 2
    iget-object v0, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 3
    invoke-virtual {v0}, Ln3/y/b/a/k0;->n()V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 4
    invoke-static {v1, v2, v3}, Ln3/y/b/a/x0/x;->f(FFF)F

    move-result v1

    .line 5
    iget v2, v0, Ln3/y/b/a/k0;->t:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iput v1, v0, Ln3/y/b/a/k0;->t:F

    .line 7
    invoke-virtual {v0}, Ln3/y/b/a/k0;->j()V

    .line 8
    iget-object v0, v0, Ln3/y/b/a/k0;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/n0/f;

    .line 9
    invoke-interface {v2, v1}, Ln3/y/b/a/n0/f;->j(F)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
