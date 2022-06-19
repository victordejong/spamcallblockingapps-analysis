.class public final Li/c/z/e/c/p;
.super Li/c/z/e/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/c/p$a;
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
.field final g:Li/c/y/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/d<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/n<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final h:Z


# direct methods
.method public constructor <init>(Li/c/n;Li/c/y/d;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/n<",
            "TT;>;",
            "Li/c/y/d<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/n<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/e/c/a;-><init>(Li/c/n;)V

    .line 2
    iput-object p2, p0, Li/c/z/e/c/p;->g:Li/c/y/d;

    .line 3
    iput-boolean p3, p0, Li/c/z/e/c/p;->h:Z

    return-void
.end method


# virtual methods
.method protected u(Li/c/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/c/a;->f:Li/c/n;

    new-instance v1, Li/c/z/e/c/p$a;

    iget-object v2, p0, Li/c/z/e/c/p;->g:Li/c/y/d;

    iget-boolean v3, p0, Li/c/z/e/c/p;->h:Z

    invoke-direct {v1, p1, v2, v3}, Li/c/z/e/c/p$a;-><init>(Li/c/l;Li/c/y/d;Z)V

    invoke-interface {v0, v1}, Li/c/n;->a(Li/c/l;)V

    return-void
.end method
