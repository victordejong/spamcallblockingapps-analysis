.class public final Li/c/z/e/e/c;
.super Li/c/z/e/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/e/c$a;
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
.field final g:Li/c/y/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/e<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/p;Li/c/y/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/p<",
            "TT;>;",
            "Li/c/y/e<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/e/e/a;-><init>(Li/c/p;)V

    .line 2
    iput-object p2, p0, Li/c/z/e/e/c;->g:Li/c/y/e;

    return-void
.end method


# virtual methods
.method public k(Li/c/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/q<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/e/a;->f:Li/c/p;

    new-instance v1, Li/c/z/e/e/c$a;

    iget-object v2, p0, Li/c/z/e/e/c;->g:Li/c/y/e;

    invoke-direct {v1, p1, v2}, Li/c/z/e/e/c$a;-><init>(Li/c/q;Li/c/y/e;)V

    invoke-interface {v0, v1}, Li/c/p;->b(Li/c/q;)V

    return-void
.end method
