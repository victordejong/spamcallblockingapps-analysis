.class public final Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/core/RestServiceProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final coreOkHttpClientProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/c0;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaOkHttpClientProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/c0;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/core/ZendeskNetworkModule;

.field private final retrofitProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private final standardOkHttpClientProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/c0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/core/ZendeskNetworkModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/ZendeskNetworkModule;",
            "Lj/a/a<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;->module:Lzendesk/core/ZendeskNetworkModule;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;->retrofitProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;->mediaOkHttpClientProvider:Lj/a/a;

    .line 5
    iput-object p4, p0, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;->standardOkHttpClientProvider:Lj/a/a;

    .line 6
    iput-object p5, p0, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;->coreOkHttpClientProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lzendesk/core/ZendeskNetworkModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/ZendeskNetworkModule;",
            "Lj/a/a<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;)",
            "Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;"
        }
    .end annotation

    .line 1
    new-instance v6, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;-><init>(Lzendesk/core/ZendeskNetworkModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v6
.end method

.method public static provideRestServiceProvider(Lzendesk/core/ZendeskNetworkModule;Lretrofit2/Retrofit;Lm/c0;Lm/c0;Lm/c0;)Lzendesk/core/RestServiceProvider;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lzendesk/core/ZendeskNetworkModule;->provideRestServiceProvider(Lretrofit2/Retrofit;Lm/c0;Lm/c0;Lm/c0;)Lzendesk/core/RestServiceProvider;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/core/RestServiceProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;->get()Lzendesk/core/RestServiceProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/RestServiceProvider;
    .locals 5

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;->module:Lzendesk/core/ZendeskNetworkModule;

    iget-object v1, p0, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;->retrofitProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Retrofit;

    iget-object v2, p0, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;->mediaOkHttpClientProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/c0;

    iget-object v3, p0, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;->standardOkHttpClientProvider:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/c0;

    iget-object v4, p0, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;->coreOkHttpClientProvider:Lj/a/a;

    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/c0;

    invoke-static {v0, v1, v2, v3, v4}, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;->provideRestServiceProvider(Lzendesk/core/ZendeskNetworkModule;Lretrofit2/Retrofit;Lm/c0;Lm/c0;Lm/c0;)Lzendesk/core/RestServiceProvider;

    move-result-object v0

    return-object v0
.end method
