.class public final Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/core/ZendeskPushInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final pushDeviceIdStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/PushDeviceIdStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final pushProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/PushRegistrationProviderInternal;",
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
            "Lzendesk/core/PushRegistrationProviderInternal;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/PushDeviceIdStorage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->pushProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->pushDeviceIdStorageProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/core/PushRegistrationProviderInternal;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/PushDeviceIdStorage;",
            ">;)",
            "Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static providePushInterceptor(Ljava/lang/Object;Ljava/lang/Object;)Lzendesk/core/ZendeskPushInterceptor;
    .locals 0

    .line 1
    check-cast p0, Lzendesk/core/PushRegistrationProviderInternal;

    check-cast p1, Lzendesk/core/PushDeviceIdStorage;

    invoke-static {p0, p1}, Lzendesk/core/ZendeskNetworkModule;->providePushInterceptor(Lzendesk/core/PushRegistrationProviderInternal;Lzendesk/core/PushDeviceIdStorage;)Lzendesk/core/ZendeskPushInterceptor;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/core/ZendeskPushInterceptor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->get()Lzendesk/core/ZendeskPushInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/ZendeskPushInterceptor;
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->pushProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->pushDeviceIdStorageProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->providePushInterceptor(Ljava/lang/Object;Ljava/lang/Object;)Lzendesk/core/ZendeskPushInterceptor;

    move-result-object v0

    return-object v0
.end method
