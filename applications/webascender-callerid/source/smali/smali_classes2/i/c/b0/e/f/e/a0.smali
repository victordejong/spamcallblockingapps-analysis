.class public final Li/c/b0/e/f/e/a0;
.super Li/c/b0/b/e0;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/a0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/e0<",
        "Ljava/lang/Long;",
        ">;",
        "Li/c/b0/e/c/e<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e0;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/a0;->f:Li/c/b0/b/a0;

    return-void
.end method


# virtual methods
.method public C(Li/c/b0/b/g0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a0;->f:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/e/a0$a;

    invoke-direct {v1, p1}, Li/c/b0/e/f/e/a0$a;-><init>(Li/c/b0/b/g0;)V

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method

.method public c()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/z;

    iget-object v1, p0, Li/c/b0/e/f/e/a0;->f:Li/c/b0/b/a0;

    invoke-direct {v0, v1}, Li/c/b0/e/f/e/z;-><init>(Li/c/b0/b/a0;)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method
