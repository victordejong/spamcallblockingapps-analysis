.class public final Li/c/b0/e/f/c/m;
.super Li/c/b0/e/f/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/c/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/c/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/d/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/p<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/t;Li/c/b0/d/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/t<",
            "TT;>;",
            "Li/c/b0/d/p<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/c/a;-><init>(Li/c/b0/b/t;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/c/m;->g:Li/c/b0/d/p;

    return-void
.end method


# virtual methods
.method protected r(Li/c/b0/b/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/a;->f:Li/c/b0/b/t;

    new-instance v1, Li/c/b0/e/f/c/m$a;

    iget-object v2, p0, Li/c/b0/e/f/c/m;->g:Li/c/b0/d/p;

    invoke-direct {v1, p1, v2}, Li/c/b0/e/f/c/m$a;-><init>(Li/c/b0/b/r;Li/c/b0/d/p;)V

    invoke-interface {v0, v1}, Li/c/b0/b/t;->a(Li/c/b0/b/r;)V

    return-void
.end method
