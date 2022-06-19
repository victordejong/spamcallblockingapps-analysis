.class public final Li/c/b0/e/f/e/s2;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/s2$a;
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


# direct methods
.method public constructor <init>(Li/c/b0/b/v;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-wide p2, p0, Li/c/b0/e/f/e/s2;->g:J

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v4, Li/c/b0/e/a/f;

    invoke-direct {v4}, Li/c/b0/e/a/f;-><init>()V

    .line 2
    invoke-interface {p1, v4}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    new-instance v6, Li/c/b0/e/f/e/s2$a;

    iget-wide v0, p0, Li/c/b0/e/f/e/s2;->g:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    move-wide v2, v0

    :cond_0
    iget-object v5, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Li/c/b0/e/f/e/s2$a;-><init>(Li/c/b0/b/c0;JLi/c/b0/e/a/f;Li/c/b0/b/a0;)V

    .line 4
    invoke-virtual {v6}, Li/c/b0/e/f/e/s2$a;->a()V

    return-void
.end method
