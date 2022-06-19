.class public final Li/c/b0/e/f/e/v;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/v$a;,
        Li/c/b0/e/f/e/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final h:I

.field final i:Li/c/b0/e/k/i;

.field final j:Li/c/b0/b/d0;


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/d/o;ILi/c/b0/e/k/i;Li/c/b0/b/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TU;>;>;I",
            "Li/c/b0/e/k/i;",
            "Li/c/b0/b/d0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/v;->g:Li/c/b0/d/o;

    .line 3
    iput-object p4, p0, Li/c/b0/e/f/e/v;->i:Li/c/b0/e/k/i;

    const/16 p1, 0x8

    .line 4
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Li/c/b0/e/f/e/v;->h:I

    .line 5
    iput-object p5, p0, Li/c/b0/e/f/e/v;->j:Li/c/b0/b/d0;

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/v;->i:Li/c/b0/e/k/i;

    sget-object v1, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Li/c/b0/g/f;

    invoke-direct {v0, p1}, Li/c/b0/g/f;-><init>(Li/c/b0/b/c0;)V

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/e/v$b;

    iget-object v2, p0, Li/c/b0/e/f/e/v;->g:Li/c/b0/d/o;

    iget v3, p0, Li/c/b0/e/f/e/v;->h:I

    iget-object v4, p0, Li/c/b0/e/f/e/v;->j:Li/c/b0/b/d0;

    invoke-virtual {v4}, Li/c/b0/b/d0;->b()Li/c/b0/b/d0$c;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Li/c/b0/e/f/e/v$b;-><init>(Li/c/b0/b/c0;Li/c/b0/d/o;ILi/c/b0/b/d0$c;)V

    invoke-interface {p1, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v7, Li/c/b0/e/f/e/v$a;

    iget-object v3, p0, Li/c/b0/e/f/e/v;->g:Li/c/b0/d/o;

    iget v4, p0, Li/c/b0/e/f/e/v;->h:I

    iget-object v1, p0, Li/c/b0/e/f/e/v;->i:Li/c/b0/e/k/i;

    sget-object v2, Li/c/b0/e/k/i;->END:Li/c/b0/e/k/i;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v1, p0, Li/c/b0/e/f/e/v;->j:Li/c/b0/b/d0;

    invoke-virtual {v1}, Li/c/b0/b/d0;->b()Li/c/b0/b/d0$c;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/v$a;-><init>(Li/c/b0/b/c0;Li/c/b0/d/o;IZLi/c/b0/b/d0$c;)V

    invoke-interface {v0, v7}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    :goto_1
    return-void
.end method
