.class public final Lg/g/b/d/c/i;
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
    .locals 4
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

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/b/d/e/a;

    .line 3
    invoke-virtual {v0}, Lg/g/b/d/e/a;->f()Lg/g/b/d/e/d;

    move-result-object v1

    sget-object v2, Lg/g/b/d/c/h;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lg/g/b/d/c/a;->a:Lcom/google/gson/f;

    invoke-virtual {v0}, Lg/g/b/d/e/a;->c()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lg/g/a/a/i/o/y;

    invoke-virtual {p1, v1, v3}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/g/a/a/i/o/y;

    .line 5
    iget-object v1, p0, Lg/g/b/d/c/a;->b:Lg/g/a/a/g/d;

    iget-object v3, p0, Lg/g/b/d/c/a;->c:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Lg/g/a/a/g/d;->a(Ljava/lang/String;Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    new-array v1, v2, [Lg/g/b/d/e/a;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 6
    invoke-static {v1}, Lkotlin/s/k;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 7
    invoke-virtual {p0, p1, v0, p2, p3}, Lg/g/b/d/c/a;->b(Li/c/b0/b/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "addApiRequestsToSuccessO\u2026                        )"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 8
    :cond_1
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "Observable.empty()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
