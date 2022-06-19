.class public final Li/c/b0/e/f/e/x0;
.super Li/c/b0/b/e;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/x0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/e;",
        "Li/c/b0/e/c/e<",
        "TT;>;"
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
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/d/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
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
    iput-object p1, p0, Li/c/b0/e/f/e/x0;->f:Li/c/b0/b/a0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/x0;->g:Li/c/b0/d/o;

    .line 4
    iput-boolean p3, p0, Li/c/b0/e/f/e/x0;->h:Z

    return-void
.end method


# virtual methods
.method protected F(Li/c/b0/b/g;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/x0;->f:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/e/x0$a;

    iget-object v2, p0, Li/c/b0/e/f/e/x0;->g:Li/c/b0/d/o;

    iget-boolean v3, p0, Li/c/b0/e/f/e/x0;->h:Z

    invoke-direct {v1, p1, v2, v3}, Li/c/b0/e/f/e/x0$a;-><init>(Li/c/b0/b/g;Li/c/b0/d/o;Z)V

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method

.method public c()Li/c/b0/b/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/w0;

    iget-object v1, p0, Li/c/b0/e/f/e/x0;->f:Li/c/b0/b/a0;

    iget-object v2, p0, Li/c/b0/e/f/e/x0;->g:Li/c/b0/d/o;

    iget-boolean v3, p0, Li/c/b0/e/f/e/x0;->h:Z

    invoke-direct {v0, v1, v2, v3}, Li/c/b0/e/f/e/w0;-><init>(Li/c/b0/b/a0;Li/c/b0/d/o;Z)V

    invoke-static {v0}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method
