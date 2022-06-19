.class public final Li/c/b0/e/f/e/n0;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/n0$a;
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
.field final g:Li/c/b0/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final i:Li/c/b0/d/a;

.field final j:Li/c/b0/d/a;


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/d/g<",
            "-TT;>;",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/b0/d/a;",
            "Li/c/b0/d/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/n0;->g:Li/c/b0/d/g;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/n0;->h:Li/c/b0/d/g;

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/e/n0;->i:Li/c/b0/d/a;

    .line 5
    iput-object p5, p0, Li/c/b0/e/f/e/n0;->j:Li/c/b0/d/a;

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

    new-instance v7, Li/c/b0/e/f/e/n0$a;

    iget-object v3, p0, Li/c/b0/e/f/e/n0;->g:Li/c/b0/d/g;

    iget-object v4, p0, Li/c/b0/e/f/e/n0;->h:Li/c/b0/d/g;

    iget-object v5, p0, Li/c/b0/e/f/e/n0;->i:Li/c/b0/d/a;

    iget-object v6, p0, Li/c/b0/e/f/e/n0;->j:Li/c/b0/d/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/n0$a;-><init>(Li/c/b0/b/c0;Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/a;)V

    invoke-interface {v0, v7}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
