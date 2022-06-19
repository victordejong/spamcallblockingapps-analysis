.class public final Li/c/b0/e/f/e/t;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/t$a;,
        Li/c/b0/e/f/e/t$b;
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


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/d/o;ILi/c/b0/e/k/i;)V
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
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/t;->g:Li/c/b0/d/o;

    .line 3
    iput-object p4, p0, Li/c/b0/e/f/e/t;->i:Li/c/b0/e/k/i;

    const/16 p1, 0x8

    .line 4
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Li/c/b0/e/f/e/t;->h:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    iget-object v1, p0, Li/c/b0/e/f/e/t;->g:Li/c/b0/d/o;

    invoke-static {v0, p1, v1}, Li/c/b0/e/f/e/b3;->b(Li/c/b0/b/a0;Li/c/b0/b/c0;Li/c/b0/d/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/t;->i:Li/c/b0/e/k/i;

    sget-object v1, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    if-ne v0, v1, :cond_1

    .line 3
    new-instance v0, Li/c/b0/g/f;

    invoke-direct {v0, p1}, Li/c/b0/g/f;-><init>(Li/c/b0/b/c0;)V

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/e/t$b;

    iget-object v2, p0, Li/c/b0/e/f/e/t;->g:Li/c/b0/d/o;

    iget v3, p0, Li/c/b0/e/f/e/t;->h:I

    invoke-direct {v1, v0, v2, v3}, Li/c/b0/e/f/e/t$b;-><init>(Li/c/b0/b/c0;Li/c/b0/d/o;I)V

    invoke-interface {p1, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/e/t$a;

    iget-object v2, p0, Li/c/b0/e/f/e/t;->g:Li/c/b0/d/o;

    iget v3, p0, Li/c/b0/e/f/e/t;->h:I

    iget-object v4, p0, Li/c/b0/e/f/e/t;->i:Li/c/b0/e/k/i;

    sget-object v5, Li/c/b0/e/k/i;->END:Li/c/b0/e/k/i;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v1, p1, v2, v3, v4}, Li/c/b0/e/f/e/t$a;-><init>(Li/c/b0/b/c0;Li/c/b0/d/o;IZ)V

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    :goto_1
    return-void
.end method
