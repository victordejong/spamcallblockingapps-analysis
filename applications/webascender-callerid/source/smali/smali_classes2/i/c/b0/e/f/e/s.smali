.class public final Li/c/b0/e/f/e/s;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/s$a;,
        Li/c/b0/e/f/e/s$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TR;>;"
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

.field final h:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final i:I

.field final j:Z


# direct methods
.method public constructor <init>([Li/c/b0/b/a0;Ljava/lang/Iterable;Li/c/b0/d/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Li/c/b0/b/a0<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Li/c/b0/b/a0<",
            "+TT;>;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/s;->f:[Li/c/b0/b/a0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/s;->g:Ljava/lang/Iterable;

    .line 4
    iput-object p3, p0, Li/c/b0/e/f/e/s;->h:Li/c/b0/d/o;

    .line 5
    iput p4, p0, Li/c/b0/e/f/e/s;->i:I

    .line 6
    iput-boolean p5, p0, Li/c/b0/e/f/e/s;->j:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/s;->f:[Li/c/b0/b/a0;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Li/c/b0/b/a0;

    .line 2
    :try_start_0
    iget-object v1, p0, Li/c/b0/e/f/e/s;->g:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li/c/b0/b/a0;

    .line 3
    array-length v5, v0

    if-ne v3, v5, :cond_0

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    .line 4
    new-array v5, v5, [Li/c/b0/b/a0;

    .line 5
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_0
    add-int/lit8 v5, v3, 0x1

    const-string v6, "The Iterator returned a null ObservableSource"

    .line 6
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Li/c/b0/b/a0;

    aput-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/c0;)V

    return-void

    .line 9
    :cond_1
    array-length v3, v0

    :cond_2
    move v4, v3

    if-nez v4, :cond_3

    .line 10
    invoke-static {p1}, Li/c/b0/e/a/d;->complete(Li/c/b0/b/c0;)V

    return-void

    .line 11
    :cond_3
    new-instance v7, Li/c/b0/e/f/e/s$b;

    iget-object v3, p0, Li/c/b0/e/f/e/s;->h:Li/c/b0/d/o;

    iget v5, p0, Li/c/b0/e/f/e/s;->i:I

    iget-boolean v6, p0, Li/c/b0/e/f/e/s;->j:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/e/s$b;-><init>(Li/c/b0/b/c0;Li/c/b0/d/o;IIZ)V

    .line 12
    invoke-virtual {v7, v0}, Li/c/b0/e/f/e/s$b;->g([Li/c/b0/b/a0;)V

    return-void
.end method
