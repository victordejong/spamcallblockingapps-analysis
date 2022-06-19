.class public final Le/a/k3/j/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k3/j/g;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/b0/q/z;

.field public final c:Le/a/k3/j/b;

.field public final d:Ls1/w/f;

.field public final e:Ls1/w/f;

.field public final f:Le/a/k3/d;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/b0/q/z;Le/a/k3/j/b;Ls1/w/f;Ls1/w/f;Le/a/k3/d;)V
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiCoroutineContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutineContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraInfoReaderProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k3/j/h;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/k3/j/h;->b:Le/a/b0/q/z;

    iput-object p3, p0, Le/a/k3/j/h;->c:Le/a/k3/j/b;

    iput-object p4, p0, Le/a/k3/j/h;->d:Ls1/w/f;

    iput-object p5, p0, Le/a/k3/j/h;->e:Ls1/w/f;

    iput-object p6, p0, Le/a/k3/j/h;->f:Le/a/k3/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Integer;Le/a/k3/j/g$a;)Landroid/os/CancellationSignal;
    .locals 11

    const-string v0, "filter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 2
    sget-object v8, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v9, p0, Le/a/k3/j/h;->e:Ls1/w/f;

    new-instance v10, Le/a/k3/j/h$b;

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Le/a/k3/j/h$b;-><init>(Le/a/k3/j/h;Ljava/lang/String;Ljava/lang/Integer;Landroid/os/CancellationSignal;Le/a/k3/j/g$a;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, v9

    move-object v4, v10

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Ls1/k<",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    const-string v1, "filter"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p1}, Le/a/m0/a1$a;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 3
    :goto_0
    iget-object p1, p0, Le/a/k3/j/h;->f:Le/a/k3/d;

    invoke-interface {p1}, Le/a/k3/d;->a()Le/a/k3/c;

    move-result-object p1

    .line 4
    iget-object v1, p0, Le/a/k3/j/h;->a:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 5
    new-instance v1, Le/a/k3/g;

    const-string v2, "it"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p2, p1}, Le/a/k3/g;-><init>(Landroid/database/Cursor;Le/a/k3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {v1}, Le/a/k3/g;->b()Lcom/truecaller/data/entity/Contact;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Le/a/k3/g;->d()Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v3, Ls1/k;

    invoke-direct {v3, p2, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    .line 10
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 11
    :cond_2
    :try_start_2
    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 12
    invoke-static {p1}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 13
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {v1, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    :goto_2
    return-object v0

    :catchall_2
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ls1/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ls1/k<",
            "Lcom/truecaller/data/entity/Contact;",
            "Lcom/truecaller/data/entity/Number;",
            ">;"
        }
    .end annotation

    const-string v0, "numberString"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k3/j/h;->b:Le/a/b0/q/z;

    invoke-interface {v0, p1}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/k3/j/h;->c:Le/a/k3/j/b;

    invoke-virtual {v0, p1}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/truecaller/data/entity/Number;

    const-string v5, "it"

    .line 5
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 6
    :cond_2
    check-cast v1, Lcom/truecaller/data/entity/Number;

    .line 7
    :cond_3
    new-instance p1, Ls1/k;

    invoke-direct {p1, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final synthetic d(Ljava/util/List;Le/a/k3/j/g$a;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ls1/k<",
            "+",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/String;",
            ">;>;",
            "Le/a/k3/j/g$a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k3/j/h;->d:Ls1/w/f;

    new-instance v1, Le/a/k3/j/h$a;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Le/a/k3/j/h$a;-><init>(Le/a/k3/j/g$a;Ljava/util/List;Ls1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
