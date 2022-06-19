.class public final Li/c/b0/e/f/e/v0;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/v0$a;,
        Li/c/b0/e/f/e/v0$b;
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

.field final h:Z

.field final i:I

.field final j:I


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/d/o;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/v0;->g:Li/c/b0/d/o;

    .line 3
    iput-boolean p3, p0, Li/c/b0/e/f/e/v0;->h:Z

    .line 4
    iput p4, p0, Li/c/b0/e/f/e/v0;->i:I

    .line 5
    iput p5, p0, Li/c/b0/e/f/e/v0;->j:I

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
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    iget-object v1, p0, Li/c/b0/e/f/e/v0;->g:Li/c/b0/d/o;

    invoke-static {v0, p1, v1}, Li/c/b0/e/f/e/b3;->b(Li/c/b0/b/a0;Li/c/b0/b/c0;Li/c/b0/d/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v7, Li/c/b0/e/f/e/v0$b;

    iget-object v3, p0, Li/c/b0/e/f/e/v0;->g:Li/c/b0/d/o;

    iget-boolean v4, p0, Li/c/b0/e/f/e/v0;->h:Z

    iget v5, p0, Li/c/b0/e/f/e/v0;->i:I

    iget v6, p0, Li/c/b0/e/f/e/v0;->j:I

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/v0$b;-><init>(Li/c/b0/b/c0;Li/c/b0/d/o;ZII)V

    invoke-interface {v0, v7}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
