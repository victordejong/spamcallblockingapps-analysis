.class public final Le/a/k0/a/d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.callrecording.util.CallRecordingExtensionsKt$durationAsync$1"
    f = "CallRecordingExtensions.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/data/entity/CallRecording;

.field public final synthetic f:Le/a/k0/a/s;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/CallRecording;Le/a/k0/a/s;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/a/d;->e:Lcom/truecaller/data/entity/CallRecording;

    iput-object p2, p0, Le/a/k0/a/d;->f:Le/a/k0/a/s;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k0/a/d;

    iget-object v0, p0, Le/a/k0/a/d;->e:Lcom/truecaller/data/entity/CallRecording;

    iget-object v1, p0, Le/a/k0/a/d;->f:Le/a/k0/a/s;

    invoke-direct {p1, v0, v1, p2}, Le/a/k0/a/d;-><init>(Lcom/truecaller/data/entity/CallRecording;Le/a/k0/a/s;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k0/a/d;

    iget-object v0, p0, Le/a/k0/a/d;->e:Lcom/truecaller/data/entity/CallRecording;

    iget-object v1, p0, Le/a/k0/a/d;->f:Le/a/k0/a/s;

    invoke-direct {p1, v0, v1, p2}, Le/a/k0/a/d;-><init>(Lcom/truecaller/data/entity/CallRecording;Le/a/k0/a/s;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k0/a/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/k0/a/d;->e:Lcom/truecaller/data/entity/CallRecording;

    const-string v0, "$this$isMediaStoreFile"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/truecaller/data/entity/CallRecording;->c:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Le/a/m0/a1$k;->B0(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt p1, v5, :cond_2

    iget-object p1, p0, Le/a/k0/a/d;->e:Lcom/truecaller/data/entity/CallRecording;

    iget-object v0, p0, Le/a/k0/a/d;->f:Le/a/k0/a/s;

    .line 7
    :try_start_0
    iget-object v5, v0, Le/a/k0/a/s;->a:Landroid/content/ContentResolver;

    .line 8
    iget-object p1, p1, Lcom/truecaller/data/entity/CallRecording;->c:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string p1, "duration"

    .line 10
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 11
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 12
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {p1, v4}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 16
    invoke-static {v0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    .line 17
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    .line 18
    :cond_2
    iget-object p1, p0, Le/a/k0/a/d;->e:Lcom/truecaller/data/entity/CallRecording;

    iget-object v5, p0, Le/a/k0/a/d;->f:Le/a/k0/a/s;

    .line 19
    :try_start_5
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p1, Lcom/truecaller/data/entity/CallRecording;->c:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Le/a/m0/a1$k;->B0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    iget-object v6, v5, Le/a/k0/a/s;->a:Landroid/content/ContentResolver;

    .line 23
    iget-object p1, p1, Lcom/truecaller/data/entity/CallRecording;->c:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string p1, "_data"

    .line 25
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 26
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0

    .line 27
    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_3

    goto :goto_3

    .line 28
    :cond_3
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 29
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 30
    :cond_4
    :goto_3
    :try_start_7
    invoke-static {p1, v4}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 31
    invoke-static {v0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 32
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_9
    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 33
    :cond_5
    iget-object p1, p1, Lcom/truecaller/data/entity/CallRecording;->c:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_4
    move-object v4, p1

    .line 34
    :catch_0
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    if-eqz v4, :cond_6

    .line 36
    :try_start_a
    invoke-virtual {p1, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 37
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-wide v2, v0

    goto :goto_5

    :catchall_4
    move-exception v0

    .line 38
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v0

    :catch_1
    :cond_6
    :goto_5
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 39
    :catch_2
    :cond_7
    :goto_6
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object p1
.end method
