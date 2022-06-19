.class public final Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/core/NetworkInfoProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectivityManagerProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Landroid/net/ConnectivityManager;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;->contextProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;->connectivityManagerProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Landroid/net/ConnectivityManager;",
            ">;)",
            "Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static providerNetworkInfoProvider(Landroid/content/Context;Landroid/net/ConnectivityManager;)Lzendesk/core/NetworkInfoProvider;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lzendesk/core/ZendeskProvidersModule;->providerNetworkInfoProvider(Landroid/content/Context;Landroid/net/ConnectivityManager;)Lzendesk/core/NetworkInfoProvider;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/core/NetworkInfoProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;->get()Lzendesk/core/NetworkInfoProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/NetworkInfoProvider;
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;->contextProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;->connectivityManagerProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-static {v0, v1}, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;->providerNetworkInfoProvider(Landroid/content/Context;Landroid/net/ConnectivityManager;)Lzendesk/core/NetworkInfoProvider;

    move-result-object v0

    return-object v0
.end method
