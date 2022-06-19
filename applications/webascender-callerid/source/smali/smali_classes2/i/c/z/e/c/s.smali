.class public final Li/c/z/e/c/s;
.super Li/c/z/e/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/c/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/z/e/c/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/n<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/n;Li/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/n<",
            "TT;>;",
            "Li/c/n<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/e/c/a;-><init>(Li/c/n;)V

    .line 2
    iput-object p2, p0, Li/c/z/e/c/s;->g:Li/c/n;

    return-void
.end method


# virtual methods
.method protected u(Li/c/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/c/a;->f:Li/c/n;

    new-instance v1, Li/c/z/e/c/s$a;

    iget-object v2, p0, Li/c/z/e/c/s;->g:Li/c/n;

    invoke-direct {v1, p1, v2}, Li/c/z/e/c/s$a;-><init>(Li/c/l;Li/c/n;)V

    invoke-interface {v0, v1}, Li/c/n;->a(Li/c/l;)V

    return-void
.end method
