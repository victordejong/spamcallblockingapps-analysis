.class public final Li/c/z/e/b/i;
.super Li/c/z/e/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/i$a;,
        Li/c/z/e/b/i$b;
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
            "-TT;+",
            "Lo/a/a<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final i:Z

.field final j:I

.field final k:I


# direct methods
.method public constructor <init>(Li/c/f;Li/c/y/d;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/f<",
            "TT;>;",
            "Li/c/y/d<",
            "-TT;+",
            "Lo/a/a<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/e/b/a;-><init>(Li/c/f;)V

    .line 2
    iput-object p2, p0, Li/c/z/e/b/i;->h:Li/c/y/d;

    .line 3
    iput-boolean p3, p0, Li/c/z/e/b/i;->i:Z

    .line 4
    iput p4, p0, Li/c/z/e/b/i;->j:I

    .line 5
    iput p5, p0, Li/c/z/e/b/i;->k:I

    return-void
.end method

.method public static K(Lo/a/b;Li/c/y/d;ZII)Li/c/i;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/a/b<",
            "-TU;>;",
            "Li/c/y/d<",
            "-TT;+",
            "Lo/a/a<",
            "+TU;>;>;ZII)",
            "Li/c/i<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Li/c/z/e/b/i$b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Li/c/z/e/b/i$b;-><init>(Lo/a/b;Li/c/y/d;ZII)V

    return-object v6
.end method


# virtual methods
.method protected I(Lo/a/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/a;->g:Li/c/f;

    iget-object v1, p0, Li/c/z/e/b/i;->h:Li/c/y/d;

    invoke-static {v0, p1, v1}, Li/c/z/e/b/x;->b(Lo/a/a;Lo/a/b;Li/c/y/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/z/e/b/a;->g:Li/c/f;

    iget-object v1, p0, Li/c/z/e/b/i;->h:Li/c/y/d;

    iget-boolean v2, p0, Li/c/z/e/b/i;->i:Z

    iget v3, p0, Li/c/z/e/b/i;->j:I

    iget v4, p0, Li/c/z/e/b/i;->k:I

    invoke-static {p1, v1, v2, v3, v4}, Li/c/z/e/b/i;->K(Lo/a/b;Li/c/y/d;ZII)Li/c/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/f;->H(Li/c/i;)V

    return-void
.end method
