.class public final Li/c/b0/e/f/c/s;
.super Li/c/b0/e/f/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/c/a<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Li/c/b0/b/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/t<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/c/a;-><init>(Li/c/b0/b/t;)V

    return-void
.end method


# virtual methods
.method protected r(Li/c/b0/b/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/a;->f:Li/c/b0/b/t;

    invoke-interface {v0, p1}, Li/c/b0/b/t;->a(Li/c/b0/b/r;)V

    return-void
.end method
