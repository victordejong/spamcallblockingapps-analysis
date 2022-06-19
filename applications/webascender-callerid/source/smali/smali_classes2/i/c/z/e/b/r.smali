.class public final Li/c/z/e/b/r;
.super Li/c/z/e/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/r$b;,
        Li/c/z/e/b/r$c;,
        Li/c/z/e/b/r$a;
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


# instance fields
.field final h:Li/c/r;

.field final i:Z

.field final j:I


# direct methods
.method public constructor <init>(Li/c/f;Li/c/r;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/f<",
            "TT;>;",
            "Li/c/r;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/e/b/a;-><init>(Li/c/f;)V

    .line 2
    iput-object p2, p0, Li/c/z/e/b/r;->h:Li/c/r;

    .line 3
    iput-boolean p3, p0, Li/c/z/e/b/r;->i:Z

    .line 4
    iput p4, p0, Li/c/z/e/b/r;->j:I

    return-void
.end method


# virtual methods
.method public I(Lo/a/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/r;->h:Li/c/r;

    invoke-virtual {v0}, Li/c/r;->a()Li/c/r$b;

    move-result-object v0

    .line 2
    instance-of v1, p1, Li/c/z/c/a;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Li/c/z/e/b/a;->g:Li/c/f;

    new-instance v2, Li/c/z/e/b/r$b;

    check-cast p1, Li/c/z/c/a;

    iget-boolean v3, p0, Li/c/z/e/b/r;->i:Z

    iget v4, p0, Li/c/z/e/b/r;->j:I

    invoke-direct {v2, p1, v0, v3, v4}, Li/c/z/e/b/r$b;-><init>(Li/c/z/c/a;Li/c/r$b;ZI)V

    invoke-virtual {v1, v2}, Li/c/f;->H(Li/c/i;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Li/c/z/e/b/a;->g:Li/c/f;

    new-instance v2, Li/c/z/e/b/r$c;

    iget-boolean v3, p0, Li/c/z/e/b/r;->i:Z

    iget v4, p0, Li/c/z/e/b/r;->j:I

    invoke-direct {v2, p1, v0, v3, v4}, Li/c/z/e/b/r$c;-><init>(Lo/a/b;Li/c/r$b;ZI)V

    invoke-virtual {v1, v2}, Li/c/f;->H(Li/c/i;)V

    :goto_0
    return-void
.end method
