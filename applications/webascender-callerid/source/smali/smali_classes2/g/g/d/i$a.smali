.class public final Lg/g/d/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lg/g/d/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;Lg/g/d/m/a/b;Lcom/hiya/api/zipkin/interceptor/TracingEnableState;Lg/g/d/m/a/c;Lg/g/d/f;)Lg/g/d/h;
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "serviceName"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headersInfo"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "randomIdGenerator"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracingEnableState"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracerProvider"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spanFactory"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lg/g/d/i;->f()Lg/g/d/h;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lg/g/d/i;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lg/g/d/i;-><init>(Ljava/lang/String;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;Lg/g/d/m/a/b;Lcom/hiya/api/zipkin/interceptor/TracingEnableState;Lg/g/d/m/a/c;Lg/g/d/f;Lkotlin/w/c/g;)V

    .line 2
    invoke-static {v0}, Lg/g/d/i;->g(Lg/g/d/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
