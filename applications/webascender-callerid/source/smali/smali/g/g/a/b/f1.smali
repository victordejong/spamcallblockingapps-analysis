.class public final Lg/g/a/b/f1;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method public final a(Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor;Lm/l0/a;Lg/g/a/a/k/c;Lg/g/a/a/k/j;Lg/g/a/a/k/h;)Lm/c0$a;
    .locals 1

    const-string v0, "headersInterceptor"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpLoggingInterceptor"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaApiAuthInterceptor"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaUnauthorizedRequestHandlerInterceptor"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryAfterInterceptor"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lm/c0$a;

    invoke-direct {v0}, Lm/c0$a;-><init>()V

    .line 2
    invoke-virtual {v0, p3}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 3
    invoke-virtual {v0, p1}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 4
    invoke-virtual {v0, p4}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 5
    invoke-virtual {v0, p5}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 6
    sget-object p1, Lcom/hiya/client/support/logging/a;->c:Lcom/hiya/client/support/logging/a;

    invoke-virtual {p1}, Lcom/hiya/client/support/logging/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v0, p2}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;Lm/c0$a;)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;
    .locals 1

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okHttpClient"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->create(Ljava/lang/String;Lm/c0$a;)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;

    move-result-object p1

    :goto_1
    return-object p1
.end method
