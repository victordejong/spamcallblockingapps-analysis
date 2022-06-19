.class public final Li/c/z/e/b/d;
.super Li/c/z/e/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/d$a;,
        Li/c/z/e/b/d$b;
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
.field final h:Li/c/y/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final i:Li/c/y/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/c<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final j:Li/c/y/a;

.field final k:Li/c/y/a;


# direct methods
.method public constructor <init>(Li/c/f;Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/f<",
            "TT;>;",
            "Li/c/y/c<",
            "-TT;>;",
            "Li/c/y/c<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/y/a;",
            "Li/c/y/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/e/b/a;-><init>(Li/c/f;)V

    .line 2
    iput-object p2, p0, Li/c/z/e/b/d;->h:Li/c/y/c;

    .line 3
    iput-object p3, p0, Li/c/z/e/b/d;->i:Li/c/y/c;

    .line 4
    iput-object p4, p0, Li/c/z/e/b/d;->j:Li/c/y/a;

    .line 5
    iput-object p5, p0, Li/c/z/e/b/d;->k:Li/c/y/a;

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
    instance-of v0, p1, Li/c/z/c/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/z/e/b/a;->g:Li/c/f;

    new-instance v7, Li/c/z/e/b/d$a;

    move-object v2, p1

    check-cast v2, Li/c/z/c/a;

    iget-object v3, p0, Li/c/z/e/b/d;->h:Li/c/y/c;

    iget-object v4, p0, Li/c/z/e/b/d;->i:Li/c/y/c;

    iget-object v5, p0, Li/c/z/e/b/d;->j:Li/c/y/a;

    iget-object v6, p0, Li/c/z/e/b/d;->k:Li/c/y/a;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Li/c/z/e/b/d$a;-><init>(Li/c/z/c/a;Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/a;)V

    invoke-virtual {v0, v7}, Li/c/f;->H(Li/c/i;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/z/e/b/a;->g:Li/c/f;

    new-instance v7, Li/c/z/e/b/d$b;

    iget-object v3, p0, Li/c/z/e/b/d;->h:Li/c/y/c;

    iget-object v4, p0, Li/c/z/e/b/d;->i:Li/c/y/c;

    iget-object v5, p0, Li/c/z/e/b/d;->j:Li/c/y/a;

    iget-object v6, p0, Li/c/z/e/b/d;->k:Li/c/y/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Li/c/z/e/b/d$b;-><init>(Lo/a/b;Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/a;)V

    invoke-virtual {v0, v7}, Li/c/f;->H(Li/c/i;)V

    :goto_0
    return-void
.end method
