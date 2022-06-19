.class public final Li/c/z/e/f/d;
.super Li/c/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/f/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/u<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/y/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/d<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/u<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/u;Li/c/y/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/u<",
            "+TT;>;",
            "Li/c/y/d<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/u<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/s;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/f/d;->f:Li/c/u;

    .line 3
    iput-object p2, p0, Li/c/z/e/f/d;->g:Li/c/y/d;

    return-void
.end method


# virtual methods
.method protected j(Li/c/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/f/d;->f:Li/c/u;

    new-instance v1, Li/c/z/e/f/d$a;

    iget-object v2, p0, Li/c/z/e/f/d;->g:Li/c/y/d;

    invoke-direct {v1, p1, v2}, Li/c/z/e/f/d$a;-><init>(Li/c/t;Li/c/y/d;)V

    invoke-interface {v0, v1}, Li/c/u;->c(Li/c/t;)V

    return-void
.end method
