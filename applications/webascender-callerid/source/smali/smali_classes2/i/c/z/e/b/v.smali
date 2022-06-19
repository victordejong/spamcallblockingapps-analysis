.class public final Li/c/z/e/b/v;
.super Li/c/z/e/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/z/e/b/a<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Li/c/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/f<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/e/b/a;-><init>(Li/c/f;)V

    return-void
.end method


# virtual methods
.method protected I(Lo/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/a;->g:Li/c/f;

    new-instance v1, Li/c/z/e/b/v$a;

    invoke-direct {v1, p1}, Li/c/z/e/b/v$a;-><init>(Lo/a/b;)V

    invoke-virtual {v0, v1}, Li/c/f;->H(Li/c/i;)V

    return-void
.end method
