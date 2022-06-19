.class public final Li/c/b0/e/f/e/q0;
.super Li/c/b0/b/p;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/q0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/p<",
        "TT;>;",
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

.field final g:J


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/p;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/q0;->f:Li/c/b0/b/a0;

    .line 3
    iput-wide p2, p0, Li/c/b0/e/f/e/q0;->g:J

    return-void
.end method


# virtual methods
.method public c()Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Li/c/b0/e/f/e/p0;

    iget-object v1, p0, Li/c/b0/e/f/e/q0;->f:Li/c/b0/b/a0;

    iget-wide v2, p0, Li/c/b0/e/f/e/q0;->g:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Li/c/b0/e/f/e/p0;-><init>(Li/c/b0/b/a0;JLjava/lang/Object;Z)V

    invoke-static {v6}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public r(Li/c/b0/b/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/q0;->f:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/e/q0$a;

    iget-wide v2, p0, Li/c/b0/e/f/e/q0;->g:J

    invoke-direct {v1, p1, v2, v3}, Li/c/b0/e/f/e/q0$a;-><init>(Li/c/b0/b/r;J)V

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
