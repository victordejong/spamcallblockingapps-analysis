.class public final Li/c/b0/e/f/e/u3;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/u3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final g:J

.field final h:J

.field final i:Ljava/util/concurrent/TimeUnit;

.field final j:Li/c/b0/b/d0;

.field final k:I

.field final l:Z


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-wide p2, p0, Li/c/b0/e/f/e/u3;->g:J

    .line 3
    iput-wide p4, p0, Li/c/b0/e/f/e/u3;->h:J

    .line 4
    iput-object p6, p0, Li/c/b0/e/f/e/u3;->i:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Li/c/b0/e/f/e/u3;->j:Li/c/b0/b/d0;

    .line 6
    iput p8, p0, Li/c/b0/e/f/e/u3;->k:I

    .line 7
    iput-boolean p9, p0, Li/c/b0/e/f/e/u3;->l:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v11, Li/c/b0/e/f/e/u3$a;

    iget-wide v3, p0, Li/c/b0/e/f/e/u3;->g:J

    iget-wide v5, p0, Li/c/b0/e/f/e/u3;->h:J

    iget-object v7, p0, Li/c/b0/e/f/e/u3;->i:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Li/c/b0/e/f/e/u3;->j:Li/c/b0/b/d0;

    iget v9, p0, Li/c/b0/e/f/e/u3;->k:I

    iget-boolean v10, p0, Li/c/b0/e/f/e/u3;->l:Z

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Li/c/b0/e/f/e/u3$a;-><init>(Li/c/b0/b/c0;JJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;IZ)V

    invoke-interface {v0, v11}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
