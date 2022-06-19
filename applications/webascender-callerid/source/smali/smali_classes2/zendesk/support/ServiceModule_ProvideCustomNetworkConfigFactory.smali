.class public final Lzendesk/support/ServiceModule_ProvideCustomNetworkConfigFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/HelpCenterCachingNetworkConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final helpCenterCachingInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/HelpCenterCachingInterceptor;",
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
            "Lzendesk/support/HelpCenterCachingInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ServiceModule_ProvideCustomNetworkConfigFactory;->helpCenterCachingInterceptorProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;)Lzendesk/support/ServiceModule_ProvideCustomNetworkConfigFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/support/HelpCenterCachingInterceptor;",
            ">;)",
            "Lzendesk/support/ServiceModule_ProvideCustomNetworkConfigFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/ServiceModule_ProvideCustomNetworkConfigFactory;

    invoke-direct {v0, p0}, Lzendesk/support/ServiceModule_ProvideCustomNetworkConfigFactory;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static provideCustomNetworkConfig(Ljava/lang/Object;)Lzendesk/support/HelpCenterCachingNetworkConfig;
    .locals 1

    .line 1
    check-cast p0, Lzendesk/support/HelpCenterCachingInterceptor;

    invoke-static {p0}, Lzendesk/support/ServiceModule;->provideCustomNetworkConfig(Lzendesk/support/HelpCenterCachingInterceptor;)Lzendesk/support/HelpCenterCachingNetworkConfig;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/support/HelpCenterCachingNetworkConfig;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/ServiceModule_ProvideCustomNetworkConfigFactory;->get()Lzendesk/support/HelpCenterCachingNetworkConfig;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/HelpCenterCachingNetworkConfig;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/support/ServiceModule_ProvideCustomNetworkConfigFactory;->helpCenterCachingInterceptorProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lzendesk/support/ServiceModule_ProvideCustomNetworkConfigFactory;->provideCustomNetworkConfig(Ljava/lang/Object;)Lzendesk/support/HelpCenterCachingNetworkConfig;

    move-result-object v0

    return-object v0
.end method
