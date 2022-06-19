.class public final Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# instance fields
.field private final headersInfo:Lcom/hiya/api/zipkin/interceptor/HeadersInfo;


# direct methods
.method public constructor <init>(Lcom/hiya/api/zipkin/interceptor/HeadersInfo;)V
    .locals 1

    const-string v0, "headersInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor;->headersInfo:Lcom/hiya/api/zipkin/interceptor/HeadersInfo;

    return-void
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 2

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    invoke-virtual {v0}, Lm/e0;->i()Lm/e0$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor;->headersInfo:Lcom/hiya/api/zipkin/interceptor/HeadersInfo;

    invoke-static {v0, v1}, Lcom/hiya/api/zipkin/util/RequestBuilderUtilsKt;->headers(Lm/e0$a;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;)V

    .line 3
    invoke-virtual {v0}, Lm/e0$a;->b()Lm/e0;

    move-result-object v0

    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object p1

    return-object p1
.end method
