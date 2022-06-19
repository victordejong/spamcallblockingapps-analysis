.class public final Le/a/k0/o/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/o/a;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Landroid/content/ContentResolver;

.field public final c:Le/a/y2/q/a;

.field public final d:Le/a/k0/f;

.field public final e:Le/a/k0/m/a;

.field public final f:Le/a/u3/g;

.field public final g:Le/a/p5/a0;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/y2/q/a;Le/a/k0/f;Le/a/k0/m/a;Le/a/u3/g;Le/a/p5/a0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundWorkTrigger"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingStorageHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/o/b;->b:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/k0/o/b;->c:Le/a/y2/q/a;

    iput-object p3, p0, Le/a/k0/o/b;->d:Le/a/k0/f;

    iput-object p4, p0, Le/a/k0/o/b;->e:Le/a/k0/m/a;

    iput-object p5, p0, Le/a/k0/o/b;->f:Le/a/u3/g;

    iput-object p6, p0, Le/a/k0/o/b;->g:Le/a/p5/a0;

    .line 2
    invoke-static {}, Le/a/m0/a1$c;->a()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/o/b;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 12

    const-string v0, "cursor"

    .line 1
    iget-object v1, p0, Le/a/k0/o/b;->b:Landroid/content/ContentResolver;

    .line 2
    iget-object v2, p0, Le/a/k0/o/b;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "recording_path NOT LIKE \'content%\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 4
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v4, "recording_path"

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 6
    :try_start_1
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "history_event_id"

    .line 7
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 8
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v6, "_id"

    .line 9
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "history_call_recording_id"

    .line 10
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 11
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    if-eq v4, v8, :cond_2

    .line 12
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eq v7, v8, :cond_0

    .line 14
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    goto :goto_1

    :cond_0
    if-eq v6, v8, :cond_1

    .line 15
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    goto :goto_1

    :cond_1
    const-wide/16 v6, -0x1

    :goto_1
    if-eqz v4, :cond_2

    .line 16
    new-instance v5, Lcom/truecaller/data/entity/CallRecording;

    invoke-direct {v5, v6, v7, v3, v4}, Lcom/truecaller/data/entity/CallRecording;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {v1, v5}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 19
    invoke-static {v2}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 20
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/CallRecording;

    .line 22
    iget-object v3, v1, Lcom/truecaller/data/entity/CallRecording;->c:Ljava/lang/String;

    const-string v6, "TCCallRecordings"

    const/4 v7, 0x1

    .line 23
    invoke-static {v3, v6, v7}, Ls1/f0/v;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    xor-int/2addr v6, v7

    .line 24
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    .line 26
    :cond_5
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v9, "Uri.parse(recordingPath)"

    invoke-static {v3, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/a/p5/s0/f;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    iget-object v9, p0, Le/a/k0/o/b;->e:Le/a/k0/m/a;

    invoke-interface {v9, v3, v6}, Le/a/k0/m/a;->b(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v3

    .line 28
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "====== Insert to media store:: Uri : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v3, :cond_4

    if-eqz v6, :cond_8

    .line 29
    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    :try_start_3
    iget-object v9, p0, Le/a/k0/o/b;->b:Landroid/content/ContentResolver;

    const-string v10, "w"

    invoke-virtual {v9, v3, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v9, :cond_7

    :try_start_4
    const-string v10, "outputStream"

    .line 31
    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-static {v6, v9, v2, v10}, Le/q/f/a/d/a;->U(Ljava/io/InputStream;Ljava/io/OutputStream;II)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32
    :try_start_5
    invoke-static {v9, v5}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 33
    :try_start_6
    invoke-static {v6, v5}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 34
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v6, v9, :cond_6

    .line 35
    iget-object v6, p0, Le/a/k0/o/b;->b:Landroid/content/ContentResolver;

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "is_pending"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v6, v3, v9, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_6
    move v6, v7

    goto :goto_3

    :catchall_0
    move-exception v10

    .line 36
    :try_start_7
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v11

    :try_start_8
    invoke-static {v9, v10}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v11

    .line 37
    :cond_7
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Could not open output stream"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v9

    .line 38
    :try_start_9
    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v10

    :try_start_a
    invoke-static {v6, v9}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v6

    .line 39
    iget-object v9, p0, Le/a/k0/o/b;->b:Landroid/content/ContentResolver;

    invoke-static {v9, v3}, Le/a/p5/s0/f;->K(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 40
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "====== Copy file to media store:: failed with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v6, v2

    :goto_3
    if-eqz v6, :cond_4

    .line 41
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 42
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "====== Updating table:: new uri "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " | recording "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 44
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Le/a/k0/o/b;->b:Landroid/content/ContentResolver;

    .line 46
    iget-object v8, p0, Le/a/k0/o/b;->a:Landroid/net/Uri;

    new-array v7, v7, [Ljava/lang/String;

    .line 47
    iget-wide v9, v1, Lcom/truecaller/data/entity/CallRecording;->a:J

    .line 48
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v2

    const-string v1, "_id=?"

    .line 49
    invoke-virtual {v3, v8, v6, v1, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 50
    :cond_9
    iget-object v0, p0, Le/a/k0/o/b;->d:Le/a/k0/f;

    invoke-interface {v0, v2}, Le/a/k0/f;->X2(Z)V

    return-void

    :catchall_4
    move-exception v0

    .line 51
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v2

    invoke-static {v1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_a
    return-void
.end method

.method public t(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/k0/o/b;->d:Le/a/k0/f;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Le/a/k0/f;->X2(Z)V

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/k0/o/b;->c:Le/a/y2/q/a;

    sget-object v0, Lcom/truecaller/callrecording/worker/CallRecordingsMigrationWorker;->d:Lcom/truecaller/callrecording/worker/CallRecordingsMigrationWorker$a;

    invoke-interface {p1, v0}, Le/a/y2/q/a;->b(Le/a/y2/i;)Ln3/m0/s;

    return-void
.end method

.method public x()Z
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-ge v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/k0/o/b;->d:Le/a/k0/f;

    invoke-interface {v0}, Le/a/k0/f;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/k0/o/b;->f:Le/a/u3/g;

    .line 4
    iget-object v3, v0, Le/a/u3/g;->I:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x1f

    aget-object v4, v4, v5

    invoke-virtual {v3, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Le/a/k0/o/b;->g:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Le/a/k0/o/b;->g:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method
