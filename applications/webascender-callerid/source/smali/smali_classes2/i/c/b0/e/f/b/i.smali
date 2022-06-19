.class public final Li/c/b0/e/f/b/i;
.super Li/c/b0/e/f/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/b/i$a;
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


# instance fields
.field final h:I

.field final i:Z

.field final j:Z

.field final k:Li/c/b0/d/a;


# direct methods
.method public constructor <init>(Li/c/b0/b/l;IZZLi/c/b0/d/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/l<",
            "TT;>;IZZ",
            "Li/c/b0/d/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/b/a;-><init>(Li/c/b0/b/l;)V

    .line 2
    iput p2, p0, Li/c/b0/e/f/b/i;->h:I

    .line 3
    iput-boolean p3, p0, Li/c/b0/e/f/b/i;->i:Z

    .line 4
    iput-boolean p4, p0, Li/c/b0/e/f/b/i;->j:Z

    .line 5
    iput-object p5, p0, Li/c/b0/e/f/b/i;->k:Li/c/b0/d/a;

    return-void
.end method


# virtual methods
.method protected u(Lo/a/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/a;->g:Li/c/b0/b/l;

    new-instance v7, Li/c/b0/e/f/b/i$a;

    iget v3, p0, Li/c/b0/e/f/b/i;->h:I

    iget-boolean v4, p0, Li/c/b0/e/f/b/i;->i:Z

    iget-boolean v5, p0, Li/c/b0/e/f/b/i;->j:Z

    iget-object v6, p0, Li/c/b0/e/f/b/i;->k:Li/c/b0/d/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/b/i$a;-><init>(Lo/a/b;IZZLi/c/b0/d/a;)V

    invoke-virtual {v0, v7}, Li/c/b0/b/l;->t(Li/c/b0/b/o;)V

    return-void
.end method
