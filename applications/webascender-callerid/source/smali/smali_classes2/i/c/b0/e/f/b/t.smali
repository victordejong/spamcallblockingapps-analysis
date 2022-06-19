.class public final Li/c/b0/e/f/b/t;
.super Li/c/b0/b/e0;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/b/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/e0<",
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

.field final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/l;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/l<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e0;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/t;->f:Li/c/b0/b/l;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/b/t;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected C(Li/c/b0/b/g0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/t;->f:Li/c/b0/b/l;

    new-instance v1, Li/c/b0/e/f/b/t$a;

    iget-object v2, p0, Li/c/b0/e/f/b/t;->g:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Li/c/b0/e/f/b/t$a;-><init>(Li/c/b0/b/g0;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/l;->t(Li/c/b0/b/o;)V

    return-void
.end method

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

    iget-object v1, p0, Li/c/b0/e/f/b/t;->f:Li/c/b0/b/l;

    iget-object v2, p0, Li/c/b0/e/f/b/t;->g:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Li/c/b0/e/f/b/r;-><init>(Li/c/b0/b/l;Ljava/lang/Object;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object v0

    return-object v0
.end method
