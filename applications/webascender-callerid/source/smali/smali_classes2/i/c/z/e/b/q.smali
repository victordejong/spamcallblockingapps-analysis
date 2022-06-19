.class public final Li/c/z/e/b/q;
.super Li/c/z/e/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/q$a;,
        Li/c/z/e/b/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/z/e/b/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final h:Li/c/y/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/d<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/f;Li/c/y/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/f<",
            "TT;>;",
            "Li/c/y/d<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/e/b/a;-><init>(Li/c/f;)V

    .line 2
    iput-object p2, p0, Li/c/z/e/b/q;->h:Li/c/y/d;

    return-void
.end method


# virtual methods
.method protected I(Lo/a/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Li/c/z/c/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/z/e/b/a;->g:Li/c/f;

    new-instance v1, Li/c/z/e/b/q$a;

    check-cast p1, Li/c/z/c/a;

    iget-object v2, p0, Li/c/z/e/b/q;->h:Li/c/y/d;

    invoke-direct {v1, p1, v2}, Li/c/z/e/b/q$a;-><init>(Li/c/z/c/a;Li/c/y/d;)V

    invoke-virtual {v0, v1}, Li/c/f;->H(Li/c/i;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/z/e/b/a;->g:Li/c/f;

    new-instance v1, Li/c/z/e/b/q$b;

    iget-object v2, p0, Li/c/z/e/b/q;->h:Li/c/y/d;

    invoke-direct {v1, p1, v2}, Li/c/z/e/b/q$b;-><init>(Lo/a/b;Li/c/y/d;)V

    invoke-virtual {v0, v1}, Li/c/f;->H(Li/c/i;)V

    :goto_0
    return-void
.end method
