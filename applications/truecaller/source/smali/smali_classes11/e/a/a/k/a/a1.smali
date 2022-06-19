.class public final Le/a/a/k/a/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/z0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/a/a1$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/a/k/a/s1;

.field public final b:Landroid/content/ContentResolver;

.field public final c:Lu3/e0;

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/a/k/a/s1;Landroid/content/ContentResolver;Lu3/e0;Landroid/content/Context;)V
    .locals 1
    .param p3    # Lu3/e0;
        .annotation runtime Ljavax/inject/Named;
            value = "ImClient"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "stubManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/a1;->a:Le/a/a/k/a/s1;

    iput-object p2, p0, Le/a/a/k/a/a1;->b:Landroid/content/ContentResolver;

    iput-object p3, p0, Le/a/a/k/a/a1;->c:Lu3/e0;

    iput-object p4, p0, Le/a/a/k/a/a1;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Le/a/a/k/a/d2;
    .locals 11

    const v0, 0x7f1203f9

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 2
    iget-object v4, p0, Le/a/a/k/a/a1;->a:Le/a/a/k/a/s1;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5, v3}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v4

    check-cast v4, Le/a/t2/a/e/a/b$a;

    if-eqz v4, :cond_3

    .line 3
    sget-boolean v6, Lcom/truecaller/TrueApp;->r:Z

    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v6

    const-string v7, "getAppContext()"

    .line 4
    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v6}, Le/a/p5/s0/f;->G(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 5
    iget-object v8, p0, Le/a/a/k/a/a1;->d:Landroid/content/Context;

    invoke-static {p1, v8}, Le/a/p5/s0/f;->i(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 6
    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request$a;

    move-result-object v9

    .line 7
    invoke-virtual {v9}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v10, v9, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v10, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;

    invoke-static {v10, v6, v7}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;J)V

    .line 9
    invoke-virtual {v9}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10
    iget-object v6, v9, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;

    invoke-static {v6, v8}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;->access$300(Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;Ljava/lang/String;)V

    .line 11
    sget-object v6, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request$UploadType;->AVATAR:Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request$UploadType;

    .line 12
    invoke-virtual {v9}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13
    iget-object v7, v9, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v7, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;

    invoke-static {v7, v6}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;->access$700(Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request$UploadType;)V

    .line 14
    invoke-virtual {v9}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    .line 15
    check-cast v6, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;

    .line 16
    invoke-virtual {v4, v6}, Le/a/t2/a/e/a/b$a;->j(Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;)Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;

    move-result-object v4

    const-string v6, "stub.getMediaHandles(request)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;->getFormFieldsMap()Ljava/util/Map;

    move-result-object v6

    const-string v7, "result.formFieldsMap"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;->getUploadUrl()Ljava/lang/String;

    move-result-object v7

    const-string v9, "result.uploadUrl"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7, v8, p1}, Le/a/a/k/a/a1;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    new-instance p1, Le/a/a/k/a/d2;

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    invoke-direct {p1, v5, v4, v3, v6}, Le/a/a/k/a/d2;-><init>(ZLjava/lang/String;Ljava/lang/Integer;I)V

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Le/a/a/k/a/d2;

    invoke-direct {p1, v2, v3, v0, v1}, Le/a/a/k/a/d2;-><init>(ZLjava/lang/String;Ljava/lang/Integer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :catch_0
    new-instance p1, Le/a/a/k/a/d2;

    invoke-direct {p1, v2, v3, v0, v1}, Le/a/a/k/a/d2;-><init>(ZLjava/lang/String;Ljava/lang/Integer;I)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 21
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 22
    new-instance p1, Le/a/a/k/a/d2;

    invoke-direct {p1, v2, v3, v0, v1}, Le/a/a/k/a/d2;-><init>(ZLjava/lang/String;Ljava/lang/Integer;I)V

    :goto_0
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Le/a/a/k/a/d2;

    const v0, 0x7f1203fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v2, v3, v0, v1}, Le/a/a/k/a/d2;-><init>(ZLjava/lang/String;Ljava/lang/Integer;I)V

    return-object p1

    .line 24
    :cond_2
    new-instance p1, Le/a/a/k/a/d2;

    const v0, 0x7f1203fa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v2, v3, v0, v1}, Le/a/a/k/a/d2;-><init>(ZLjava/lang/String;Ljava/lang/Integer;I)V

    return-object p1

    .line 25
    :cond_3
    new-instance p1, Le/a/a/k/a/d2;

    invoke-direct {p1, v2, v3, v0, v1}, Le/a/a/k/a/d2;-><init>(ZLjava/lang/String;Ljava/lang/Integer;I)V

    return-object p1

    .line 26
    :cond_4
    new-instance p1, Le/a/a/k/a/d2;

    invoke-direct {p1, v2, v3, v0, v1}, Le/a/a/k/a/d2;-><init>(ZLjava/lang/String;Ljava/lang/Integer;I)V

    return-object p1
.end method

.method public final b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, "uri.pathSegments"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    new-instance v1, Lu3/d0$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lu3/d0$a;-><init>(Ljava/lang/String;I)V

    .line 3
    sget-object v4, Lu3/d0;->h:Lu3/c0;

    invoke-virtual {v1, v4}, Lu3/d0$a;->e(Lu3/c0;)Lu3/d0$a;

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v5, v4}, Lu3/d0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/d0$a;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Le/a/a/k/a/a1$a;

    iget-object v4, p0, Le/a/a/k/a/a1;->b:Landroid/content/ContentResolver;

    invoke-direct {p1, v4, p3, p4}, Le/a/a/k/a/a1$a;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)V

    const-string p3, "file"

    invoke-virtual {v1, p3, v0, p1}, Lu3/d0$a;->b(Ljava/lang/String;Ljava/lang/String;Lu3/j0;)Lu3/d0$a;

    .line 7
    invoke-virtual {v1}, Lu3/d0$a;->d()Lu3/d0;

    move-result-object p1

    .line 8
    new-instance p3, Lu3/g0$a;

    invoke-direct {p3}, Lu3/g0$a;-><init>()V

    .line 9
    invoke-virtual {p3, p2}, Lu3/g0$a;->i(Ljava/lang/String;)Lu3/g0$a;

    .line 10
    const-class p2, Ljava/lang/Object;

    invoke-virtual {p3, p2, v0}, Lu3/g0$a;->h(Ljava/lang/Class;Ljava/lang/Object;)Lu3/g0$a;

    .line 11
    invoke-virtual {p3, p1}, Lu3/g0$a;->f(Lu3/j0;)Lu3/g0$a;

    .line 12
    invoke-virtual {p3}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object p1

    .line 13
    iget-object p2, p0, Le/a/a/k/a/a1;->c:Lu3/e0;

    invoke-virtual {p2, p1}, Lu3/e0;->a(Lu3/g0;)Lu3/f;

    move-result-object p1

    .line 14
    check-cast p1, Lu3/p0/g/e;

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lu3/p0/g/e;->execute()Lu3/k0;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    invoke-virtual {p1}, Lu3/k0;->j()Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p3, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    :try_start_2
    invoke-static {p1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catchall_0
    move-exception p3

    .line 16
    :try_start_3
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p4

    :try_start_4
    invoke-static {p1, p3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 17
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    return p2
.end method
