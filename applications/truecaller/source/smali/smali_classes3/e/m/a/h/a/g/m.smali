.class public final Le/m/a/h/a/g/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/a/h/a/g/g/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/m/a/h/a/d/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/k1<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/a/h/a/d/k1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/d/k1<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/m;->a:Le/m/a/h/a/d/k1;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Le/m/a/h/a/g/m;->a:Le/m/a/h/a/d/k1;

    .line 1
    invoke-interface {v0}, Le/m/a/h/a/d/k1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Le/m/a/h/a/g/g/u;->c:Le/m/a/h/a/d/g;

    new-instance v1, Ljava/io/File;

    const-string v2, "local_testing_config.xml"

    .line 3
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Le/m/a/h/a/g/g/p;->a:Le/m/a/h/a/g/g/p;

    goto :goto_1

    .line 6
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 8
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    new-instance v3, Le/m/a/h/a/g/g/u;

    .line 9
    invoke-direct {v3, v1}, Le/m/a/h/a/g/g/u;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    new-instance v1, Le/m/a/h/a/g/g/q;

    .line 10
    invoke-direct {v1, v3}, Le/m/a/h/a/g/g/q;-><init>(Le/m/a/h/a/g/g/u;)V

    const-string v4, "local-testing-config"

    invoke-virtual {v3, v4, v1}, Le/m/a/h/a/g/g/u;->a(Ljava/lang/String;Le/m/a/h/a/g/g/t;)V

    iget-object v1, v3, Le/m/a/h/a/g/g/u;->b:Le/m/a/h/a/g/g/b;

    .line 11
    invoke-virtual {v1}, Le/m/a/h/a/g/g/b;->a()Le/m/a/h/a/g/g/p;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 13
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 14
    :goto_0
    sget-object v1, Le/m/a/h/a/g/g/u;->c:Le/m/a/h/a/d/g;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "%s can not be parsed, using default. Error: %s"

    .line 16
    invoke-virtual {v1, v0, v3}, Le/m/a/h/a/d/g;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 17
    sget-object v0, Le/m/a/h/a/g/g/p;->a:Le/m/a/h/a/g/g/p;

    :goto_1
    return-object v0
.end method
