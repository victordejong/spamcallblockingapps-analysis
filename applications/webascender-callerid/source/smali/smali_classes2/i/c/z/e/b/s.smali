.class public final Li/c/z/e/b/s;
.super Li/c/z/e/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/s$a;
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
.field final h:I

.field final i:Z

.field final j:Z

.field final k:Li/c/y/a;


# direct methods
.method public constructor <init>(Li/c/f;IZZLi/c/y/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/f<",
            "TT;>;IZZ",
            "Li/c/y/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/e/b/a;-><init>(Li/c/f;)V

    .line 2
    iput p2, p0, Li/c/z/e/b/s;->h:I

    .line 3
    iput-boolean p3, p0, Li/c/z/e/b/s;->i:Z

    .line 4
    iput-boolean p4, p0, Li/c/z/e/b/s;->j:Z

    .line 5
    iput-object p5, p0, Li/c/z/e/b/s;->k:Li/c/y/a;

    return-void
.end method


# virtual methods
.method protected I(Lo/a/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/a;->g:Li/c/f;

    new-instance v7, Li/c/z/e/b/s$a;

    iget v3, p0, Li/c/z/e/b/s;->h:I

    iget-boolean v4, p0, Li/c/z/e/b/s;->i:Z

    iget-boolean v5, p0, Li/c/z/e/b/s;->j:Z

    iget-object v6, p0, Li/c/z/e/b/s;->k:Li/c/y/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Li/c/z/e/b/s$a;-><init>(Lo/a/b;IZZLi/c/y/a;)V

    invoke-virtual {v0, v7}, Li/c/f;->H(Li/c/i;)V

    return-void
.end method
