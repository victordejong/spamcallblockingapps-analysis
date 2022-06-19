.class public final Li/c/b0/e/f/e/m3;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/m3$a;,
        Li/c/b0/e/f/e/m3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
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
            "TT;>;",
            "Li/c/b0/b/a0<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/m3;->g:Li/c/b0/b/a0;

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
    new-instance v0, Li/c/b0/g/f;

    invoke-direct {v0, p1}, Li/c/b0/g/f;-><init>(Li/c/b0/b/c0;)V

    .line 2
    new-instance p1, Li/c/b0/e/a/a;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Li/c/b0/e/a/a;-><init>(I)V

    .line 3
    invoke-virtual {v0, p1}, Li/c/b0/g/f;->onSubscribe(Li/c/b0/c/c;)V

    .line 4
    new-instance v1, Li/c/b0/e/f/e/m3$b;

    invoke-direct {v1, v0, p1}, Li/c/b0/e/f/e/m3$b;-><init>(Li/c/b0/b/c0;Li/c/b0/e/a/a;)V

    .line 5
    iget-object v2, p0, Li/c/b0/e/f/e/m3;->g:Li/c/b0/b/a0;

    new-instance v3, Li/c/b0/e/f/e/m3$a;

    invoke-direct {v3, p0, p1, v1, v0}, Li/c/b0/e/f/e/m3$a;-><init>(Li/c/b0/e/f/e/m3;Li/c/b0/e/a/a;Li/c/b0/e/f/e/m3$b;Li/c/b0/g/f;)V

    invoke-interface {v2, v3}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    .line 6
    iget-object p1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    invoke-interface {p1, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
