.class public final Li/c/b0/e/f/e/d4;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/d4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/c/b0/b/v<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/d0;

.field final g:J

.field final h:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-wide p1, p0, Li/c/b0/e/f/e/d4;->g:J

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/d4;->h:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/e/d4;->f:Li/c/b0/b/d0;

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/d4$a;

    invoke-direct {v0, p1}, Li/c/b0/e/f/e/d4$a;-><init>(Li/c/b0/b/c0;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/d4;->f:Li/c/b0/b/d0;

    iget-wide v1, p0, Li/c/b0/e/f/e/d4;->g:J

    iget-object v3, p0, Li/c/b0/e/f/e/d4;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Li/c/b0/b/d0;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Li/c/b0/e/f/e/d4$a;->a(Li/c/b0/c/c;)V

    return-void
.end method
