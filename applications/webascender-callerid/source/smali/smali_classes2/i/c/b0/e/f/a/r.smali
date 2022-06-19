.class public final Li/c/b0/e/f/a/r;
.super Li/c/b0/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/a/r$a;
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/i;

.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/b0/b/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/i;Li/c/b0/d/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/i;",
            "Li/c/b0/d/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/b0/b/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/r;->f:Li/c/b0/b/i;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/a/r;->g:Li/c/b0/d/o;

    return-void
.end method


# virtual methods
.method protected F(Li/c/b0/b/g;)V
    .locals 2

    .line 1
    new-instance v0, Li/c/b0/e/f/a/r$a;

    iget-object v1, p0, Li/c/b0/e/f/a/r;->g:Li/c/b0/d/o;

    invoke-direct {v0, p1, v1}, Li/c/b0/e/f/a/r$a;-><init>(Li/c/b0/b/g;Li/c/b0/d/o;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/g;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/a/r;->f:Li/c/b0/b/i;

    invoke-interface {p1, v0}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    return-void
.end method
