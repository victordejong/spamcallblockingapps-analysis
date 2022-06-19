.class public final Li/c/b0/e/f/c/o;
.super Li/c/b0/b/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/c/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/c/b0/b/p<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final f:J

.field final g:Ljava/util/concurrent/TimeUnit;

.field final h:Li/c/b0/b/d0;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/p;-><init>()V

    .line 2
    iput-wide p1, p0, Li/c/b0/e/f/c/o;->f:J

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/c/o;->g:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/c/o;->h:Li/c/b0/b/d0;

    return-void
.end method


# virtual methods
.method protected r(Li/c/b0/b/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/r<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/c/o$a;

    invoke-direct {v0, p1}, Li/c/b0/e/f/c/o$a;-><init>(Li/c/b0/b/r;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/r;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/c/o;->h:Li/c/b0/b/d0;

    iget-wide v1, p0, Li/c/b0/e/f/c/o;->f:J

    iget-object v3, p0, Li/c/b0/e/f/c/o;->g:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Li/c/b0/b/d0;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/e/f/c/o$a;->a(Li/c/b0/c/c;)V

    return-void
.end method
