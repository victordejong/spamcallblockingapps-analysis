.class public Le/m/d/n/j/k/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Le/m/d/n/j/n/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/k/g;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Le/m/d/n/j/n/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/n/j/k/g;->a:Le/m/d/n/j/n/f;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    :cond_0
    invoke-virtual {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Failed to close user metadata file."

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Le/m/d/n/j/k/g;->a:Le/m/d/n/j/n/f;

    const-string v1, "internal-keys"

    invoke-virtual {p2, p1, v1}, Le/m/d/n/j/n/f;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Le/m/d/n/j/k/g;->a:Le/m/d/n/j/n/f;

    const-string v1, "keys"

    invoke-virtual {p2, p1, v1}, Le/m/d/n/j/n/f;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p2, 0x0

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-static {v1}, Le/m/d/n/j/j/l;->m(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/m/d/n/j/k/g;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-static {v1, v0}, Le/m/d/n/j/j/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-object p2, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 8
    :catch_1
    :goto_1
    :try_start_2
    sget-object p1, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v1, 0x6

    .line 9
    invoke-virtual {p1, v1}, Le/m/d/n/j/f;->a(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    invoke-static {p2, v0}, Le/m/d/n/j/j/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :goto_2
    move-object v1, p2

    .line 12
    :goto_3
    invoke-static {v1, v0}, Le/m/d/n/j/j/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "Failed to close user metadata file."

    .line 1
    sget-object v1, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    iget-object v2, p0, Le/m/d/n/j/k/g;->a:Le/m/d/n/j/n/f;

    const-string v3, "user-data"

    invoke-virtual {v2, p1, v3}, Le/m/d/n/j/n/f;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v1, v3}, Le/m/d/n/j/f;->a(I)Z

    return-object v4

    .line 4
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-static {v2}, Le/m/d/n/j/j/l;->m(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "userId"

    .line 7
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v4

    .line 8
    :goto_0
    invoke-virtual {v1, v3}, Le/m/d/n/j/f;->a(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {v2, v0}, Le/m/d/n/j/j/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v4, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-object v2, v4

    :catch_1
    const/4 p1, 0x6

    .line 10
    :try_start_2
    invoke-virtual {v1, p1}, Le/m/d/n/j/f;->a(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    invoke-static {v2, v0}, Le/m/d/n/j/j/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v4

    :goto_1
    invoke-static {v4, v0}, Le/m/d/n/j/j/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 12
    throw p1
.end method
