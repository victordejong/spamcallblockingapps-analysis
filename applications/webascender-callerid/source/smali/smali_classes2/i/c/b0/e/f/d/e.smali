.class public final Li/c/b0/e/f/d/e;
.super Li/c/b0/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/d/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/e;"
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
            "Li/c/b0/b/i;",
            ">;"
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
            "Li/c/b0/b/i;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/d/e;->f:Li/c/b0/b/v;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/d/e;->g:Li/c/b0/d/o;

    .line 4
    iput-boolean p3, p0, Li/c/b0/e/f/d/e;->h:Z

    return-void
.end method


# virtual methods
.method protected F(Li/c/b0/b/g;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/d/e;->f:Li/c/b0/b/v;

    iget-object v1, p0, Li/c/b0/e/f/d/e;->g:Li/c/b0/d/o;

    invoke-static {v0, v1, p1}, Li/c/b0/e/f/d/h;->a(Ljava/lang/Object;Li/c/b0/d/o;Li/c/b0/b/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/d/e;->f:Li/c/b0/b/v;

    new-instance v1, Li/c/b0/e/f/d/e$a;

    iget-object v2, p0, Li/c/b0/e/f/d/e;->g:Li/c/b0/d/o;

    iget-boolean v3, p0, Li/c/b0/e/f/d/e;->h:Z

    invoke-direct {v1, p1, v2, v3}, Li/c/b0/e/f/d/e$a;-><init>(Li/c/b0/b/g;Li/c/b0/d/o;Z)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    :cond_0
    return-void
.end method
