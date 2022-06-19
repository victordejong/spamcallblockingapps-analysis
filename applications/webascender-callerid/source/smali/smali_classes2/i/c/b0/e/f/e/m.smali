.class public final Li/c/b0/e/f/e/m;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/m$b;,
        Li/c/b0/e/f/e/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/d/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/q<",
            "TU;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "+TOpen;>;"
        }
    .end annotation
.end field

.field final i:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TOpen;+",
            "Li/c/b0/b/a0<",
            "+TClose;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/b/a0<",
            "+TOpen;>;",
            "Li/c/b0/d/o<",
            "-TOpen;+",
            "Li/c/b0/b/a0<",
            "+TClose;>;>;",
            "Li/c/b0/d/q<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/m;->h:Li/c/b0/b/a0;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/m;->i:Li/c/b0/d/o;

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/e/m;->g:Li/c/b0/d/q;

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
    new-instance v0, Li/c/b0/e/f/e/m$a;

    iget-object v1, p0, Li/c/b0/e/f/e/m;->h:Li/c/b0/b/a0;

    iget-object v2, p0, Li/c/b0/e/f/e/m;->i:Li/c/b0/d/o;

    iget-object v3, p0, Li/c/b0/e/f/e/m;->g:Li/c/b0/d/q;

    invoke-direct {v0, p1, v1, v2, v3}, Li/c/b0/e/f/e/m$a;-><init>(Li/c/b0/b/c0;Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/q;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    invoke-interface {p1, v0}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
