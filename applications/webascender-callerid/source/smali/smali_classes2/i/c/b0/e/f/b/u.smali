.class public final Li/c/b0/e/f/b/u;
.super Li/c/b0/b/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/b/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/c/b0/b/l<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/b/d0;

.field final h:J

.field final i:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/l;-><init>()V

    .line 2
    iput-wide p1, p0, Li/c/b0/e/f/b/u;->h:J

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/b/u;->i:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/b/u;->g:Li/c/b0/b/d0;

    return-void
.end method


# virtual methods
.method public u(Lo/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/b/u$a;

    invoke-direct {v0, p1}, Li/c/b0/e/f/b/u$a;-><init>(Lo/a/b;)V

    .line 2
    invoke-interface {p1, v0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/b/u;->g:Li/c/b0/b/d0;

    iget-wide v1, p0, Li/c/b0/e/f/b/u;->h:J

    iget-object v3, p0, Li/c/b0/e/f/b/u;->i:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Li/c/b0/b/d0;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Li/c/b0/e/f/b/u$a;->a(Li/c/b0/c/c;)V

    return-void
.end method
