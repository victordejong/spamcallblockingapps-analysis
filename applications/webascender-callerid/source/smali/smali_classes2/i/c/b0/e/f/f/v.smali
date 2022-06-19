.class public final Li/c/b0/e/f/f/v;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/f/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/i0<",
            "+TT;>;"
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
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/f/v;->f:Li/c/b0/b/i0;

    return-void
.end method

.method public static a(Li/c/b0/b/c0;)Li/c/b0/b/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/c0<",
            "-TT;>;)",
            "Li/c/b0/b/g0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/f/v$a;

    invoke-direct {v0, p0}, Li/c/b0/e/f/f/v$a;-><init>(Li/c/b0/b/c0;)V

    return-object v0
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/f/v;->f:Li/c/b0/b/i0;

    invoke-static {p1}, Li/c/b0/e/f/f/v;->a(Li/c/b0/b/c0;)Li/c/b0/b/g0;

    move-result-object p1

    invoke-interface {v0, p1}, Li/c/b0/b/i0;->a(Li/c/b0/b/g0;)V

    return-void
.end method
