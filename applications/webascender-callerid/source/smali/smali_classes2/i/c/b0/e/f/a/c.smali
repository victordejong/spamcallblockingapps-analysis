.class public final Li/c/b0/e/f/a/c;
.super Li/c/b0/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/a/c$a;
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/h;


# direct methods
.method public constructor <init>(Li/c/b0/b/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/c;->f:Li/c/b0/b/h;

    return-void
.end method


# virtual methods
.method protected F(Li/c/b0/b/g;)V
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/e/f/a/c$a;

    invoke-direct {v0, p1}, Li/c/b0/e/f/a/c$a;-><init>(Li/c/b0/b/g;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/g;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Li/c/b0/e/f/a/c;->f:Li/c/b0/b/h;

    invoke-interface {p1, v0}, Li/c/b0/b/h;->a(Li/c/b0/b/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Li/c/b0/e/f/a/c$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
