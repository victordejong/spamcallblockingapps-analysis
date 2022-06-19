.class public final Le/a/y4/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Lcom/truecaller/service/contact/RefreshContactIndexingService$a;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/truecaller/service/contact/RefreshContactIndexingService$a;)V
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceLauncher"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y4/f/b;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/y4/f/b;->b:Lcom/truecaller/service/contact/RefreshContactIndexingService$a;

    return-void
.end method


# virtual methods
.method public final a([J)V
    .locals 14

    const-string v0, "aggregatedContactIds"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/y4/f/c;

    const/4 v1, 0x2

    new-array v1, v1, [Le/a/y4/f/f;

    .line 2
    sget-object v2, Le/a/y4/f/d;->a:Le/a/y4/f/d;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    sget-object v2, Le/a/y4/f/a;->a:Le/a/y4/f/a;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 4
    invoke-direct {v0, v1}, Le/a/y4/f/c;-><init>([Le/a/y4/f/f;)V

    .line 5
    invoke-static {}, Le/a/m0/a1$e;->a()Landroid/net/Uri;

    move-result-object v1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/16 v2, 0x64

    .line 7
    invoke-static {p1, v2}, Le/q/f/a/d/a;->Z2([JI)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "("

    const-string v6, ")"

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x39

    move-object v8, v2

    .line 8
    invoke-static/range {v3 .. v10}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aggregated_contact_id IN "

    .line 9
    invoke-static {v4, v3}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id IN "

    .line 10
    invoke-static {v5, v3}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 12
    iget-object v3, p0, Le/a/y4/f/b;->a:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " items, took: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms\ndeleteWhere = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    iget-object v8, p0, Le/a/y4/f/b;->a:Landroid/content/ContentResolver;

    .line 17
    invoke-static {}, Le/a/m0/a1$a;->d()Landroid/net/Uri;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v2

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 18
    sget-object v3, Le/a/y4/f/b$b;->b:Le/a/y4/f/b$b;

    .line 19
    sget-object v4, Le/a/y4/f/b$c;->b:Le/a/y4/f/b$c;

    .line 20
    invoke-static {v2, v3, v4}, Le/a/e/a2;->M(Landroid/database/Cursor;Ls1/z/b/l;Ls1/z/b/p;)Ljava/util/List;

    move-result-object v2

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 23
    invoke-static {v2}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v2

    .line 24
    sget-object v3, Le/a/y4/f/b$d;->b:Le/a/y4/f/b$d;

    const-string v4, "$this$distinctBy"

    .line 25
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "selector"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v4, Ls1/e0/c;

    invoke-direct {v4, v2, v3}, Ls1/e0/c;-><init>(Ls1/e0/k;Ls1/z/b/l;)V

    .line 27
    new-instance v2, Le/a/y4/f/b$a;

    invoke-direct {v2, p0, p1, v1, v0}, Le/a/y4/f/b$a;-><init>(Le/a/y4/f/b;[JLandroid/net/Uri;Le/a/y4/f/c;)V

    invoke-static {v4, v2}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 28
    invoke-static {v0}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    iget-object v1, p0, Le/a/y4/f/b;->a:Landroid/content/ContentResolver;

    sget-object v2, Le/a/m0/a1;->a:Landroid/net/Uri;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "com.truecaller"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 13

    .line 1
    invoke-static {}, Le/a/m0/a1$a;->b()Landroid/net/Uri;

    move-result-object v6

    .line 2
    invoke-static {}, Le/a/m0/a1$e;->a()Landroid/net/Uri;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    :try_start_0
    iget-object v3, p0, Le/a/y4/f/b;->a:Landroid/content/ContentResolver;

    const-string v4, "\n                                aggregated_contact_id NOT IN (\n                                        SELECT _id FROM aggregated_contact\n                                        )\n                                "

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contacts sorting sync() deletes from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " items, took: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "ms"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    move-object v3, v7

    goto :goto_0

    :cond_0
    const-string p1, "\n                                _id IN (\n                                    SELECT a_with_update_ts._id\n                                        FROM (\n                                            SELECT a._id, a.aggregated_update_timestamp\n                                            FROM aggregated_contact a\n                                        ) a_with_update_ts\n                                        LEFT JOIN (\n                                                SELECT aggregated_contact_id, contact_update_timestamp\n                                                    FROM contact_sorting_index\n                                        ) cs\n                                            ON a_with_update_ts._id = cs.aggregated_contact_id\n                                            AND a_with_update_ts.aggregated_update_timestamp = cs.contact_update_timestamp\n                                        WHERE cs.aggregated_contact_id IS NULL\n                                )\n                                "

    move-object v3, p1

    .line 7
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 8
    iget-object v0, p0, Le/a/y4/f/b;->a:Landroid/content/ContentResolver;

    const-string p1, "_id"

    .line 9
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 11
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {p1, v7}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 15
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 16
    :cond_2
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    .line 17
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v11

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contacts sorting sync() fetches from "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_7

    const/16 p1, 0x64

    .line 20
    invoke-static {v1, p1}, Ls1/u/i;->k(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 22
    iget-object v4, p0, Le/a/y4/f/b;->b:Lcom/truecaller/service/contact/RefreshContactIndexingService$a;

    .line 23
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "scope"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v5, Landroid/content/Intent;

    iget-object v6, v4, Lcom/truecaller/service/contact/RefreshContactIndexingService$a;->a:Landroid/content/Context;

    const-class v8, Lcom/truecaller/service/contact/RefreshContactIndexingService;

    invoke-direct {v5, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, p1, :cond_5

    move v6, v2

    goto :goto_5

    :cond_5
    move v6, v0

    :goto_5
    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    move-object v5, v7

    :goto_6
    if-eqz v5, :cond_4

    const-string v6, "RefreshContactIndexingService.action.rebuild"

    .line 26
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 27
    invoke-static {v3}, Ls1/u/i;->U0(Ljava/util/Collection;)[J

    move-result-object v3

    const-string v6, "RefreshContactIndexingService.extra.scopes"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 28
    iget-object v4, v4, Lcom/truecaller/service/contact/RefreshContactIndexingService$a;->a:Landroid/content/Context;

    .line 29
    const-class v5, Lcom/truecaller/service/contact/RefreshContactIndexingService;

    const v6, 0x7f0a0e0e

    .line 30
    invoke-static {v4, v5, v6, v3}, Ln3/k/a/i;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    goto :goto_4

    :cond_7
    return-void

    :catch_0
    move-exception p1

    .line 31
    new-instance v0, Lcom/truecaller/log/UnmutedException$a;

    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    const-string p1, "No message"

    :goto_7
    const-string v1, "com.truecaller"

    invoke-direct {v0, v1, p1}, Lcom/truecaller/log/UnmutedException$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    return-void
.end method
