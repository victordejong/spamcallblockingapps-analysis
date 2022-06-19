.class public final Li/c/b0/e/f/f/c;
.super Li/c/b0/b/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/f/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/e0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/i0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/a;


# direct methods
.method public constructor <init>(Li/c/b0/b/i0;Li/c/b0/d/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/i0<",
            "TT;>;",
            "Li/c/b0/d/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e0;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/f/c;->f:Li/c/b0/b/i0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/f/c;->g:Li/c/b0/d/a;

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
    iget-object v0, p0, Li/c/b0/e/f/f/c;->f:Li/c/b0/b/i0;

    new-instance v1, Li/c/b0/e/f/f/c$a;

    iget-object v2, p0, Li/c/b0/e/f/f/c;->g:Li/c/b0/d/a;

    invoke-direct {v1, p1, v2}, Li/c/b0/e/f/f/c$a;-><init>(Li/c/b0/b/g0;Li/c/b0/d/a;)V

    invoke-interface {v0, v1}, Li/c/b0/b/i0;->a(Li/c/b0/b/g0;)V

    return-void
.end method
