.class public final Lg/g/d/k/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg/g/d/k/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lg/g/d/k/i;)V
    .locals 1

    const-string v0, "tracingProvider"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/d/k/b;->a:Lg/g/d/k/i;

    return-void
.end method


# virtual methods
.method public final a()Lg/g/d/k/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/d/k/b;->a:Lg/g/d/k/i;

    invoke-interface {v0}, Lg/g/d/k/i;->a()Lg/g/d/k/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/d/k/b;->a:Lg/g/d/k/i;

    invoke-interface {v0}, Lg/g/d/k/i;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/hiya/api/zipkin/interceptor/HeadersInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/d/k/b;->a:Lg/g/d/k/i;

    invoke-interface {v0}, Lg/g/d/k/i;->c()Lcom/hiya/api/zipkin/interceptor/HeadersInfo;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;Lg/g/d/m/a/b;Lcom/hiya/api/zipkin/interceptor/TracingEnableState;Lg/g/d/m/a/c;Lg/g/d/f;)Lg/g/d/h;
    .locals 9

    const-string v0, "serviceName"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headersInfo"

    move-object v3, p3

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "randomIdGenerator"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracingEnableState"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracerProvider"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spanFactory"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lg/g/d/i;->g:Lg/g/d/i$a;

    move-object v4, p2

    invoke-virtual/range {v1 .. v8}, Lg/g/d/i$a;->a(Ljava/lang/String;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;Lg/g/d/m/a/b;Lcom/hiya/api/zipkin/interceptor/TracingEnableState;Lg/g/d/m/a/c;Lg/g/d/f;)Lg/g/d/h;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/d/k/b;->a:Lg/g/d/k/i;

    invoke-interface {v0}, Lg/g/d/k/i;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/hiya/api/zipkin/interceptor/TracingEnableState;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/d/k/b;->a:Lg/g/d/k/i;

    invoke-interface {v0}, Lg/g/d/k/i;->d()Lcom/hiya/api/zipkin/interceptor/TracingEnableState;

    move-result-object v0

    return-object v0
.end method
