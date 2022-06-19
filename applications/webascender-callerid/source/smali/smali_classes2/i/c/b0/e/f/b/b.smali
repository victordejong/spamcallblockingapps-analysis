.class public final Li/c/b0/e/f/b/b;
.super Li/c/b0/e/f/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/b/b$e;,
        Li/c/b0/e/f/b/b$f;,
        Li/c/b0/e/f/b/b$c;,
        Li/c/b0/e/f/b/b$g;,
        Li/c/b0/e/f/b/b$d;,
        Li/c/b0/e/f/b/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/b/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final h:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final i:I

.field final j:Li/c/b0/e/k/i;


# direct methods
.method public constructor <init>(Li/c/b0/b/l;Li/c/b0/d/o;ILi/c/b0/e/k/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/l<",
            "TT;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;I",
            "Li/c/b0/e/k/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/b/a;-><init>(Li/c/b0/b/l;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/b/b;->h:Li/c/b0/d/o;

    .line 3
    iput p3, p0, Li/c/b0/e/f/b/b;->i:I

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/b/b;->j:Li/c/b0/e/k/i;

    return-void
.end method

.method public static x(Lo/a/b;Li/c/b0/d/o;ILi/c/b0/e/k/i;)Lo/a/b;
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
            "Li/c/b0/d/o<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;I",
            "Li/c/b0/e/k/i;",
            ")",
            "Lo/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/f/b/b$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    .line 2
    new-instance p3, Li/c/b0/e/f/b/b$d;

    invoke-direct {p3, p0, p1, p2}, Li/c/b0/e/f/b/b$d;-><init>(Lo/a/b;Li/c/b0/d/o;I)V

    return-object p3

    .line 3
    :cond_0
    new-instance p3, Li/c/b0/e/f/b/b$c;

    invoke-direct {p3, p0, p1, p2, v0}, Li/c/b0/e/f/b/b$c;-><init>(Lo/a/b;Li/c/b0/d/o;IZ)V

    return-object p3

    .line 4
    :cond_1
    new-instance p3, Li/c/b0/e/f/b/b$c;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Li/c/b0/e/f/b/b$c;-><init>(Lo/a/b;Li/c/b0/d/o;IZ)V

    return-object p3
.end method


# virtual methods
.method protected u(Lo/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/a;->g:Li/c/b0/b/l;

    iget-object v1, p0, Li/c/b0/e/f/b/b;->h:Li/c/b0/d/o;

    invoke-static {v0, p1, v1}, Li/c/b0/e/f/b/q;->b(Lo/a/a;Lo/a/b;Li/c/b0/d/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/b/a;->g:Li/c/b0/b/l;

    iget-object v1, p0, Li/c/b0/e/f/b/b;->h:Li/c/b0/d/o;

    iget v2, p0, Li/c/b0/e/f/b/b;->i:I

    iget-object v3, p0, Li/c/b0/e/f/b/b;->j:Li/c/b0/e/k/i;

    invoke-static {p1, v1, v2, v3}, Li/c/b0/e/f/b/b;->x(Lo/a/b;Li/c/b0/d/o;ILi/c/b0/e/k/i;)Lo/a/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/b/l;->a(Lo/a/b;)V

    return-void
.end method
