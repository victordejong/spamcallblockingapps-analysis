.class public final Li/c/z/e/c/l;
.super Li/c/s;
.source "SourceFile"

# interfaces
.implements Li/c/z/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/c/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/s<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object<",
        "TT;>;",
        "Li/c/z/c/c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Li/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/n<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/n<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/s;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/c/l;->f:Li/c/n;

    return-void
.end method


# virtual methods
.method public a()Li/c/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/e/c/k;

    iget-object v1, p0, Li/c/z/e/c/l;->f:Li/c/n;

    invoke-direct {v0, v1}, Li/c/z/e/c/k;-><init>(Li/c/n;)V

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object v0

    return-object v0
.end method

.method protected j(Li/c/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/t<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/c/l;->f:Li/c/n;

    new-instance v1, Li/c/z/e/c/l$a;

    invoke-direct {v1, p1}, Li/c/z/e/c/l$a;-><init>(Li/c/t;)V

    invoke-interface {v0, v1}, Li/c/n;->a(Li/c/l;)V

    return-void
.end method
