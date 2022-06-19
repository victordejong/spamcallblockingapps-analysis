.class public final Li/c/b0/e/f/e/i4;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/i4$b;,
        Li/c/b0/e/f/e/i4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;",
        "Li/c/b0/b/v<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final g:J

.field final h:J

.field final i:I


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;JJI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-wide p2, p0, Li/c/b0/e/f/e/i4;->g:J

    .line 3
    iput-wide p4, p0, Li/c/b0/e/f/e/i4;->h:J

    .line 4
    iput p6, p0, Li/c/b0/e/f/e/i4;->i:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Li/c/b0/e/f/e/i4;->g:J

    iget-wide v2, p0, Li/c/b0/e/f/e/i4;->h:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/e/i4$a;

    iget-wide v2, p0, Li/c/b0/e/f/e/i4;->g:J

    iget v4, p0, Li/c/b0/e/f/e/i4;->i:I

    invoke-direct {v1, p1, v2, v3, v4}, Li/c/b0/e/f/e/i4$a;-><init>(Li/c/b0/b/c0;JI)V

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v8, Li/c/b0/e/f/e/i4$b;

    iget-wide v3, p0, Li/c/b0/e/f/e/i4;->g:J

    iget-wide v5, p0, Li/c/b0/e/f/e/i4;->h:J

    iget v7, p0, Li/c/b0/e/f/e/i4;->i:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Li/c/b0/e/f/e/i4$b;-><init>(Li/c/b0/b/c0;JJI)V

    invoke-interface {v0, v8}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    :goto_0
    return-void
.end method
