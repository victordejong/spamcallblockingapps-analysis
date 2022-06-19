.class public final Li/c/b0/e/f/e/k0;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/k0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/d<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/d/o<",
            "-TT;TK;>;",
            "Li/c/b0/d/d<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/k0;->g:Li/c/b0/d/o;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/k0;->h:Li/c/b0/d/d;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/e/k0$a;

    iget-object v2, p0, Li/c/b0/e/f/e/k0;->g:Li/c/b0/d/o;

    iget-object v3, p0, Li/c/b0/e/f/e/k0;->h:Li/c/b0/d/d;

    invoke-direct {v1, p1, v2, v3}, Li/c/b0/e/f/e/k0$a;-><init>(Li/c/b0/b/c0;Li/c/b0/d/o;Li/c/b0/d/d;)V

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
