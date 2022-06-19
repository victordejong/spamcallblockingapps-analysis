.class public final Li/c/b0/e/f/c/d;
.super Li/c/b0/b/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/c/d$a;,
        Li/c/b0/e/f/c/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/p<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/t<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/b/i;


# direct methods
.method public constructor <init>(Li/c/b0/b/t;Li/c/b0/b/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/t<",
            "TT;>;",
            "Li/c/b0/b/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/p;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/c/d;->f:Li/c/b0/b/t;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/c/d;->g:Li/c/b0/b/i;

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
    iget-object v0, p0, Li/c/b0/e/f/c/d;->g:Li/c/b0/b/i;

    new-instance v1, Li/c/b0/e/f/c/d$b;

    iget-object v2, p0, Li/c/b0/e/f/c/d;->f:Li/c/b0/b/t;

    invoke-direct {v1, p1, v2}, Li/c/b0/e/f/c/d$b;-><init>(Li/c/b0/b/r;Li/c/b0/b/t;)V

    invoke-interface {v0, v1}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    return-void
.end method
