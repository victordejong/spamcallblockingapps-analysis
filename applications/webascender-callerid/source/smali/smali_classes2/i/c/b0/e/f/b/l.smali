.class public final Li/c/b0/e/f/b/l;
.super Li/c/b0/e/f/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/b/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/b/a<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Li/c/b0/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/b/a;-><init>(Li/c/b0/b/l;)V

    return-void
.end method


# virtual methods
.method protected u(Lo/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/a;->g:Li/c/b0/b/l;

    new-instance v1, Li/c/b0/e/f/b/l$a;

    invoke-direct {v1, p1}, Li/c/b0/e/f/b/l$a;-><init>(Lo/a/b;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/l;->t(Li/c/b0/b/o;)V

    return-void
.end method
