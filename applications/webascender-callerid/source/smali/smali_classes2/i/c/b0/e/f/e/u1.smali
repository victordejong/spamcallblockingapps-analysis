.class public final Li/c/b0/e/f/e/u1;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/u1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftEnd:Ljava/lang/Object;",
        "TRightEnd:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT",
        "Left;",
        "TR;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "+TTRight;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT",
            "Left;",
            "+",
            "Li/c/b0/b/a0<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field final i:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TTRight;+",
            "Li/c/b0/b/a0<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field final j:Li/c/b0/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/c<",
            "-TT",
            "Left;",
            "-TTRight;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT",
            "Left;",
            ">;",
            "Li/c/b0/b/a0<",
            "+TTRight;>;",
            "Li/c/b0/d/o<",
            "-TT",
            "Left;",
            "+",
            "Li/c/b0/b/a0<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Li/c/b0/d/o<",
            "-TTRight;+",
            "Li/c/b0/b/a0<",
            "TTRightEnd;>;>;",
            "Li/c/b0/d/c<",
            "-TT",
            "Left;",
            "-TTRight;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/u1;->g:Li/c/b0/b/a0;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/u1;->h:Li/c/b0/d/o;

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/e/u1;->i:Li/c/b0/d/o;

    .line 5
    iput-object p5, p0, Li/c/b0/e/f/e/u1;->j:Li/c/b0/d/c;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/u1$a;

    iget-object v1, p0, Li/c/b0/e/f/e/u1;->h:Li/c/b0/d/o;

    iget-object v2, p0, Li/c/b0/e/f/e/u1;->i:Li/c/b0/d/o;

    iget-object v3, p0, Li/c/b0/e/f/e/u1;->j:Li/c/b0/d/c;

    invoke-direct {v0, p1, v1, v2, v3}, Li/c/b0/e/f/e/u1$a;-><init>(Li/c/b0/b/c0;Li/c/b0/d/o;Li/c/b0/d/o;Li/c/b0/d/c;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    new-instance p1, Li/c/b0/e/f/e/n1$d;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Li/c/b0/e/f/e/n1$d;-><init>(Li/c/b0/e/f/e/n1$b;Z)V

    .line 4
    iget-object v1, v0, Li/c/b0/e/f/e/u1$a;->h:Li/c/b0/c/a;

    invoke-virtual {v1, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 5
    new-instance v1, Li/c/b0/e/f/e/n1$d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Li/c/b0/e/f/e/n1$d;-><init>(Li/c/b0/e/f/e/n1$b;Z)V

    .line 6
    iget-object v0, v0, Li/c/b0/e/f/e/u1$a;->h:Li/c/b0/c/a;

    invoke-virtual {v0, v1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 7
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    invoke-interface {v0, p1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    .line 8
    iget-object p1, p0, Li/c/b0/e/f/e/u1;->g:Li/c/b0/b/a0;

    invoke-interface {p1, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
