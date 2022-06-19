.class public Le/i/b/i2/c$a;
.super Le/i/b/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/i2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final c:Le/i/b/u2/x;

.field public final synthetic d:Le/i/b/i2/c;


# direct methods
.method public constructor <init>(Le/i/b/i2/c;Le/i/b/u2/x;Le/i/b/i2/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/i2/c$a;->d:Le/i/b/i2/c;

    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    .line 2
    iput-object p2, p0, Le/i/b/i2/c$a;->c:Le/i/b/u2/x;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/i2/c$a;->d:Le/i/b/i2/c;

    .line 2
    iget-object v0, v0, Le/i/b/i2/c;->b:Le/i/b/u2/c0;

    .line 3
    iget-object v2, v0, Le/i/b/u2/c0;->b:Ljava/lang/String;

    iget-object v1, v0, Le/i/b/u2/c0;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Le/i/b/u2/c0;->c:Le/i/b/s2/f;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Le/i/b/u2/c0;->d:Le/i/b/d2/c;

    .line 6
    invoke-virtual {v1}, Le/i/b/d2/c;->b()I

    move-result v5

    iget-object v0, v0, Le/i/b/u2/c0;->e:Le/i/b/s2/b;

    .line 7
    invoke-virtual {v0}, Le/i/b/s2/b;->b()Ljava/lang/String;

    move-result-object v6

    .line 8
    new-instance v0, Le/i/b/u2/m;

    const-string v4, "4.4.0"

    const-string v7, "android"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Le/i/b/u2/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Le/i/b/i2/c$a;->d:Le/i/b/i2/c;

    .line 10
    iget-object v1, v1, Le/i/b/i2/c;->d:Le/i/b/i2/g;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Ljava/net/URL;

    iget-object v3, v1, Le/i/b/i2/g;->b:Le/i/b/s2/f;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "https://bidder.criteo.com/config/app"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "POST"

    .line 13
    invoke-virtual {v1, v2, v3, v4}, Le/i/b/i2/g;->c(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 14
    invoke-virtual {v1, v2, v0}, Le/i/b/i2/g;->e(Ljava/net/HttpURLConnection;Ljava/lang/Object;)V

    .line 15
    invoke-static {v2}, Le/i/b/i2/g;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 16
    :try_start_0
    iget-object v1, v1, Le/i/b/i2/g;->c:Le/i/b/s2/j;

    const-class v2, Le/i/b/u2/d0;

    invoke-virtual {v1, v2, v0}, Le/i/b/s2/j;->a(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/i/b/u2/d0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 18
    :cond_0
    iget-object v0, p0, Le/i/b/i2/c$a;->c:Le/i/b/u2/x;

    .line 19
    iget-object v2, v0, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    invoke-virtual {v0, v2, v1}, Le/i/b/u2/x;->a(Le/i/b/u2/d0;Le/i/b/u2/d0;)Le/i/b/u2/d0;

    move-result-object v1

    iput-object v1, v0, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    .line 20
    iget-object v1, v0, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    .line 21
    iget-object v2, v0, Le/i/b/u2/x;->c:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_2

    iget-object v2, v0, Le/i/b/u2/x;->d:Le/i/b/s2/j;

    if-nez v2, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    :try_start_2
    iget-object v4, v0, Le/i/b/u2/x;->d:Le/i/b/s2/j;

    invoke-virtual {v4, v1, v2}, Le/i/b/s2/j;->b(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 24
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 26
    iget-object v0, v0, Le/i/b/u2/x;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "CriteoCachedConfig"

    .line 27
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 29
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    .line 30
    iget-object v0, v0, Le/i/b/u2/x;->a:Le/i/b/q2/h;

    .line 31
    new-instance v2, Le/i/b/q2/f;

    const/4 v4, 0x3

    const-string v5, "Couldn\'t persist values"

    invoke-direct {v2, v4, v5, v1, v3}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    :cond_2
    :goto_1
    return-void

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_3

    .line 32
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1
.end method
