.class public final Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final headersInfoProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/api/zipkin/interceptor/HeadersInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/api/zipkin/interceptor/HeadersInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor_Factory;->headersInfoProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;)Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/api/zipkin/interceptor/HeadersInfo;",
            ">;)",
            "Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor_Factory;

    invoke-direct {v0, p0}, Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor_Factory;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static newInstance(Lcom/hiya/api/zipkin/interceptor/HeadersInfo;)Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor;

    invoke-direct {v0, p0}, Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor;-><init>(Lcom/hiya/api/zipkin/interceptor/HeadersInfo;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor_Factory;->headersInfoProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/api/zipkin/interceptor/HeadersInfo;

    invoke-static {v0}, Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor_Factory;->newInstance(Lcom/hiya/api/zipkin/interceptor/HeadersInfo;)Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor_Factory;->get()Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor;

    move-result-object v0

    return-object v0
.end method
