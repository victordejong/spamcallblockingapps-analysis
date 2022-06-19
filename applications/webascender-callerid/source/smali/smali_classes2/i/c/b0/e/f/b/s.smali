.class public final Li/c/b0/e/f/b/s;
.super Li/c/b0/b/p;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/b/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/p<",
        "TT;>;",
        "Li/c/b0/e/c/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/l<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/p;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/s;->f:Li/c/b0/b/l;

    return-void
.end method


# virtual methods
.method public b()Li/c/b0/b/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/l<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/b/r;

    iget-object v1, p0, Li/c/b0/e/f/b/s;->f:Li/c/b0/b/l;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Li/c/b0/e/f/b/r;-><init>(Li/c/b0/b/l;Ljava/lang/Object;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object v0

    return-object v0
.end method

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
    iget-object v0, p0, Li/c/b0/e/f/b/s;->f:Li/c/b0/b/l;

    new-instance v1, Li/c/b0/e/f/b/s$a;

    invoke-direct {v1, p1}, Li/c/b0/e/f/b/s$a;-><init>(Li/c/b0/b/r;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/l;->t(Li/c/b0/b/o;)V

    return-void
.end method
