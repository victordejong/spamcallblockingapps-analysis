.class public final Le/a/h/b/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/w;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "FEATURE_CALL_LOG_PERFORMANCE"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/h/b/x;->i:Z

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/h/b/x;->a:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/h/b/x;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget v0, p0, Le/a/h/b/x;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/a/h/b/x;->g:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Le/a/h/b/x;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/a/h/b/x;->c:I

    goto :goto_0

    :cond_0
    iget p1, p0, Le/a/h/b/x;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/a/h/b/x;->d:I

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Le/a/h/b/x;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/a/h/b/x;->e:I

    goto :goto_0

    :cond_0
    iget p1, p0, Le/a/h/b/x;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/a/h/b/x;->f:I

    :goto_0
    return-void
.end method

.method public d(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/x;->a:Ljava/util/List;

    new-instance v1, Le/a/h/b/x$b;

    invoke-direct {v1, p0}, Le/a/h/b/x$b;-><init>(Le/a/h/b/x;)V

    invoke-virtual {p0, v0, v1}, Le/a/h/b/x;->h(Ljava/util/List;Ls1/z/b/q;)V

    .line 2
    iget-object v0, p0, Le/a/h/b/x;->a:Ljava/util/List;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(IIIZ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Le/a/h/b/x;->c:I

    .line 2
    iput p1, p0, Le/a/h/b/x;->d:I

    .line 3
    iput p1, p0, Le/a/h/b/x;->e:I

    .line 4
    iput p1, p0, Le/a/h/b/x;->f:I

    .line 5
    iput p1, p0, Le/a/h/b/x;->g:I

    .line 6
    iput p1, p0, Le/a/h/b/x;->h:I

    return-void
.end method

.method public f(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/x;->b:Ljava/util/List;

    new-instance v1, Le/a/h/b/x$a;

    invoke-direct {v1, p0}, Le/a/h/b/x$a;-><init>(Le/a/h/b/x;)V

    invoke-virtual {p0, v0, v1}, Le/a/h/b/x;->h(Ljava/util/List;Ls1/z/b/q;)V

    .line 2
    iget-object v0, p0, Le/a/h/b/x;->b:Ljava/util/List;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget v0, p0, Le/a/h/b/x;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/a/h/b/x;->h:I

    return-void
.end method

.method public final h(Ljava/util/List;Ls1/z/b/q;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/z/b/q<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Double;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    const-string v0, "$this$average"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    if-ltz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ls1/u/i;->M0()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    if-nez v3, :cond_2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1

    :cond_2
    int-to-double v3, v3

    div-double v0, v1, v3

    .line 5
    :goto_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    move-wide v3, v5

    goto :goto_2

    .line 6
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_5

    move-wide v5, v7

    goto :goto_3

    .line 7
    :cond_6
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p2, v2, v3, v0}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_4

    .line 9
    :cond_7
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 10
    :cond_8
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_9
    :goto_4
    return-void
.end method
