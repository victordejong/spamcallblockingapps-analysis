.class public final Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lm/c0;",
        ">;"
    }
.end annotation


# instance fields
.field private final acceptHeaderInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/AcceptHeaderInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final acceptLanguageHeaderInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/AcceptLanguageHeaderInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/core/ZendeskNetworkModule;

.field private final okHttpClientProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/c0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/core/ZendeskNetworkModule;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/ZendeskNetworkModule;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/AcceptLanguageHeaderInterceptor;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/AcceptHeaderInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;->module:Lzendesk/core/ZendeskNetworkModule;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;->okHttpClientProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;->acceptLanguageHeaderInterceptorProvider:Lj/a/a;

    .line 5
    iput-object p4, p0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;->acceptHeaderInterceptorProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lzendesk/core/ZendeskNetworkModule;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/ZendeskNetworkModule;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/AcceptLanguageHeaderInterceptor;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/AcceptHeaderInterceptor;",
            ">;)",
            "Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;-><init>(Lzendesk/core/ZendeskNetworkModule;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static provideCoreOkHttpClient(Lzendesk/core/ZendeskNetworkModule;Lm/c0;Ljava/lang/Object;Ljava/lang/Object;)Lm/c0;
    .locals 0

    .line 1
    check-cast p2, Lzendesk/core/AcceptLanguageHeaderInterceptor;

    check-cast p3, Lzendesk/core/AcceptHeaderInterceptor;

    invoke-virtual {p0, p1, p2, p3}, Lzendesk/core/ZendeskNetworkModule;->provideCoreOkHttpClient(Lm/c0;Lzendesk/core/AcceptLanguageHeaderInterceptor;Lzendesk/core/AcceptHeaderInterceptor;)Lm/c0;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lm/c0;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;->get()Lm/c0;

    move-result-object v0

    return-object v0
.end method

.method public get()Lm/c0;
    .locals 4

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;->module:Lzendesk/core/ZendeskNetworkModule;

    iget-object v1, p0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;->okHttpClientProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/c0;

    iget-object v2, p0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;->acceptLanguageHeaderInterceptorProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;->acceptHeaderInterceptorProvider:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;->provideCoreOkHttpClient(Lzendesk/core/ZendeskNetworkModule;Lm/c0;Ljava/lang/Object;Ljava/lang/Object;)Lm/c0;

    move-result-object v0

    return-object v0
.end method
