.class public final Li/c/b0/e/f/b/j;
.super Li/c/b0/e/f/b/a;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/b/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/b/a<",
        "TT;TT;>;",
        "Li/c/b0/d/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final h:Li/c/b0/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/g<",
            "-TT;>;"
        }
    .end annotation
.end field


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

    .line 2
    iput-object p0, p0, Li/c/b0/e/f/b/j;->h:Li/c/b0/d/g;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected u(Lo/a/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/a;->g:Li/c/b0/b/l;

    new-instance v1, Li/c/b0/e/f/b/j$a;

    iget-object v2, p0, Li/c/b0/e/f/b/j;->h:Li/c/b0/d/g;

    invoke-direct {v1, p1, v2}, Li/c/b0/e/f/b/j$a;-><init>(Lo/a/b;Li/c/b0/d/g;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/l;->t(Li/c/b0/b/o;)V

    return-void
.end method
