.class public final Li/c/b0/e/f/e/n4;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/n4$b;,
        Li/c/b0/e/f/e/n4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/d/c;Li/c/b0/b/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/d/c<",
            "-TT;-TU;+TR;>;",
            "Li/c/b0/b/a0<",
            "+TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/n4;->g:Li/c/b0/d/c;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/n4;->h:Li/c/b0/b/a0;

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/g/f;

    invoke-direct {v0, p1}, Li/c/b0/g/f;-><init>(Li/c/b0/b/c0;)V

    .line 2
    new-instance p1, Li/c/b0/e/f/e/n4$a;

    iget-object v1, p0, Li/c/b0/e/f/e/n4;->g:Li/c/b0/d/c;

    invoke-direct {p1, v0, v1}, Li/c/b0/e/f/e/n4$a;-><init>(Li/c/b0/b/c0;Li/c/b0/d/c;)V

    .line 3
    invoke-virtual {v0, p1}, Li/c/b0/g/f;->onSubscribe(Li/c/b0/c/c;)V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/n4;->h:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/e/n4$b;

    invoke-direct {v1, p0, p1}, Li/c/b0/e/f/e/n4$b;-><init>(Li/c/b0/e/f/e/n4;Li/c/b0/e/f/e/n4$a;)V

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    invoke-interface {v0, p1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
