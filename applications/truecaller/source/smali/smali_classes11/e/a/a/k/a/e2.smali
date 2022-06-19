.class public final Le/a/a/k/a/e2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lu3/k0;)I
    .locals 8

    const-string v0, "response"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lu3/k0;->e:I

    const/16 v1, 0x190

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_5

    .line 2
    iget-object v0, p1, Lu3/k0;->h:Lu3/l0;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lu3/l0;->b()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const-string v5, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v6, 0x0

    .line 5
    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 6
    invoke-interface {v4, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 7
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const-string v5, "parser"

    .line 8
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_0
    if-eq v5, v3, :cond_3

    if-eq v5, v2, :cond_1

    const/4 v7, 0x4

    if-eq v5, v7, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v6, :cond_2

    .line 9
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 10
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Code"

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    move v6, v5

    .line 11
    :cond_2
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1

    :catch_0
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4
    const-string v0, "EntityTooLarge"

    .line 13
    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x3

    goto :goto_3

    .line 14
    :cond_5
    iget p1, p1, Lu3/k0;->e:I

    const/16 v0, 0x193

    if-ne p1, v0, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    return v2
.end method
