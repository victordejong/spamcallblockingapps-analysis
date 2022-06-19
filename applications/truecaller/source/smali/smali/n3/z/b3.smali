.class public final Ln3/z/b3;
.super Ln3/z/q1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/z/q1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final j:Z

.field public final k:Z

.field public final l:Ln3/z/q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/q1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/z/q1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/q1<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "pagedList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ln3/z/q1;->g()Ln3/z/k2;

    move-result-object v2

    .line 2
    iget-object v3, p1, Ln3/z/q1;->f:Lq3/a/i0;

    .line 3
    iget-object v4, p1, Ln3/z/q1;->g:Lq3/a/g0;

    .line 4
    iget-object v0, p1, Ln3/z/q1;->h:Ln3/z/x1;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v5, Ln3/z/x1;

    invoke-direct {v5, v0}, Ln3/z/x1;-><init>(Ln3/z/x1;)V

    .line 7
    iget-object v6, p1, Ln3/z/q1;->i:Ln3/z/q1$c;

    move-object v1, p0

    .line 8
    invoke-direct/range {v1 .. v6}, Ln3/z/q1;-><init>(Ln3/z/k2;Lq3/a/i0;Lq3/a/g0;Ln3/z/x1;Ln3/z/q1$c;)V

    iput-object p1, p0, Ln3/z/b3;->l:Ln3/z/q1;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Ln3/z/b3;->j:Z

    .line 10
    iput-boolean p1, p0, Ln3/z/b3;->k:Z

    return-void
.end method


# virtual methods
.method public e(Ls1/z/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/p<",
            "-",
            "Ln3/z/t0;",
            "-",
            "Ln3/z/r0;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/b3;->l:Ln3/z/q1;

    invoke-virtual {v0}, Ln3/z/q1;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/z/b3;->k:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/z/b3;->j:Z

    return v0
.end method

.method public k(I)V
    .locals 0

    return-void
.end method
