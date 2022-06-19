.class public final Lzendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/core/AccessProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/AccessService;",
            ">;"
        }
    .end annotation
.end field

.field private final identityManagerProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/IdentityManager;",
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
            "Lzendesk/core/IdentityManager;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/AccessService;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory;->identityManagerProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory;->accessServiceProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/core/IdentityManager;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/AccessService;",
            ">;)",
            "Lzendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static provideAccessProvider(Ljava/lang/Object;Ljava/lang/Object;)Lzendesk/core/AccessProvider;
    .locals 0

    .line 1
    check-cast p0, Lzendesk/core/IdentityManager;

    check-cast p1, Lzendesk/core/AccessService;

    invoke-static {p0, p1}, Lzendesk/core/ZendeskProvidersModule;->provideAccessProvider(Lzendesk/core/IdentityManager;Lzendesk/core/AccessService;)Lzendesk/core/AccessProvider;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/core/AccessProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory;->get()Lzendesk/core/AccessProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/AccessProvider;
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory;->identityManagerProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lzendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory;->accessServiceProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory;->provideAccessProvider(Ljava/lang/Object;Ljava/lang/Object;)Lzendesk/core/AccessProvider;

    move-result-object v0

    return-object v0
.end method
