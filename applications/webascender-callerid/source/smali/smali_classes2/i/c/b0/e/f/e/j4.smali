.class public final Li/c/b0/e/f/e/j4;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/j4$a;,
        Li/c/b0/e/f/e/j4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;",
        "Li/c/b0/b/v<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "TB;>;"
        }
    .end annotation
.end field

.field final h:I


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/b/a0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/b/a0<",
            "TB;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/j4;->g:Li/c/b0/b/a0;

    .line 3
    iput p3, p0, Li/c/b0/e/f/e/j4;->h:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/j4$b;

    iget v1, p0, Li/c/b0/e/f/e/j4;->h:I

    invoke-direct {v0, p1, v1}, Li/c/b0/e/f/e/j4$b;-><init>(Li/c/b0/b/c0;I)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/j4;->g:Li/c/b0/b/a0;

    iget-object v1, v0, Li/c/b0/e/f/e/j4$b;->h:Li/c/b0/e/f/e/j4$a;

    invoke-interface {p1, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    invoke-interface {p1, v0}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
