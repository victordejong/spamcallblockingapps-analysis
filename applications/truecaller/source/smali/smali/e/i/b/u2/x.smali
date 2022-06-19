.class public Le/i/b/u2/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/u2/x$a;
    }
.end annotation


# instance fields
.field public final a:Le/i/b/q2/h;

.field public volatile b:Le/i/b/u2/d0;

.field public final c:Landroid/content/SharedPreferences;

.field public final d:Le/i/b/s2/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Le/i/b/u2/x;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/x;->a:Le/i/b/q2/h;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/i/b/u2/x;->c:Landroid/content/SharedPreferences;

    .line 4
    iput-object v0, p0, Le/i/b/u2/x;->d:Le/i/b/s2/j;

    .line 5
    invoke-static {}, Le/i/b/u2/d0;->a()Le/i/b/u2/d0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Le/i/b/s2/j;)V
    .locals 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-class v0, Le/i/b/u2/x;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/x;->a:Le/i/b/q2/h;

    .line 8
    iput-object p1, p0, Le/i/b/u2/x;->c:Landroid/content/SharedPreferences;

    .line 9
    iput-object p2, p0, Le/i/b/u2/x;->d:Le/i/b/s2/j;

    .line 10
    invoke-static {}, Le/i/b/u2/d0;->a()Le/i/b/u2/d0;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const-string p2, "CriteoCachedConfig"

    const-string v1, "{}"

    .line 11
    :try_start_0
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Expected a String type when reading: "

    invoke-static {v3, p2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V

    :goto_0
    const-string p1, "UTF-8"

    .line 13
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 14
    :try_start_1
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    :try_start_2
    iget-object p1, p0, Le/i/b/u2/x;->d:Le/i/b/s2/j;

    const-class v1, Le/i/b/u2/d0;

    invoke-virtual {p1, v1, p2}, Le/i/b/s2/j;->a(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/i/b/u2/d0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 17
    invoke-virtual {p0, v0, p1}, Le/i/b/u2/x;->a(Le/i/b/u2/d0;Le/i/b/u2/d0;)Le/i/b/u2/d0;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 18
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p1

    .line 19
    iget-object p2, p0, Le/i/b/u2/x;->a:Le/i/b/q2/h;

    .line 20
    new-instance v1, Le/i/b/q2/f;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "Couldn\'t read cached values"

    invoke-direct {v1, v2, v4, p1, v3}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 21
    :cond_1
    :goto_2
    iput-object v0, p0, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    return-void
.end method


# virtual methods
.method public final a(Le/i/b/u2/d0;Le/i/b/u2/d0;)Le/i/b/u2/d0;
    .locals 11

    .line 1
    invoke-virtual {p2}, Le/i/b/u2/d0;->h()Ljava/lang/Boolean;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Le/i/b/u2/d0;->h()Ljava/lang/Boolean;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p2}, Le/i/b/u2/d0;->f()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Le/i/b/u2/d0;->f()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v0, v2}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Le/i/b/u2/d0;->e()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Le/i/b/u2/d0;->e()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v0, v3}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-virtual {p2}, Le/i/b/u2/d0;->c()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Le/i/b/u2/d0;->c()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {v0, v4}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 13
    invoke-virtual {p2}, Le/i/b/u2/d0;->d()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Le/i/b/u2/d0;->d()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-static {v0, v5}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Le/i/b/u2/d0;->g()Ljava/lang/Boolean;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Le/i/b/u2/d0;->g()Ljava/lang/Boolean;

    move-result-object v6

    .line 18
    invoke-static {v0, v6}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Boolean;

    .line 19
    invoke-virtual {p2}, Le/i/b/u2/d0;->i()Ljava/lang/Boolean;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Le/i/b/u2/d0;->i()Ljava/lang/Boolean;

    move-result-object v7

    .line 21
    invoke-static {v0, v7}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Boolean;

    .line 22
    invoke-virtual {p2}, Le/i/b/u2/d0;->j()Ljava/lang/Integer;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Le/i/b/u2/d0;->j()Ljava/lang/Integer;

    move-result-object v8

    .line 24
    invoke-static {v0, v8}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Integer;

    .line 25
    invoke-virtual {p2}, Le/i/b/u2/d0;->k()Ljava/lang/Boolean;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Le/i/b/u2/d0;->k()Ljava/lang/Boolean;

    move-result-object v9

    .line 27
    invoke-static {v0, v9}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/Boolean;

    .line 28
    invoke-virtual {p2}, Le/i/b/u2/d0;->l()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object p2

    .line 29
    invoke-virtual {p1}, Le/i/b/u2/d0;->l()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object p1

    .line 30
    invoke-static {p2, p1}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    .line 31
    invoke-static/range {v1 .. v10}, Le/i/b/u2/d0;->b(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;)Le/i/b/u2/d0;

    move-result-object p1

    return-object p1
.end method
