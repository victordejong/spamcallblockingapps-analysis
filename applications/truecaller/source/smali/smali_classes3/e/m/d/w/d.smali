.class public final synthetic Le/m/d/w/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Le/m/d/w/h;


# direct methods
.method public synthetic constructor <init>(Le/m/d/w/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/w/d;->a:Le/m/d/w/h;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Le/m/d/w/d;->a:Le/m/d/w/h;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Le/m/d/w/h;->q(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Le/m/d/w/h;->i()Le/m/d/w/r/d;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Le/m/d/w/r/d;->j()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4
    iget-object v3, v0, Le/m/d/w/h;->b:Le/m/d/w/s/c;

    .line 5
    invoke-virtual {v0}, Le/m/d/w/h;->e()Ljava/lang/String;

    move-result-object v4

    .line 6
    move-object v5, v2

    check-cast v5, Le/m/d/w/r/a;

    .line 7
    iget-object v6, v5, Le/m/d/w/r/a;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Le/m/d/w/h;->j()Ljava/lang/String;

    move-result-object v7

    .line 9
    iget-object v5, v5, Le/m/d/w/r/a;->e:Ljava/lang/String;

    .line 10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v10, 0x1

    aput-object v6, v8, v10

    const-string v6, "projects/%s/installations/%s"

    .line 11
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-virtual {v3, v6}, Le/m/d/w/s/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    :goto_0
    if-gt v9, v10, :cond_4

    const v8, 0x8002

    .line 13
    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 14
    invoke-virtual {v3, v6, v4}, Le/m/d/w/s/c;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v8

    :try_start_0
    const-string v11, "DELETE"

    .line 15
    invoke-virtual {v8, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v11, "Authorization"

    .line 16
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FIS_v2 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_2

    const/16 v12, 0x191

    if-eq v11, v12, :cond_2

    const/16 v12, 0x194

    if-ne v11, v12, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    invoke-static {v8, v1, v4, v7}, Le/m/d/w/s/c;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x1ad

    if-eq v11, v12, :cond_3

    const/16 v12, 0x1f4

    if-lt v11, v12, :cond_1

    const/16 v12, 0x258

    if-ge v11, v12, :cond_1

    goto :goto_2

    .line 19
    :cond_1
    new-instance v11, Le/m/d/w/j;

    const-string v12, "Bad config while trying to delete FID"

    sget-object v13, Le/m/d/w/j$a;->a:Le/m/d/w/j$a;

    invoke-direct {v11, v12, v13}, Le/m/d/w/j;-><init>(Ljava/lang/String;Le/m/d/w/j$a;)V

    throw v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 21
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 22
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 23
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 24
    throw v0

    :catch_0
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 25
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 26
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_0

    .line 27
    :cond_4
    new-instance v0, Le/m/d/w/j;

    sget-object v1, Le/m/d/w/j$a;->b:Le/m/d/w/j$a;

    const-string v2, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v0, v2, v1}, Le/m/d/w/j;-><init>(Ljava/lang/String;Le/m/d/w/j$a;)V

    throw v0

    .line 28
    :cond_5
    :goto_3
    invoke-virtual {v2}, Le/m/d/w/r/d;->k()Le/m/d/w/r/d$a;

    move-result-object v2

    sget-object v3, Le/m/d/w/r/c$a;->b:Le/m/d/w/r/c$a;

    invoke-virtual {v2, v3}, Le/m/d/w/r/d$a;->b(Le/m/d/w/r/c$a;)Le/m/d/w/r/d$a;

    invoke-virtual {v2}, Le/m/d/w/r/d$a;->a()Le/m/d/w/r/d;

    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Le/m/d/w/h;->k(Le/m/d/w/r/d;)V

    return-object v1
.end method
