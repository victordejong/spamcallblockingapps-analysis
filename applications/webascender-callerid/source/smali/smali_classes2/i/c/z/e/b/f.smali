.class public final Li/c/z/e/b/f;
.super Li/c/j;
.source "SourceFile"

# interfaces
.implements Li/c/z/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/j<",
        "TT;>;",
        "Li/c/z/c/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:J


# direct methods
.method public constructor <init>(Li/c/f;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/f<",
            "TT;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/j;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/b/f;->f:Li/c/f;

    .line 3
    iput-wide p2, p0, Li/c/z/e/b/f;->g:J

    return-void
.end method


# virtual methods
.method public b()Li/c/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Li/c/z/e/b/e;

    iget-object v1, p0, Li/c/z/e/b/f;->f:Li/c/f;

    iget-wide v2, p0, Li/c/z/e/b/f;->g:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Li/c/z/e/b/e;-><init>(Li/c/f;JLjava/lang/Object;Z)V

    invoke-static {v6}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object v0

    return-object v0
.end method

.method protected u(Li/c/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/f;->f:Li/c/f;

    new-instance v1, Li/c/z/e/b/f$a;

    iget-wide v2, p0, Li/c/z/e/b/f;->g:J

    invoke-direct {v1, p1, v2, v3}, Li/c/z/e/b/f$a;-><init>(Li/c/l;J)V

    invoke-virtual {v0, v1}, Li/c/f;->H(Li/c/i;)V

    return-void
.end method
