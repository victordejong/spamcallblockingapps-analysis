.class public final Li/c/z/e/b/t;
.super Li/c/z/e/b/a;
.source "SourceFile"

# interfaces
.implements Li/c/y/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/z/e/b/a<",
        "TT;TT;>;",
        "Li/c/y/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final h:Li/c/y/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/c<",
            "-TT;>;"
        }
    .end annotation
.end field


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

    .line 2
    iput-object p0, p0, Li/c/z/e/b/t;->h:Li/c/y/c;

    return-void
.end method


# virtual methods
.method protected I(Lo/a/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/a;->g:Li/c/f;

    new-instance v1, Li/c/z/e/b/t$a;

    iget-object v2, p0, Li/c/z/e/b/t;->h:Li/c/y/c;

    invoke-direct {v1, p1, v2}, Li/c/z/e/b/t$a;-><init>(Lo/a/b;Li/c/y/c;)V

    invoke-virtual {v0, v1}, Li/c/f;->H(Li/c/i;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method
