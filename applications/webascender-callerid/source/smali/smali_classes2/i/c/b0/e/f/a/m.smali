.class public final Li/c/b0/e/f/a/m;
.super Li/c/b0/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/a/m$a;
    }
.end annotation


# instance fields
.field final f:[Li/c/b0/b/i;


# direct methods
.method public constructor <init>([Li/c/b0/b/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/m;->f:[Li/c/b0/b/i;

    return-void
.end method


# virtual methods
.method public F(Li/c/b0/b/g;)V
    .locals 6

    .line 1
    new-instance v0, Li/c/b0/c/a;

    invoke-direct {v0}, Li/c/b0/c/a;-><init>()V

    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 3
    new-instance v2, Li/c/b0/e/f/a/m$a;

    iget-object v3, p0, Li/c/b0/e/f/a/m;->f:[Li/c/b0/b/i;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, p1, v1, v0, v3}, Li/c/b0/e/f/a/m$a;-><init>(Li/c/b0/b/g;Ljava/util/concurrent/atomic/AtomicBoolean;Li/c/b0/c/a;I)V

    .line 4
    invoke-interface {p1, v2}, Li/c/b0/b/g;->onSubscribe(Li/c/b0/c/c;)V

    .line 5
    iget-object p1, p0, Li/c/b0/e/f/a/m;->f:[Li/c/b0/b/i;

    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 6
    invoke-virtual {v0}, Li/c/b0/c/a;->isDisposed()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    if-nez v4, :cond_1

    .line 7
    invoke-virtual {v0}, Li/c/b0/c/a;->dispose()V

    .line 8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "A completable source is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, p1}, Li/c/b0/e/f/a/m$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_1
    invoke-interface {v4, v2}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v2}, Li/c/b0/e/f/a/m$a;->onComplete()V

    return-void
.end method
