.class public final Li/c/b0/e/f/e/w2;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/w2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/v;Li/c/b0/d/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;",
            "Li/c/b0/d/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/w2;->g:Li/c/b0/d/d;

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/a/f;

    invoke-direct {v0}, Li/c/b0/e/a/f;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    new-instance v1, Li/c/b0/e/f/e/w2$a;

    iget-object v2, p0, Li/c/b0/e/f/e/w2;->g:Li/c/b0/d/d;

    iget-object v3, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    invoke-direct {v1, p1, v2, v0, v3}, Li/c/b0/e/f/e/w2$a;-><init>(Li/c/b0/b/c0;Li/c/b0/d/d;Li/c/b0/e/a/f;Li/c/b0/b/a0;)V

    .line 4
    invoke-virtual {v1}, Li/c/b0/e/f/e/w2$a;->a()V

    return-void
.end method
