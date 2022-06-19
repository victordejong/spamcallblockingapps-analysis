.class public final Li/c/b0/e/f/e/n;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/n$a;,
        Li/c/b0/e/f/e/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "TB;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/d/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/q<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/b/a0<",
            "TB;>;",
            "Li/c/b0/d/q<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/n;->g:Li/c/b0/b/a0;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/n;->h:Li/c/b0/d/q;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/e/n$b;

    new-instance v2, Li/c/b0/g/f;

    invoke-direct {v2, p1}, Li/c/b0/g/f;-><init>(Li/c/b0/b/c0;)V

    iget-object p1, p0, Li/c/b0/e/f/e/n;->h:Li/c/b0/d/q;

    iget-object v3, p0, Li/c/b0/e/f/e/n;->g:Li/c/b0/b/a0;

    invoke-direct {v1, v2, p1, v3}, Li/c/b0/e/f/e/n$b;-><init>(Li/c/b0/b/c0;Li/c/b0/d/q;Li/c/b0/b/a0;)V

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
