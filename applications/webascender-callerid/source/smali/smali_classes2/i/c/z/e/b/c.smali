.class public final Li/c/z/e/b/c;
.super Li/c/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/c$f;,
        Li/c/z/e/b/c$c;,
        Li/c/z/e/b/c$e;,
        Li/c/z/e/b/c$d;,
        Li/c/z/e/b/c$h;,
        Li/c/z/e/b/c$g;,
        Li/c/z/e/b/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field final h:Li/c/a;


# direct methods
.method public constructor <init>(Li/c/h;Li/c/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/h<",
            "TT;>;",
            "Li/c/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/f;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/b/c;->g:Li/c/h;

    .line 3
    iput-object p2, p0, Li/c/z/e/b/c;->h:Li/c/a;

    return-void
.end method


# virtual methods
.method public I(Lo/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/z/e/b/c$a;->a:[I

    iget-object v1, p0, Li/c/z/e/b/c;->h:Li/c/a;

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
    new-instance v0, Li/c/z/e/b/c$c;

    invoke-static {}, Li/c/f;->b()I

    move-result v1

    invoke-direct {v0, p1, v1}, Li/c/z/e/b/c$c;-><init>(Lo/a/b;I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Li/c/z/e/b/c$f;

    invoke-direct {v0, p1}, Li/c/z/e/b/c$f;-><init>(Lo/a/b;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Li/c/z/e/b/c$d;

    invoke-direct {v0, p1}, Li/c/z/e/b/c$d;-><init>(Lo/a/b;)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Li/c/z/e/b/c$e;

    invoke-direct {v0, p1}, Li/c/z/e/b/c$e;-><init>(Lo/a/b;)V

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Li/c/z/e/b/c$g;

    invoke-direct {v0, p1}, Li/c/z/e/b/c$g;-><init>(Lo/a/b;)V

    .line 7
    :goto_0
    invoke-interface {p1, v0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    .line 8
    :try_start_0
    iget-object p1, p0, Li/c/z/e/b/c;->g:Li/c/h;

    invoke-interface {p1, v0}, Li/c/h;->a(Li/c/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {v0, p1}, Li/c/z/e/b/c$b;->d(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
