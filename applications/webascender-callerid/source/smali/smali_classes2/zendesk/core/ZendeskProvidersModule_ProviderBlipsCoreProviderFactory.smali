.class public final Lzendesk/core/ZendeskProvidersModule_ProviderBlipsCoreProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/core/BlipsCoreProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final zendeskBlipsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskBlipsProvider;",
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
            "Lzendesk/core/ZendeskBlipsProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskProvidersModule_ProviderBlipsCoreProviderFactory;->zendeskBlipsProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;)Lzendesk/core/ZendeskProvidersModule_ProviderBlipsCoreProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/core/ZendeskBlipsProvider;",
            ">;)",
            "Lzendesk/core/ZendeskProvidersModule_ProviderBlipsCoreProviderFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/core/ZendeskProvidersModule_ProviderBlipsCoreProviderFactory;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskProvidersModule_ProviderBlipsCoreProviderFactory;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static providerBlipsCoreProvider(Ljava/lang/Object;)Lzendesk/core/BlipsCoreProvider;
    .locals 1

    .line 1
    check-cast p0, Lzendesk/core/ZendeskBlipsProvider;

    invoke-static {p0}, Lzendesk/core/ZendeskProvidersModule;->providerBlipsCoreProvider(Lzendesk/core/ZendeskBlipsProvider;)Lzendesk/core/BlipsCoreProvider;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/core/BlipsCoreProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskProvidersModule_ProviderBlipsCoreProviderFactory;->get()Lzendesk/core/BlipsCoreProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/BlipsCoreProvider;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskProvidersModule_ProviderBlipsCoreProviderFactory;->zendeskBlipsProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lzendesk/core/ZendeskProvidersModule_ProviderBlipsCoreProviderFactory;->providerBlipsCoreProvider(Ljava/lang/Object;)Lzendesk/core/BlipsCoreProvider;

    move-result-object v0

    return-object v0
.end method
