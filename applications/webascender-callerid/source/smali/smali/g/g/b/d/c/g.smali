.class public final Lg/g/b/d/c/g;
.super Lg/g/b/d/c/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/gson/f;Lg/g/a/a/g/d;Ljava/lang/String;)V
    .locals 1

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lg/g/b/d/c/a;-><init>(Lcom/google/gson/f;Lg/g/a/a/g/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/b/d/e/a;",
            ">;",
            "Ljava/util/List<",
            "Lg/g/b/d/e/a;",
            ">;",
            "Ljava/util/List<",
            "Lg/g/b/d/e/a;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successfulRequests"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedRequests"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/g/b/d/e/a;

    .line 5
    invoke-virtual {v2}, Lg/g/b/d/e/a;->f()Lg/g/b/d/e/d;

    move-result-object v3

    .line 6
    sget-object v4, Lg/g/b/d/c/f;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v3, p0, Lg/g/b/d/c/a;->a:Lcom/google/gson/f;

    invoke-virtual {v2}, Lg/g/b/d/e/a;->c()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lg/g/a/a/i/l/t;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/g/a/a/i/l/t;

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lg/g/a/a/i/l/t;->setEventSentTimeInNanoseconds(J)V

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    iget-object p1, p0, Lg/g/b/d/c/a;->b:Lg/g/a/a/g/d;

    iget-object v2, p0, Lg/g/b/d/c/a;->c:Ljava/lang/String;

    new-instance v3, Lg/g/a/a/i/l/s;

    invoke-direct {v3, v0}, Lg/g/a/a/i/l/s;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v2, v3}, Lg/g/a/a/g/d;->a(Ljava/lang/String;Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1, v1, p2, p3}, Lg/g/b/d/c/a;->b(Li/c/b0/b/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "addApiRequestsToSuccessO\u2026equests\n                )"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 14
    :cond_2
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "Observable.empty()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
