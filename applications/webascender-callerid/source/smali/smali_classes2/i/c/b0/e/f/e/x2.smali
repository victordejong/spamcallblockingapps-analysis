.class public final Li/c/b0/e/f/e/x2;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/x2$a;
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
.field final g:Li/c/b0/d/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/p<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final h:J


# direct methods
.method public constructor <init>(Li/c/b0/b/v;JLi/c/b0/d/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;J",
            "Li/c/b0/d/p<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p4, p0, Li/c/b0/e/f/e/x2;->g:Li/c/b0/d/p;

    .line 3
    iput-wide p2, p0, Li/c/b0/e/f/e/x2;->h:J

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v5, Li/c/b0/e/a/f;

    invoke-direct {v5}, Li/c/b0/e/a/f;-><init>()V

    .line 2
    invoke-interface {p1, v5}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    new-instance v7, Li/c/b0/e/f/e/x2$a;

    iget-wide v2, p0, Li/c/b0/e/f/e/x2;->h:J

    iget-object v4, p0, Li/c/b0/e/f/e/x2;->g:Li/c/b0/d/p;

    iget-object v6, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Li/c/b0/e/f/e/x2$a;-><init>(Li/c/b0/b/c0;JLi/c/b0/d/p;Li/c/b0/e/a/f;Li/c/b0/b/a0;)V

    .line 4
    invoke-virtual {v7}, Li/c/b0/e/f/e/x2$a;->a()V

    return-void
.end method
