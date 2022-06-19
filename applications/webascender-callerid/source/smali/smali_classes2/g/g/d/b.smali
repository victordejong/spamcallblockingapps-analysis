.class public final Lg/g/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/d/a;


# instance fields
.field private a:Lg/g/d/c;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/g/d/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lg/g/d/e;

.field private final d:Lcom/hiya/api/zipkin/interceptor/HeadersInfo;


# direct methods
.method public constructor <init>(Lg/g/d/e;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;)V
    .locals 1

    const-string v0, "span"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headersInfo"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/d/b;->c:Lg/g/d/e;

    iput-object p2, p0, Lg/g/d/b;->d:Lcom/hiya/api/zipkin/interceptor/HeadersInfo;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/g/d/b;->b:Ljava/util/List;

    return-void
.end method

.method private final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/d/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lkotlin/s/k;->C(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/d/e;

    .line 4
    invoke-interface {v1}, Lg/g/d/e;->a()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lg/g/d/e;)V
    .locals 1

    const-string v0, "span"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/d/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lg/g/d/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/d/b;->c:Lg/g/d/e;

    return-object v0
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/d/b;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lg/g/d/b;->c(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lg/g/d/b;->c:Lg/g/d/e;

    iget-object v1, p0, Lg/g/d/b;->d:Lcom/hiya/api/zipkin/interceptor/HeadersInfo;

    invoke-static {v0, v1}, Lg/g/d/n/a;->a(Lg/g/d/e;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;)V

    .line 3
    iget-object v0, p0, Lg/g/d/b;->c:Lg/g/d/e;

    invoke-interface {v0}, Lg/g/d/e;->j()Lg/g/d/c;

    move-result-object v0

    iput-object v0, p0, Lg/g/d/b;->a:Lg/g/d/c;

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/d/b;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lg/g/d/b;->c(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lg/g/d/b;->c:Lg/g/d/e;

    invoke-interface {v0}, Lg/g/d/e;->a()V

    .line 3
    iget-object v0, p0, Lg/g/d/b;->a:Lg/g/d/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/g/d/c;->close()V

    return-void

    :cond_0
    const-string v0, "scope"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
