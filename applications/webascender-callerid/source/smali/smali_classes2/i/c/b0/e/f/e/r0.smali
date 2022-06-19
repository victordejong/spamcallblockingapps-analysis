.class public final Li/c/b0/e/f/e/r0;
.super Li/c/b0/b/e0;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/r0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/e0<",
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

.field final h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;JTT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e0;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/r0;->f:Li/c/b0/b/a0;

    .line 3
    iput-wide p2, p0, Li/c/b0/e/f/e/r0;->g:J

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/e/r0;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public C(Li/c/b0/b/g0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/r0;->f:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/e/r0$a;

    iget-wide v2, p0, Li/c/b0/e/f/e/r0;->g:J

    iget-object v4, p0, Li/c/b0/e/f/e/r0;->h:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3, v4}, Li/c/b0/e/f/e/r0$a;-><init>(Li/c/b0/b/g0;JLjava/lang/Object;)V

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method

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

    iget-object v1, p0, Li/c/b0/e/f/e/r0;->f:Li/c/b0/b/a0;

    iget-wide v2, p0, Li/c/b0/e/f/e/r0;->g:J

    iget-object v4, p0, Li/c/b0/e/f/e/r0;->h:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Li/c/b0/e/f/e/p0;-><init>(Li/c/b0/b/a0;JLjava/lang/Object;Z)V

    invoke-static {v6}, Li/c/b0/h/a;->o(Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method
