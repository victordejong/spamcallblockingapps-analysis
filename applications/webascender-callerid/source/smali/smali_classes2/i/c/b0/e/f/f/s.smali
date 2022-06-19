.class public final Li/c/b0/e/f/f/s;
.super Li/c/b0/b/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/f/s$b;,
        Li/c/b0/e/f/f/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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

.field final g:Lo/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a/a<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/i0;Lo/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/i0<",
            "TT;>;",
            "Lo/a/a<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e0;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/f/s;->f:Li/c/b0/b/i0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/f/s;->g:Lo/a/a;

    return-void
.end method


# virtual methods
.method protected C(Li/c/b0/b/g0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/f/s$a;

    invoke-direct {v0, p1}, Li/c/b0/e/f/f/s$a;-><init>(Li/c/b0/b/g0;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/g0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/f/s;->g:Lo/a/a;

    iget-object v1, v0, Li/c/b0/e/f/f/s$a;->g:Li/c/b0/e/f/f/s$b;

    invoke-interface {p1, v1}, Lo/a/a;->a(Lo/a/b;)V

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/f/s;->f:Li/c/b0/b/i0;

    invoke-interface {p1, v0}, Li/c/b0/b/i0;->a(Li/c/b0/b/g0;)V

    return-void
.end method
