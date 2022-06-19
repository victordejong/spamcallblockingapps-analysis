.class public final Li/c/b0/e/f/d/a;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/d/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/i;

.field final g:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/c/b0/b/i;Li/c/b0/b/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/i;",
            "Li/c/b0/b/a0<",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/d/a;->f:Li/c/b0/b/i;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/d/a;->g:Li/c/b0/b/a0;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/d/a$a;

    iget-object v1, p0, Li/c/b0/e/f/d/a;->g:Li/c/b0/b/a0;

    invoke-direct {v0, p1, v1}, Li/c/b0/e/f/d/a$a;-><init>(Li/c/b0/b/c0;Li/c/b0/b/a0;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/d/a;->f:Li/c/b0/b/i;

    invoke-interface {p1, v0}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    return-void
.end method
