.class public final Li/c/b0/e/f/b/c;
.super Li/c/b0/b/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/b/c$f;,
        Li/c/b0/e/f/b/c$c;,
        Li/c/b0/e/f/b/c$e;,
        Li/c/b0/e/f/b/c$d;,
        Li/c/b0/e/f/b/c$h;,
        Li/c/b0/e/f/b/c$g;,
        Li/c/b0/e/f/b/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/b/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/b/d;


# direct methods
.method public constructor <init>(Li/c/b0/b/n;Li/c/b0/b/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/n<",
            "TT;>;",
            "Li/c/b0/b/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/l;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/c;->g:Li/c/b0/b/n;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/b/c;->h:Li/c/b0/b/d;

    return-void
.end method


# virtual methods
.method public u(Lo/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/f/b/c$a;->a:[I

    iget-object v1, p0, Li/c/b0/e/f/b/c;->h:Li/c/b0/b/d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Li/c/b0/e/f/b/c$c;

    invoke-static {}, Li/c/b0/b/l;->b()I

    move-result v1

    invoke-direct {v0, p1, v1}, Li/c/b0/e/f/b/c$c;-><init>(Lo/a/b;I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Li/c/b0/e/f/b/c$f;

    invoke-direct {v0, p1}, Li/c/b0/e/f/b/c$f;-><init>(Lo/a/b;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Li/c/b0/e/f/b/c$d;

    invoke-direct {v0, p1}, Li/c/b0/e/f/b/c$d;-><init>(Lo/a/b;)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Li/c/b0/e/f/b/c$e;

    invoke-direct {v0, p1}, Li/c/b0/e/f/b/c$e;-><init>(Lo/a/b;)V

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Li/c/b0/e/f/b/c$g;

    invoke-direct {v0, p1}, Li/c/b0/e/f/b/c$g;-><init>(Lo/a/b;)V

    .line 7
    :goto_0
    invoke-interface {p1, v0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    .line 8
    :try_start_0
    iget-object p1, p0, Li/c/b0/e/f/b/c;->g:Li/c/b0/b/n;

    invoke-interface {p1, v0}, Li/c/b0/b/n;->a(Li/c/b0/b/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {v0, p1}, Li/c/b0/e/f/b/c$b;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
