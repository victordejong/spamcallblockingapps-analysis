.class public final Li/c/b0/e/f/e/o0;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
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
.field private final g:Li/c/b0/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/g<",
            "-",
            "Li/c/b0/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Li/c/b0/d/a;


# direct methods
.method public constructor <init>(Li/c/b0/b/v;Li/c/b0/d/g;Li/c/b0/d/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;",
            "Li/c/b0/d/g<",
            "-",
            "Li/c/b0/c/c;",
            ">;",
            "Li/c/b0/d/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/o0;->g:Li/c/b0/d/g;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/o0;->h:Li/c/b0/d/a;

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

    new-instance v1, Li/c/b0/e/e/l;

    iget-object v2, p0, Li/c/b0/e/f/e/o0;->g:Li/c/b0/d/g;

    iget-object v3, p0, Li/c/b0/e/f/e/o0;->h:Li/c/b0/d/a;

    invoke-direct {v1, p1, v2, v3}, Li/c/b0/e/e/l;-><init>(Li/c/b0/b/c0;Li/c/b0/d/g;Li/c/b0/d/a;)V

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
