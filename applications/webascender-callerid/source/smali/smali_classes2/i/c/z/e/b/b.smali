.class public final Li/c/z/e/b/b;
.super Li/c/z/e/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/b$e;,
        Li/c/z/e/b/b$f;,
        Li/c/z/e/b/b$c;,
        Li/c/z/e/b/b$g;,
        Li/c/z/e/b/b$d;,
        Li/c/z/e/b/b$b;
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
            "Lo/a/a<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final i:I

.field final j:Li/c/z/j/f;


# direct methods
.method public constructor <init>(Li/c/f;Li/c/y/d;ILi/c/z/j/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/f<",
            "TT;>;",
            "Li/c/y/d<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;I",
            "Li/c/z/j/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/e/b/a;-><init>(Li/c/f;)V

    .line 2
    iput-object p2, p0, Li/c/z/e/b/b;->h:Li/c/y/d;

    .line 3
    iput p3, p0, Li/c/z/e/b/b;->i:I

    .line 4
    iput-object p4, p0, Li/c/z/e/b/b;->j:Li/c/z/j/f;

    return-void
.end method

.method public static K(Lo/a/b;Li/c/y/d;ILi/c/z/j/f;)Lo/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/a/b<",
            "-TR;>;",
            "Li/c/y/d<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;I",
            "Li/c/z/j/f;",
            ")",
            "Lo/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/z/e/b/b$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    .line 2
    new-instance p3, Li/c/z/e/b/b$d;

    invoke-direct {p3, p0, p1, p2}, Li/c/z/e/b/b$d;-><init>(Lo/a/b;Li/c/y/d;I)V

    return-object p3

    .line 3
    :cond_0
    new-instance p3, Li/c/z/e/b/b$c;

    invoke-direct {p3, p0, p1, p2, v0}, Li/c/z/e/b/b$c;-><init>(Lo/a/b;Li/c/y/d;IZ)V

    return-object p3

    .line 4
    :cond_1
    new-instance p3, Li/c/z/e/b/b$c;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Li/c/z/e/b/b$c;-><init>(Lo/a/b;Li/c/y/d;IZ)V

    return-object p3
.end method


# virtual methods
.method protected I(Lo/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/a;->g:Li/c/f;

    iget-object v1, p0, Li/c/z/e/b/b;->h:Li/c/y/d;

    invoke-static {v0, p1, v1}, Li/c/z/e/b/x;->b(Lo/a/a;Lo/a/b;Li/c/y/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/z/e/b/a;->g:Li/c/f;

    iget-object v1, p0, Li/c/z/e/b/b;->h:Li/c/y/d;

    iget v2, p0, Li/c/z/e/b/b;->i:I

    iget-object v3, p0, Li/c/z/e/b/b;->j:Li/c/z/j/f;

    invoke-static {p1, v1, v2, v3}, Li/c/z/e/b/b;->K(Lo/a/b;Li/c/y/d;ILi/c/z/j/f;)Lo/a/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/f;->a(Lo/a/b;)V

    return-void
.end method
