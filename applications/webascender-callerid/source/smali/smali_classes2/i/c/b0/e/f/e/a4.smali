.class public final Li/c/b0/e/f/e/a4;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/a4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;",
        "Li/c/b0/j/b<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/b/d0;

.field final h:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Ljava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p3, p0, Li/c/b0/e/f/e/a4;->g:Li/c/b0/b/d0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/a4;->h:Ljava/util/concurrent/TimeUnit;

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
            "Li/c/b0/j/b<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/e/a4$a;

    iget-object v2, p0, Li/c/b0/e/f/e/a4;->h:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Li/c/b0/e/f/e/a4;->g:Li/c/b0/b/d0;

    invoke-direct {v1, p1, v2, v3}, Li/c/b0/e/f/e/a4$a;-><init>(Li/c/b0/b/c0;Ljava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
