.class public final Li/c/b0/e/f/c/i;
.super Li/c/b0/b/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/c/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/p<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/i0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/i0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/p;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/c/i;->f:Li/c/b0/b/i0;

    return-void
.end method


# virtual methods
.method protected r(Li/c/b0/b/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/i;->f:Li/c/b0/b/i0;

    new-instance v1, Li/c/b0/e/f/c/i$a;

    invoke-direct {v1, p1}, Li/c/b0/e/f/c/i$a;-><init>(Li/c/b0/b/r;)V

    invoke-interface {v0, v1}, Li/c/b0/b/i0;->a(Li/c/b0/b/g0;)V

    return-void
.end method
