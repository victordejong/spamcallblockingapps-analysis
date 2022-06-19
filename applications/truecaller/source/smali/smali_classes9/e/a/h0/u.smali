.class public Le/a/h0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h0/t;


# instance fields
.field public final a:Le/a/h0/m;

.field public final b:Landroid/content/ContentResolver;

.field public final c:Ls1/w/f;

.field public final d:Le/a/a/r0/a;

.field public final e:Le/a/h0/x/h;

.field public final f:Le/a/b0/q/z;

.field public final g:Le/a/b0/q/l0;

.field public final h:Le/a/l/p2/v0;


# direct methods
.method public constructor <init>(Le/a/h0/m;Landroid/content/ContentResolver;Ls1/w/f;Le/a/a/r0/a;Le/a/h0/x/h;Le/a/b0/q/z;Le/a/b0/q/l0;Le/a/l/p2/v0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "filterSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "async"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamSearchTrigger"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restApi"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h0/u;->a:Le/a/h0/m;

    iput-object p2, p0, Le/a/h0/u;->b:Landroid/content/ContentResolver;

    iput-object p3, p0, Le/a/h0/u;->c:Ls1/w/f;

    iput-object p4, p0, Le/a/h0/u;->d:Le/a/a/r0/a;

    iput-object p5, p0, Le/a/h0/u;->e:Le/a/h0/x/h;

    iput-object p6, p0, Le/a/h0/u;->f:Le/a/b0/q/z;

    iput-object p7, p0, Le/a/h0/u;->g:Le/a/b0/q/l0;

    iput-object p8, p0, Le/a/h0/u;->h:Le/a/l/p2/v0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "number"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categories"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h0/u;->f:Le/a/b0/q/z;

    invoke-interface {v0, p2}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    new-instance p2, Lcom/truecaller/filters/sync/TopSpammer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p2

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/truecaller/filters/sync/TopSpammer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;ILs1/z/c/f;)V

    .line 3
    invoke-static {p2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/h0/u;->f(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/h0/u;->e(Ljava/util/Collection;)V

    return-void
.end method

.method public b()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/h0/u;->h:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h0/u;->a:Le/a/h0/m;

    invoke-interface {v0}, Le/a/h0/m;->q()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/h0/u;->a:Le/a/h0/m;

    invoke-interface {v0}, Le/a/h0/m;->l()I

    move-result v0

    .line 2
    :goto_0
    iget-object v1, p0, Le/a/h0/u;->e:Le/a/h0/x/h;

    const-string v2, "caller"

    invoke-interface {v1, v0, v2}, Le/a/h0/x/h;->a(ILjava/lang/String;)Lx3/b;

    move-result-object v1

    .line 3
    invoke-static {v1}, Le/a/n/g0;->p0(Lx3/b;)Lx3/a0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v1}, Lx3/a0;->b()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    if-eqz v1, :cond_3

    .line 5
    iget-object v1, v1, Lx3/a0;->b:Ljava/lang/Object;

    .line 6
    check-cast v1, Le/a/h0/x/f;

    if-eqz v1, :cond_3

    iget-object v1, v1, Le/a/h0/x/f;->a:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 7
    iget-object v3, p0, Le/a/h0/u;->e:Le/a/h0/x/h;

    const-string v5, "sms"

    invoke-interface {v3, v0, v5}, Le/a/h0/x/h;->a(ILjava/lang/String;)Lx3/b;

    move-result-object v0

    .line 8
    invoke-static {v0}, Le/a/n/g0;->p0(Lx3/b;)Lx3/a0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_3

    .line 10
    iget-object v0, v0, Lx3/a0;->b:Ljava/lang/Object;

    .line 11
    check-cast v0, Le/a/h0/x/f;

    if-eqz v0, :cond_3

    iget-object v0, v0, Le/a/h0/x/f;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 12
    invoke-static {v1, v0}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    const-string v1, "$this$toSortedSet"

    .line 13
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v0, v1}, Ls1/u/i;->P0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    .line 15
    invoke-virtual {p0, v1}, Le/a/h0/u;->f(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 16
    iget-object v1, p0, Le/a/h0/u;->b:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/m0/a1$k;->M()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0, v0}, Le/a/h0/u;->e(Ljava/util/Collection;)V

    .line 18
    iget-object v0, p0, Le/a/h0/u;->a:Le/a/h0/m;

    iget-object v1, p0, Le/a/h0/u;->g:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/a/h0/m;->d(J)V

    .line 19
    iget-object v0, p0, Le/a/h0/u;->d:Le/a/a/r0/a;

    invoke-interface {v0}, Le/a/a/r0/a;->a()V

    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method

.method public c(Ljava/lang/String;)Lcom/truecaller/filters/sync/TopSpammer;
    .locals 7

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/h0/u;->b:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/m0/a1$k;->M()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v3, 0x0

    const-string v4, "value = ?"

    const/4 v6, 0x0

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cursor"

    .line 5
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/h0/u;->g(Landroid/database/Cursor;)Lcom/truecaller/filters/sync/TopSpammer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 6
    :cond_0
    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/h0/u;->c:Ls1/w/f;

    new-instance v3, Le/a/h0/u$a;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Le/a/h0/u$a;-><init>(Le/a/h0/u;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final e(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h0/u;->b:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/m0/a1$k;->M()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/content/ContentValues;

    .line 2
    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, [Landroid/content/ContentValues;

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Unexpected # of spammers added, got "

    .line 5
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", added "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 6
    invoke-static {v1, v3}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    return-void
.end method

.method public final f(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/truecaller/filters/sync/TopSpammer;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/truecaller/filters/sync/TopSpammer;

    .line 4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5
    invoke-virtual {v1}, Lcom/truecaller/filters/sync/TopSpammer;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Lcom/truecaller/filters/sync/TopSpammer;->getLabel()Ljava/lang/String;

    move-result-object v3

    const-string v5, "label"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcom/truecaller/filters/sync/TopSpammer;->getReports()Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "count"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    invoke-virtual {v1}, Lcom/truecaller/filters/sync/TopSpammer;->getCategories()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3e

    const-string v7, ","

    .line 9
    invoke-static/range {v6 .. v13}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v6, "spam_categories"

    .line 10
    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/truecaller/filters/sync/TopSpammer;->getVersion()Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "spam_version"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_1

    goto :goto_2

    :cond_1
    move v3, v4

    :goto_2
    new-array v1, v4, [Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final g(Landroid/database/Cursor;)Lcom/truecaller/filters/sync/TopSpammer;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "label"

    .line 1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "value"

    .line 2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "count"

    .line 3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v1, "spam_categories"

    .line 4
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, ","

    .line 5
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static {v1, v2, v7, v7, v6}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 8
    check-cast v6, Ljava/lang/String;

    .line 9
    invoke-static {v6}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 10
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v6, v2

    goto :goto_1

    .line 11
    :cond_2
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    move-object v6, v1

    :goto_1
    const-string v1, "spam_version"

    .line 12
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v7, p1

    goto :goto_3

    :cond_4
    move-object v7, v0

    .line 13
    :goto_3
    new-instance p1, Lcom/truecaller/filters/sync/TopSpammer;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/truecaller/filters/sync/TopSpammer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_4

    :catch_0
    move-exception p1

    const-string v1, "could not read top spammer from db"

    .line 14
    invoke-static {p1, v1}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_4
    return-object v0
.end method
