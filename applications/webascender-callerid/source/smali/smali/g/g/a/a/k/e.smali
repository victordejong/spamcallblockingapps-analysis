.class public final Lg/g/a/a/k/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 10

    const-string v0, "JARVIS"

    const-string v1, "chain"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "data"

    .line 3
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "api_call"

    .line 4
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v3

    const-string v4, "method"

    .line 6
    invoke-virtual {v3}, Lm/e0;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "url"

    .line 7
    invoke-virtual {v3}, Lm/e0;->l()Lm/y;

    move-result-object v5

    invoke-virtual {v5}, Lm/y;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-string v5, "headers"

    .line 9
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v3}, Lm/e0;->a()Lm/f0;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 11
    new-instance v7, Ln/f;

    invoke-direct {v7}, Ln/f;-><init>()V

    .line 12
    invoke-virtual {v5, v7}, Lm/f0;->writeTo(Ln/g;)V

    const-string v8, "UTF-8"

    .line 13
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    .line 14
    invoke-virtual {v5}, Lm/f0;->contentType()Lm/a0;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 15
    invoke-virtual {v5, v8}, Lm/a0;->d(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v6

    :cond_1
    :goto_0
    :try_start_1
    const-string v5, "body"

    const-string v9, "charset"

    .line 16
    invoke-static {v8, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ln/f;->v0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v3}, Lm/e0;->f()Lm/x;

    move-result-object v5

    invoke-virtual {v5}, Lm/x;->size()I

    move-result v5

    :goto_1
    if-ge v2, v5, :cond_3

    .line 18
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 19
    invoke-virtual {v3}, Lm/e0;->f()Lm/x;

    move-result-object v8

    invoke-virtual {v8, v2}, Lm/x;->g(I)Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual {v3}, Lm/e0;->f()Lm/x;

    move-result-object v9

    invoke-virtual {v9, v2}, Lm/x;->j(I)Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23
    :cond_3
    new-instance v2, Ljava/io/File;

    const-string v3, "//sdcard//Download//"

    const-string v4, "jarvis_log"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "event.toString()"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-static {v2, v3, v6, v4, v6}, Lkotlin/io/b;->c(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 24
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :goto_2
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object p1

    return-object p1
.end method
