.class public Le/m/d/n/j/p/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Le/m/d/n/j/n/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.crashlytics.settings.json"

    .line 2
    invoke-virtual {p1, v0}, Le/m/d/n/j/n/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Le/m/d/n/j/p/a;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 6

    .line 1
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const-string v1, "Error while closing settings cache file."

    const/4 v2, 0x3

    .line 2
    invoke-virtual {v0, v2}, Le/m/d/n/j/f;->a(I)Z

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget-object v3, p0, Le/m/d/n/j/p/a;->a:Ljava/io/File;

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-static {v4}, Le/m/d/n/j/j/l;->m(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 8
    :try_start_2
    invoke-virtual {v0, v3}, Le/m/d/n/j/f;->a(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v2

    .line 9
    :goto_0
    invoke-static {v2, v1}, Le/m/d/n/j/j/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    move-object v2, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-object v4, v2

    :catch_1
    const/4 v3, 0x6

    .line 10
    :try_start_3
    invoke-virtual {v0, v3}, Le/m/d/n/j/f;->a(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    invoke-static {v4, v1}, Le/m/d/n/j/j/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_1
    return-object v2

    :catchall_1
    move-exception v0

    move-object v2, v4

    :goto_2
    invoke-static {v2, v1}, Le/m/d/n/j/j/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 12
    throw v0
.end method
