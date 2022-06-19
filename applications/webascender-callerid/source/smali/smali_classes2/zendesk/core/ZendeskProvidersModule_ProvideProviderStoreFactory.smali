.class public final Lzendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/core/ProviderStore;",
        ">;"
    }
.end annotation


# instance fields
.field private final pushRegistrationProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/PushRegistrationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final userProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/UserProvider;",
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
            "Lzendesk/core/UserProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/PushRegistrationProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory;->userProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory;->pushRegistrationProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/core/UserProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/PushRegistrationProvider;",
            ">;)",
            "Lzendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static provideProviderStore(Lzendesk/core/UserProvider;Lzendesk/core/PushRegistrationProvider;)Lzendesk/core/ProviderStore;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lzendesk/core/ZendeskProvidersModule;->provideProviderStore(Lzendesk/core/UserProvider;Lzendesk/core/PushRegistrationProvider;)Lzendesk/core/ProviderStore;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/core/ProviderStore;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory;->get()Lzendesk/core/ProviderStore;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/ProviderStore;
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory;->userProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/UserProvider;

    iget-object v1, p0, Lzendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory;->pushRegistrationProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/PushRegistrationProvider;

    invoke-static {v0, v1}, Lzendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory;->provideProviderStore(Lzendesk/core/UserProvider;Lzendesk/core/PushRegistrationProvider;)Lzendesk/core/ProviderStore;

    move-result-object v0

    return-object v0
.end method
