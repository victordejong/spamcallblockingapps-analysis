.class public final Li/c/z/e/b/j;
.super Li/c/z/e/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/z/e/b/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final h:Li/c/y/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/n<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final i:Z

.field final j:I


# direct methods
.method public constructor <init>(Li/c/f;Li/c/y/d;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/f<",
            "TT;>;",
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/n<",
            "+TR;>;>;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/e/b/a;-><init>(Li/c/f;)V

    .line 2
    iput-object p2, p0, Li/c/z/e/b/j;->h:Li/c/y/d;

    .line 3
    iput-boolean p3, p0, Li/c/z/e/b/j;->i:Z

    .line 4
    iput p4, p0, Li/c/z/e/b/j;->j:I

    return-void
.end method


# virtual methods
.method protected I(Lo/a/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/a;->g:Li/c/f;

    new-instance v1, Li/c/z/e/b/j$a;

    iget-object v2, p0, Li/c/z/e/b/j;->h:Li/c/y/d;

    iget-boolean v3, p0, Li/c/z/e/b/j;->i:Z

    iget v4, p0, Li/c/z/e/b/j;->j:I

    invoke-direct {v1, p1, v2, v3, v4}, Li/c/z/e/b/j$a;-><init>(Lo/a/b;Li/c/y/d;ZI)V

    invoke-virtual {v0, v1}, Li/c/f;->H(Li/c/i;)V

    return-void
.end method
