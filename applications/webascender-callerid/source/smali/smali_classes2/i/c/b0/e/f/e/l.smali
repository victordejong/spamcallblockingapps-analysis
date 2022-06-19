.class public final Li/c/b0/e/f/e/l;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/l$b;,
        Li/c/b0/e/f/e/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Li/c/b0/e/f/e/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final g:I

.field final h:I

.field final i:Li/c/b0/d/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/q<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;IILi/c/b0/d/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;II",
            "Li/c/b0/d/q<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput p2, p0, Li/c/b0/e/f/e/l;->g:I

    .line 3
    iput p3, p0, Li/c/b0/e/f/e/l;->h:I

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/e/l;->i:Li/c/b0/d/q;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Li/c/b0/e/f/e/l;->h:I

    iget v1, p0, Li/c/b0/e/f/e/l;->g:I

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Li/c/b0/e/f/e/l$a;

    iget-object v2, p0, Li/c/b0/e/f/e/l;->i:Li/c/b0/d/q;

    invoke-direct {v0, p1, v1, v2}, Li/c/b0/e/f/e/l$a;-><init>(Li/c/b0/b/c0;ILi/c/b0/d/q;)V

    .line 3
    invoke-virtual {v0}, Li/c/b0/e/f/e/l$a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    invoke-interface {p1, v0}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/e/l$b;

    iget v2, p0, Li/c/b0/e/f/e/l;->g:I

    iget v3, p0, Li/c/b0/e/f/e/l;->h:I

    iget-object v4, p0, Li/c/b0/e/f/e/l;->i:Li/c/b0/d/q;

    invoke-direct {v1, p1, v2, v3, v4}, Li/c/b0/e/f/e/l$b;-><init>(Li/c/b0/b/c0;IILi/c/b0/d/q;)V

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    :cond_1
    :goto_0
    return-void
.end method
