.class public final Li/c/b0/e/f/a/s;
.super Li/c/b0/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/a/s$a;
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/i;

.field final g:Li/c/b0/b/d0;


# direct methods
.method public constructor <init>(Li/c/b0/b/i;Li/c/b0/b/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/s;->f:Li/c/b0/b/i;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/a/s;->g:Li/c/b0/b/d0;

    return-void
.end method


# virtual methods
.method protected F(Li/c/b0/b/g;)V
    .locals 2

    .line 1
    new-instance v0, Li/c/b0/e/f/a/s$a;

    iget-object v1, p0, Li/c/b0/e/f/a/s;->f:Li/c/b0/b/i;

    invoke-direct {v0, p1, v1}, Li/c/b0/e/f/a/s$a;-><init>(Li/c/b0/b/g;Li/c/b0/b/i;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/g;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/a/s;->g:Li/c/b0/b/d0;

    invoke-virtual {p1, v0}, Li/c/b0/b/d0;->d(Ljava/lang/Runnable;)Li/c/b0/c/c;

    move-result-object p1

    .line 4
    iget-object v0, v0, Li/c/b0/e/f/a/s$a;->g:Li/c/b0/e/a/f;

    invoke-virtual {v0, p1}, Li/c/b0/e/a/f;->a(Li/c/b0/c/c;)Z

    return-void
.end method
