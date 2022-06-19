.class public final Li/c/b0/e/f/c/q;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/c/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TT;>;",
        "Ljava/lang/Object<",
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


# direct methods
.method public constructor <init>(Li/c/b0/b/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/t<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/c/q;->f:Li/c/b0/b/t;

    return-void
.end method

.method public static a(Li/c/b0/b/c0;)Li/c/b0/b/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/c0<",
            "-TT;>;)",
            "Li/c/b0/b/r<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/c/q$a;

    invoke-direct {v0, p0}, Li/c/b0/e/f/c/q$a;-><init>(Li/c/b0/b/c0;)V

    return-object v0
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/q;->f:Li/c/b0/b/t;

    invoke-static {p1}, Li/c/b0/e/f/c/q;->a(Li/c/b0/b/c0;)Li/c/b0/b/r;

    move-result-object p1

    invoke-interface {v0, p1}, Li/c/b0/b/t;->a(Li/c/b0/b/r;)V

    return-void
.end method
