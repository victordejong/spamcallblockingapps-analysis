.class public final Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation


# instance fields
.field private final configurationProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final gsonProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;->configurationProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;->gsonProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;->okHttpClientProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;)",
            "Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static provideCoreRetrofit(Lzendesk/core/ApplicationConfiguration;Lcom/google/gson/f;Lm/c0;)Lretrofit2/Retrofit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lzendesk/core/ZendeskNetworkModule;->provideCoreRetrofit(Lzendesk/core/ApplicationConfiguration;Lcom/google/gson/f;Lm/c0;)Lretrofit2/Retrofit;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lretrofit2/Retrofit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;->get()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit2/Retrofit;
    .locals 3

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;->configurationProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/ApplicationConfiguration;

    iget-object v1, p0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;->gsonProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/f;

    iget-object v2, p0, Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;->okHttpClientProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/c0;

    invoke-static {v0, v1, v2}, Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;->provideCoreRetrofit(Lzendesk/core/ApplicationConfiguration;Lcom/google/gson/f;Lm/c0;)Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method
