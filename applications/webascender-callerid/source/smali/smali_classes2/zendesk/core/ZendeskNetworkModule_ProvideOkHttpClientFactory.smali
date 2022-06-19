.class public final Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;
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

.field private final accessInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskAccessInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final authHeaderInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskAuthHeaderInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final cacheProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/d;",
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

.field private final pushInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskPushInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskSettingsInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final unauthorizedInterceptorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskUnauthorizedInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/core/ZendeskNetworkModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/ZendeskNetworkModule;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/ZendeskAccessInterceptor;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/ZendeskUnauthorizedInterceptor;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/ZendeskAuthHeaderInterceptor;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/ZendeskSettingsInterceptor;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/AcceptHeaderInterceptor;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/ZendeskPushInterceptor;",
            ">;",
            "Lj/a/a<",
            "Lm/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->module:Lzendesk/core/ZendeskNetworkModule;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->okHttpClientProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->accessInterceptorProvider:Lj/a/a;

    .line 5
    iput-object p4, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->unauthorizedInterceptorProvider:Lj/a/a;

    .line 6
    iput-object p5, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->authHeaderInterceptorProvider:Lj/a/a;

    .line 7
    iput-object p6, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->settingsInterceptorProvider:Lj/a/a;

    .line 8
    iput-object p7, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->acceptHeaderInterceptorProvider:Lj/a/a;

    .line 9
    iput-object p8, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->pushInterceptorProvider:Lj/a/a;

    .line 10
    iput-object p9, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->cacheProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lzendesk/core/ZendeskNetworkModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/ZendeskNetworkModule;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/ZendeskAccessInterceptor;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/ZendeskUnauthorizedInterceptor;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/ZendeskAuthHeaderInterceptor;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/ZendeskSettingsInterceptor;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/AcceptHeaderInterceptor;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/ZendeskPushInterceptor;",
            ">;",
            "Lj/a/a<",
            "Lm/d;",
            ">;)",
            "Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;"
        }
    .end annotation

    .line 1
    new-instance v10, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;-><init>(Lzendesk/core/ZendeskNetworkModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v10
.end method

.method public static provideOkHttpClient(Lzendesk/core/ZendeskNetworkModule;Lm/c0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lm/d;)Lm/c0;
    .locals 9

    .line 1
    move-object v2, p2

    check-cast v2, Lzendesk/core/ZendeskAccessInterceptor;

    move-object v3, p3

    check-cast v3, Lzendesk/core/ZendeskUnauthorizedInterceptor;

    move-object v4, p4

    check-cast v4, Lzendesk/core/ZendeskAuthHeaderInterceptor;

    move-object v5, p5

    check-cast v5, Lzendesk/core/ZendeskSettingsInterceptor;

    move-object v6, p6

    check-cast v6, Lzendesk/core/AcceptHeaderInterceptor;

    move-object/from16 v7, p7

    check-cast v7, Lzendesk/core/ZendeskPushInterceptor;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lzendesk/core/ZendeskNetworkModule;->provideOkHttpClient(Lm/c0;Lzendesk/core/ZendeskAccessInterceptor;Lzendesk/core/ZendeskUnauthorizedInterceptor;Lzendesk/core/ZendeskAuthHeaderInterceptor;Lzendesk/core/ZendeskSettingsInterceptor;Lzendesk/core/AcceptHeaderInterceptor;Lzendesk/core/ZendeskPushInterceptor;Lm/d;)Lm/c0;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lm/c0;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->get()Lm/c0;

    move-result-object v0

    return-object v0
.end method

.method public get()Lm/c0;
    .locals 9

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->module:Lzendesk/core/ZendeskNetworkModule;

    iget-object v1, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->okHttpClientProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/c0;

    iget-object v2, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->accessInterceptorProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->unauthorizedInterceptorProvider:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->authHeaderInterceptorProvider:Lj/a/a;

    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->settingsInterceptorProvider:Lj/a/a;

    invoke-interface {v5}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->acceptHeaderInterceptorProvider:Lj/a/a;

    invoke-interface {v6}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->pushInterceptorProvider:Lj/a/a;

    invoke-interface {v7}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->cacheProvider:Lj/a/a;

    invoke-interface {v8}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm/d;

    invoke-static/range {v0 .. v8}, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->provideOkHttpClient(Lzendesk/core/ZendeskNetworkModule;Lm/c0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lm/d;)Lm/c0;

    move-result-object v0

    return-object v0
.end method
