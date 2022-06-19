.class Lg/g/a/a/i/n/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/i/n/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "Li/c/b0/b/v<",
        "*>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final retrofit:Lretrofit2/Retrofit;

.field private final wrapped:Lretrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/CallAdapter<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit2/Retrofit;Lretrofit2/CallAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Retrofit;",
            "Lretrofit2/CallAdapter<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/n/j$a;->retrofit:Lretrofit2/Retrofit;

    .line 3
    iput-object p2, p0, Lg/g/a/a/i/n/j$a;->wrapped:Lretrofit2/CallAdapter;

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)Li/c/b0/b/i;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/i/n/j$a;->asHiyaRetrofitException(Ljava/lang/Throwable;)Lcom/hiya/api/exception/HiyaRetrofitException;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/e;->r(Ljava/lang/Throwable;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method private asHiyaRetrofitException(Ljava/lang/Throwable;)Lcom/hiya/api/exception/HiyaRetrofitException;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/hiya/api/exception/HiyaRetrofitException;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/hiya/api/exception/HiyaRetrofitException;

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lretrofit2/HttpException;

    .line 5
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lretrofit2/Response;->raw()Lm/g0;

    move-result-object v0

    invoke-virtual {v0}, Lm/g0;->M()Lm/e0;

    move-result-object v0

    invoke-virtual {v0}, Lm/e0;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/g/a/a/i/n/j$a;->retrofit:Lretrofit2/Retrofit;

    invoke-static {v0, p1, v1}, Lcom/hiya/api/exception/HiyaRetrofitException;->d(Ljava/lang/String;Lretrofit2/Response;Lretrofit2/Retrofit;)Lcom/hiya/api/exception/HiyaRetrofitException;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    instance-of v0, p1, Lcom/hiya/api/exception/HiyaTooManyRequestsException;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Lcom/hiya/api/exception/HiyaTooManyRequestsException;

    invoke-virtual {p1}, Lcom/hiya/api/exception/HiyaTooManyRequestsException;->a()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1ad

    const-string v2, ""

    .line 9
    invoke-static {v1, v2}, Lm/h0;->create(Lm/a0;Ljava/lang/String;)Lm/h0;

    move-result-object v1

    invoke-static {v0, v1}, Lretrofit2/Response;->error(ILm/h0;)Lretrofit2/Response;

    move-result-object v0

    iget-object v1, p0, Lg/g/a/a/i/n/j$a;->retrofit:Lretrofit2/Retrofit;

    .line 10
    invoke-static {p1, v0, v1}, Lcom/hiya/api/exception/HiyaRetrofitException;->d(Ljava/lang/String;Lretrofit2/Response;Lretrofit2/Retrofit;)Lcom/hiya/api/exception/HiyaRetrofitException;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    invoke-direct {p0, p1}, Lg/g/a/a/i/n/j$a;->isNetworkConnectionException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {p1}, Lcom/hiya/api/exception/HiyaRetrofitException;->f(Ljava/lang/Throwable;)Lcom/hiya/api/exception/HiyaRetrofitException;

    move-result-object p1

    return-object p1

    .line 13
    :cond_3
    instance-of v0, p1, Lcom/hiya/api/exception/v4/HiyaRetirementException;

    if-eqz v0, :cond_4

    .line 14
    check-cast p1, Lcom/hiya/api/exception/v4/HiyaRetirementException;

    .line 15
    invoke-virtual {p1}, Lcom/hiya/api/exception/v4/HiyaRetirementException;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x19a

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lm/h0;->create(Lm/a0;Ljava/lang/String;)Lm/h0;

    move-result-object p1

    invoke-static {v2, p1}, Lretrofit2/Response;->error(ILm/h0;)Lretrofit2/Response;

    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Lcom/hiya/api/exception/HiyaRetrofitException;->g(Ljava/lang/String;Lretrofit2/Response;)Lcom/hiya/api/exception/HiyaRetrofitException;

    move-result-object p1

    return-object p1

    .line 18
    :cond_4
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_5

    .line 19
    check-cast p1, Ljava/io/IOException;

    invoke-static {p1}, Lcom/hiya/api/exception/HiyaRetrofitException;->e(Ljava/io/IOException;)Lcom/hiya/api/exception/HiyaRetrofitException;

    move-result-object p1

    return-object p1

    .line 20
    :cond_5
    invoke-static {p1}, Lcom/hiya/api/exception/HiyaRetrofitException;->i(Ljava/lang/Throwable;)Lcom/hiya/api/exception/HiyaRetrofitException;

    move-result-object p1

    return-object p1
.end method

.method private synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lg/g/a/a/i/n/j$a;->asHiyaRetrofitException(Ljava/lang/Throwable;)Lcom/hiya/api/exception/HiyaRetrofitException;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/e0;->k(Ljava/lang/Throwable;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method private synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lretrofit2/Response;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lretrofit2/Response;

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, v0}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    invoke-direct {p0, p1}, Lg/g/a/a/i/n/j$a;->asHiyaRetrofitException(Ljava/lang/Throwable;)Lcom/hiya/api/exception/HiyaRetrofitException;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/e0;->k(Ljava/lang/Throwable;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method private synthetic g(Ljava/lang/Throwable;)Li/c/b0/b/a0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/i/n/j$a;->asHiyaRetrofitException(Ljava/lang/Throwable;)Lcom/hiya/api/exception/HiyaRetrofitException;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/v;->error(Ljava/lang/Throwable;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lretrofit2/Response;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lretrofit2/Response;

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, v0}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    invoke-direct {p0, p1}, Lg/g/a/a/i/n/j$a;->asHiyaRetrofitException(Ljava/lang/Throwable;)Lcom/hiya/api/exception/HiyaRetrofitException;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/v;->error(Ljava/lang/Throwable;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private isNetworkConnectionException(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/ConnectException;

    if-nez v0, :cond_1

    instance-of p1, p1, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/n/j$a;->wrapped:Lretrofit2/CallAdapter;

    invoke-interface {v0, p1}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Li/c/b0/b/e;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Li/c/b0/b/e;

    new-instance v0, Lg/g/a/a/i/n/d;

    invoke-direct {v0, p0}, Lg/g/a/a/i/n/d;-><init>(Lg/g/a/a/i/n/j$a;)V

    .line 4
    invoke-virtual {p1, v0}, Li/c/b0/b/e;->B(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    instance-of v0, p1, Li/c/b0/b/e0;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Li/c/b0/b/e0;

    new-instance v0, Lg/g/a/a/i/n/b;

    invoke-direct {v0, p0}, Lg/g/a/a/i/n/b;-><init>(Lg/g/a/a/i/n/j$a;)V

    .line 7
    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->x(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    new-instance v0, Lg/g/a/a/i/n/e;

    invoke-direct {v0, p0}, Lg/g/a/a/i/n/e;-><init>(Lg/g/a/a/i/n/j$a;)V

    .line 8
    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->m(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    instance-of v0, p1, Li/c/b0/b/v;

    if-eqz v0, :cond_2

    .line 10
    check-cast p1, Li/c/b0/b/v;

    new-instance v0, Lg/g/a/a/i/n/c;

    invoke-direct {v0, p0}, Lg/g/a/a/i/n/c;-><init>(Lg/g/a/a/i/n/j$a;)V

    .line 11
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->onErrorResumeNext(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lg/g/a/a/i/n/a;

    invoke-direct {v0, p0}, Lg/g/a/a/i/n/a;-><init>(Lg/g/a/a/i/n/j$a;)V

    .line 12
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Rx return type not supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic b(Ljava/lang/Throwable;)Li/c/b0/b/i;
    .locals 0

    invoke-direct {p0, p1}, Lg/g/a/a/i/n/j$a;->a(Ljava/lang/Throwable;)Li/c/b0/b/i;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lg/g/a/a/i/n/j$a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lg/g/a/a/i/n/j$a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic h(Ljava/lang/Throwable;)Li/c/b0/b/a0;
    .locals 0

    invoke-direct {p0, p1}, Lg/g/a/a/i/n/j$a;->g(Ljava/lang/Throwable;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lg/g/a/a/i/n/j$a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/n/j$a;->wrapped:Lretrofit2/CallAdapter;

    invoke-interface {v0}, Lretrofit2/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
