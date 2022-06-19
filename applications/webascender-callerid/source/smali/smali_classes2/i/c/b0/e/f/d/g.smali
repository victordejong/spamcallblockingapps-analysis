.class public final Li/c/b0/e/f/d/g;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/d/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final h:Z


# direct methods
.method public constructor <init>(Li/c/b0/b/v;Li/c/b0/d/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "TT;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/i0<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/d/g;->f:Li/c/b0/b/v;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/d/g;->g:Li/c/b0/d/o;

    .line 4
    iput-boolean p3, p0, Li/c/b0/e/f/d/g;->h:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/g;->f:Li/c/b0/b/v;

    iget-object v1, p0, Li/c/b0/e/f/d/g;->g:Li/c/b0/d/o;

    invoke-static {v0, v1, p1}, Li/c/b0/e/f/d/h;->c(Ljava/lang/Object;Li/c/b0/d/o;Li/c/b0/b/c0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/d/g;->f:Li/c/b0/b/v;

    new-instance v1, Li/c/b0/e/f/d/g$a;

    iget-object v2, p0, Li/c/b0/e/f/d/g;->g:Li/c/b0/d/o;

    iget-boolean v3, p0, Li/c/b0/e/f/d/g;->h:Z

    invoke-direct {v1, p1, v2, v3}, Li/c/b0/e/f/d/g$a;-><init>(Li/c/b0/b/c0;Li/c/b0/d/o;Z)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    :cond_0
    return-void
.end method
