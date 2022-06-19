.class public final Li/c/b0/e/f/e/g0;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/g0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/b/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Li/c/b0/b/a0<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/g0;->f:Li/c/b0/b/a0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/g0;->g:Li/c/b0/b/a0;

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 2
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
    new-instance v1, Li/c/b0/e/f/e/g0$a;

    invoke-direct {v1, p0, v0, p1}, Li/c/b0/e/f/e/g0$a;-><init>(Li/c/b0/e/f/e/g0;Li/c/b0/e/a/f;Li/c/b0/b/c0;)V

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/g0;->g:Li/c/b0/b/a0;

    invoke-interface {p1, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
