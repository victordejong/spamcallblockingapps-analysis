.class public final Li/c/b0/e/f/e/b4;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/b4$a;,
        Li/c/b0/e/f/e/b4$b;,
        Li/c/b0/e/f/e/b4$c;,
        Li/c/b0/e/f/e/b4$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "TU;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final i:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/v;Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/b/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;",
            "Li/c/b0/b/a0<",
            "TU;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "TV;>;>;",
            "Li/c/b0/b/a0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/b4;->g:Li/c/b0/b/a0;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/b4;->h:Li/c/b0/d/o;

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/e/b4;->i:Li/c/b0/b/a0;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/b4;->i:Li/c/b0/b/a0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Li/c/b0/e/f/e/b4$c;

    iget-object v1, p0, Li/c/b0/e/f/e/b4;->h:Li/c/b0/d/o;

    invoke-direct {v0, p1, v1}, Li/c/b0/e/f/e/b4$c;-><init>(Li/c/b0/b/c0;Li/c/b0/d/o;)V

    .line 3
    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/b4;->g:Li/c/b0/b/a0;

    invoke-virtual {v0, p1}, Li/c/b0/e/f/e/b4$c;->c(Li/c/b0/b/a0;)V

    .line 5
    iget-object p1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    invoke-interface {p1, v0}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Li/c/b0/e/f/e/b4$b;

    iget-object v1, p0, Li/c/b0/e/f/e/b4;->h:Li/c/b0/d/o;

    iget-object v2, p0, Li/c/b0/e/f/e/b4;->i:Li/c/b0/b/a0;

    invoke-direct {v0, p1, v1, v2}, Li/c/b0/e/f/e/b4$b;-><init>(Li/c/b0/b/c0;Li/c/b0/d/o;Li/c/b0/b/a0;)V

    .line 7
    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 8
    iget-object p1, p0, Li/c/b0/e/f/e/b4;->g:Li/c/b0/b/a0;

    invoke-virtual {v0, p1}, Li/c/b0/e/f/e/b4$b;->c(Li/c/b0/b/a0;)V

    .line 9
    iget-object p1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    invoke-interface {p1, v0}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    :goto_0
    return-void
.end method
