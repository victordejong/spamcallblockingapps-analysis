.class public final Li/c/z/e/e/i;
.super Li/c/z/e/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/e/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/z/e/e/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/p<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/p;Li/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/p<",
            "TT;>;",
            "Li/c/p<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/e/e/a;-><init>(Li/c/p;)V

    .line 2
    iput-object p2, p0, Li/c/z/e/e/i;->g:Li/c/p;

    return-void
.end method


# virtual methods
.method public k(Li/c/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/q<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/e/e/i$a;

    iget-object v1, p0, Li/c/z/e/e/i;->g:Li/c/p;

    invoke-direct {v0, p1, v1}, Li/c/z/e/e/i$a;-><init>(Li/c/q;Li/c/p;)V

    .line 2
    iget-object v1, v0, Li/c/z/e/e/i$a;->h:Li/c/z/a/e;

    invoke-interface {p1, v1}, Li/c/q;->a(Li/c/w/b;)V

    .line 3
    iget-object p1, p0, Li/c/z/e/e/a;->f:Li/c/p;

    invoke-interface {p1, v0}, Li/c/p;->b(Li/c/q;)V

    return-void
.end method
