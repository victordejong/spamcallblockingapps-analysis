.class public final Li/c/b0/e/f/e/h;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/h$b;,
        Li/c/b0/e/f/e/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:[Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Li/c/b0/b/a0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Li/c/b0/b/a0;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/h;->f:[Li/c/b0/b/a0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/h;->g:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/h;->f:[Li/c/b0/b/a0;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    new-array v0, v0, [Li/c/b0/b/a0;

    .line 2
    :try_start_0
    iget-object v2, p0, Li/c/b0/e/f/e/h;->g:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li/c/b0/b/a0;

    if-nez v4, :cond_0

    .line 3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "One of the sources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return-void

    .line 4
    :cond_0
    array-length v5, v0

    if-ne v3, v5, :cond_1

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    .line 5
    new-array v5, v5, [Li/c/b0/b/a0;

    .line 6
    invoke-static {v0, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 7
    aput-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return-void

    .line 10
    :cond_2
    array-length v3, v0

    :cond_3
    if-nez v3, :cond_4

    .line 11
    invoke-static {p1}, Li/c/b0/e/a/d;->complete(Li/c/b0/b/c0;)V

    return-void

    :cond_4
    const/4 v2, 0x1

    if-ne v3, v2, :cond_5

    .line 12
    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void

    .line 13
    :cond_5
    new-instance v1, Li/c/b0/e/f/e/h$a;

    invoke-direct {v1, p1, v3}, Li/c/b0/e/f/e/h$a;-><init>(Li/c/b0/b/c0;I)V

    .line 14
    invoke-virtual {v1, v0}, Li/c/b0/e/f/e/h$a;->a([Li/c/b0/b/a0;)V

    return-void
.end method
