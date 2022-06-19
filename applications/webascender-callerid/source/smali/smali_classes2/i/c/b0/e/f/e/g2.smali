.class public final Li/c/b0/e/f/e/g2;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/g2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/b/d0;

.field final h:Z

.field final i:I


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/b/d0;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/b/d0;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/g2;->g:Li/c/b0/b/d0;

    .line 3
    iput-boolean p3, p0, Li/c/b0/e/f/e/g2;->h:Z

    .line 4
    iput p4, p0, Li/c/b0/e/f/e/g2;->i:I

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/g2;->g:Li/c/b0/b/d0;

    instance-of v1, v0, Li/c/b0/e/h/n;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    invoke-interface {v0, p1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Li/c/b0/b/d0;->b()Li/c/b0/b/d0$c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    new-instance v2, Li/c/b0/e/f/e/g2$a;

    iget-boolean v3, p0, Li/c/b0/e/f/e/g2;->h:Z

    iget v4, p0, Li/c/b0/e/f/e/g2;->i:I

    invoke-direct {v2, p1, v0, v3, v4}, Li/c/b0/e/f/e/g2$a;-><init>(Li/c/b0/b/c0;Li/c/b0/b/d0$c;ZI)V

    invoke-interface {v1, v2}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    :goto_0
    return-void
.end method
