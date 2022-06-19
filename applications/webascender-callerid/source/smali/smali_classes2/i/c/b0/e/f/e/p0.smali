.class public final Li/c/b0/e/f/e/p0;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/p0$a;
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

.field final h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final i:Z


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;JTT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-wide p2, p0, Li/c/b0/e/f/e/p0;->g:J

    .line 3
    iput-object p4, p0, Li/c/b0/e/f/e/p0;->h:Ljava/lang/Object;

    .line 4
    iput-boolean p5, p0, Li/c/b0/e/f/e/p0;->i:Z

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
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v7, Li/c/b0/e/f/e/p0$a;

    iget-wide v3, p0, Li/c/b0/e/f/e/p0;->g:J

    iget-object v5, p0, Li/c/b0/e/f/e/p0;->h:Ljava/lang/Object;

    iget-boolean v6, p0, Li/c/b0/e/f/e/p0;->i:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/p0$a;-><init>(Li/c/b0/b/c0;JLjava/lang/Object;Z)V

    invoke-interface {v0, v7}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
