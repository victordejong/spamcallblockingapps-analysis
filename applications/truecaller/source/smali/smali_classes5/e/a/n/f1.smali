.class public final Le/a/n/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/e1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/n/a1;

.field public final c:Le/m/e/k;

.field public final d:Le/a/n/i0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/n/a1;Le/m/e/k;Le/a/n/i0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "driveManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n/f1;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/n/f1;->b:Le/a/n/a1;

    iput-object p3, p0, Le/a/n/f1;->c:Le/m/e/k;

    iput-object p4, p0, Le/a/n/f1;->d:Le/a/n/i0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/backup/BackupResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Le/a/n/f1$b;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Le/a/n/f1$b;

    iget v3, v2, Le/a/n/f1$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/n/f1$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/n/f1$b;

    invoke-direct {v2, v1, v0}, Le/a/n/f1$b;-><init>(Le/a/n/f1;Ls1/w/d;)V

    :goto_0
    iget-object v0, v2, Le/a/n/f1$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/n/f1$b;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Le/a/n/f1$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/f1;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v1, Le/a/n/f1;->d:Le/a/n/i0;

    sget-object v4, Lcom/truecaller/backup/BackupFile;->BLOCK_LIST:Lcom/truecaller/backup/BackupFile;

    move-object/from16 v6, p1

    invoke-interface {v0, v4, v6}, Le/a/n/i0;->a(Lcom/truecaller/backup/BackupFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 5
    iget-object v4, v1, Le/a/n/f1;->b:Le/a/n/a1;

    iput-object v1, v2, Le/a/n/f1$b;->g:Ljava/lang/Object;

    iput v5, v2, Le/a/n/f1$b;->e:I

    invoke-interface {v4, v0, v2}, Le/a/n/a1;->h(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    move-object v2, v1

    :goto_1
    check-cast v0, Ljava/io/InputStream;

    if-eqz v0, :cond_b

    .line 6
    iget-object v3, v2, Le/a/n/f1;->c:Le/m/e/k;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 7
    new-instance v0, Le/a/n/f1$a;

    invoke-direct {v0}, Le/a/n/f1$a;-><init>()V

    invoke-virtual {v0}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v6, "object : TypeToken<T>() {}.type"

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, v4}, Le/m/e/k;->k(Ljava/io/Reader;)Le/m/e/g0/a;

    move-result-object v4

    .line 9
    invoke-virtual {v3, v4, v0}, Le/m/e/k;->c(Le/m/e/g0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-static {v0, v4}, Le/m/e/k;->a(Ljava/lang/Object;Le/m/e/g0/a;)V

    const-string v3, "this.fromJson(json, typeToken<T>())"

    .line 11
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast v0, Ljava/util/List;

    new-array v10, v5, [Ljava/lang/String;

    const/4 v3, 0x2

    .line 13
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v10, v4

    .line 14
    iget-object v3, v2, Le/a/n/f1;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 15
    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-string v9, "sync_state!=?"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "spam_version"

    const-string v7, "history_event_id"

    const-string v8, "category_id"

    const-string v9, "entity_type"

    const-string v10, "tracking_source"

    const-string v11, "tracking_type"

    const-string v12, "sync_state"

    const-string v13, "wildcard_type"

    const-string v14, "rule"

    const-string v15, "label"

    const-string v4, "value"

    const-string v5, "server_id"

    if-eqz v3, :cond_6

    .line 16
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v17, v2

    .line 18
    new-instance v2, Lcom/truecaller/backup/FilterBackupItem;

    .line 19
    invoke-static {v3, v5}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 20
    invoke-static {v3, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    goto :goto_3

    :cond_4
    const-string v18, ""

    :goto_3
    move-object/from16 v20, v18

    .line 21
    invoke-static {v3, v15}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 22
    invoke-static {v3, v14}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v22

    .line 23
    invoke-static {v3, v13}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v23

    .line 24
    invoke-static {v3, v12}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v24

    .line 25
    invoke-static {v3, v11}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 26
    invoke-static {v3, v10}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 27
    invoke-static {v3, v9}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v27

    .line 28
    invoke-static {v3, v8}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 29
    invoke-static {v3, v7}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 30
    invoke-static {v3, v6}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v18, v2

    .line 31
    invoke-direct/range {v18 .. v30}, Lcom/truecaller/backup/FilterBackupItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v2, v17

    goto :goto_2

    :cond_5
    move-object/from16 v17, v2

    const/4 v2, 0x0

    .line 32
    invoke-static {v3, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 33
    invoke-static {v1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 34
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    move-object/from16 v17, v2

    const/4 v2, 0x0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_a

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v0

    move-object v0, v3

    check-cast v0, Lcom/truecaller/backup/FilterBackupItem;

    .line 37
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v18, 0x1

    xor-int/lit8 v0, v0, 0x1

    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v0, v16

    goto :goto_5

    .line 40
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v2, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 42
    check-cast v2, Lcom/truecaller/backup/FilterBackupItem;

    .line 43
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 p2, v1

    .line 44
    invoke-virtual {v2}, Lcom/truecaller/backup/FilterBackupItem;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2}, Lcom/truecaller/backup/FilterBackupItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Lcom/truecaller/backup/FilterBackupItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Lcom/truecaller/backup/FilterBackupItem;->getRule()I

    move-result v1

    move-object/from16 v16, v4

    .line 48
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 49
    invoke-virtual {v3, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    invoke-virtual {v2}, Lcom/truecaller/backup/FilterBackupItem;->getWildcardType()I

    move-result v1

    .line 51
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 52
    invoke-virtual {v3, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    invoke-virtual {v2}, Lcom/truecaller/backup/FilterBackupItem;->getSyncState()I

    move-result v1

    .line 54
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 55
    invoke-virtual {v3, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    invoke-virtual {v2}, Lcom/truecaller/backup/FilterBackupItem;->getTrackingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Lcom/truecaller/backup/FilterBackupItem;->getTrackingSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2}, Lcom/truecaller/backup/FilterBackupItem;->getEntityType()I

    move-result v1

    .line 59
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 60
    invoke-virtual {v3, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    invoke-virtual {v2}, Lcom/truecaller/backup/FilterBackupItem;->getCategoryId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    invoke-virtual {v2}, Lcom/truecaller/backup/FilterBackupItem;->getSpamVersion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    invoke-virtual {v2}, Lcom/truecaller/backup/FilterBackupItem;->getHistoryEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    move-object/from16 v4, v16

    goto/16 :goto_6

    .line 65
    :cond_9
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/ContentValues;

    .line 66
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    check-cast v0, [Landroid/content/ContentValues;

    move-object/from16 v1, v17

    .line 68
    iget-object v1, v1, Le/a/n/f1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 69
    sget-object v0, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    return-object v0

    .line 70
    :cond_a
    sget-object v0, Lcom/truecaller/backup/BackupResult;->ErrorDatabase:Lcom/truecaller/backup/BackupResult;

    return-object v0

    .line 71
    :cond_b
    sget-object v0, Lcom/truecaller/backup/BackupResult;->ErrorRead:Lcom/truecaller/backup/BackupResult;

    return-object v0

    .line 72
    :cond_c
    sget-object v0, Lcom/truecaller/backup/BackupResult;->ErrorFileName:Lcom/truecaller/backup/BackupResult;

    return-object v0
.end method
