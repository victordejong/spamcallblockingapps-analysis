.class public final Le/a/h/p0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/p0/a;


# instance fields
.field public final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/p0/b;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-static {}, Le/a/b0/q/g0;->e()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    const-string v1, "ContentProviderOperation\u2026i())\n            .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/h/p0/b;->a:Landroid/content/ContentResolver;

    sget-object v2, Le/a/m0/a1;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/ContentProviderOperation;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ls1/u/i;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "com.truecaller"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    return-void
.end method

.method public b(Ljava/lang/String;)Le/a/h/p0/e/a;
    .locals 10

    const-string v0, "cursor"

    const-string v1, "tcId"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    iget-object v3, p0, Le/a/h/p0/b;->a:Landroid/content/ContentResolver;

    .line 4
    invoke-static {}, Le/a/b0/q/g0;->e()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v7, v9

    const/4 v8, 0x0

    const-string v6, "tc_id = ?"

    .line 5
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    :try_start_0
    const-string v3, "tc_id"

    .line 6
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "hidden_from_identified"

    .line 7
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Le/a/h/p0/e/a;

    .line 12
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "cursor.getString(tcId)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v9

    .line 14
    :goto_0
    invoke-direct {v0, v3, v1}, Le/a/h/p0/e/a;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 15
    :goto_1
    invoke-static {p1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v2, v0

    goto :goto_2

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

    .line 16
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-object v2
.end method

.method public c(Le/a/h/p0/e/a;)V
    .locals 3

    const-string v0, "contactSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    iget-object v0, p1, Le/a/h/p0/e/a;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Le/a/b0/q/g0;->e()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Le/a/h/p0/e/a;->a()Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    const-string v0, "ContentProviderOperation\u2026\n                .build()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Le/a/h/p0/b;->a:Landroid/content/ContentResolver;

    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentProviderOperation;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ls1/u/i;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "com.truecaller"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public d(Le/a/h/p0/e/a;)V
    .locals 5

    const-string v0, "contactSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    iget-object v0, p1, Le/a/h/p0/e/a;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Le/a/b0/q/g0;->e()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 5
    iget-object v3, p1, Le/a/h/p0/e/a;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "tc_id = ?"

    .line 6
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Le/a/h/p0/e/a;->a()Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    const-string v0, "ContentProviderOperation\u2026\n                .build()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Le/a/h/p0/b;->a:Landroid/content/ContentResolver;

    sget-object v2, Le/a/m0/a1;->a:Landroid/net/Uri;

    new-array v1, v1, [Landroid/content/ContentProviderOperation;

    aput-object p1, v1, v4

    invoke-static {v1}, Ls1/u/i;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "com.truecaller"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method
