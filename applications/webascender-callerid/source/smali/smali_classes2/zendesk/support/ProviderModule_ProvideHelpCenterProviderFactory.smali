.class public final Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/HelpCenterProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final helpCenterServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/ZendeskHelpCenterService;",
            ">;"
        }
    .end annotation
.end field

.field private final helpCenterSessionCacheProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/HelpCenterSessionCache;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/support/ProviderModule;

.field private final settingsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final supportBlipsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final zendeskTrackerProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/ZendeskTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ProviderModule;",
            "Lj/a/a<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ZendeskHelpCenterService;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/HelpCenterSessionCache;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ZendeskTracker;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;->module:Lzendesk/support/ProviderModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;->settingsProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;->supportBlipsProvider:Lj/a/a;

    .line 5
    iput-object p4, p0, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;->helpCenterServiceProvider:Lj/a/a;

    .line 6
    iput-object p5, p0, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;->helpCenterSessionCacheProvider:Lj/a/a;

    .line 7
    iput-object p6, p0, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;->zendeskTrackerProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ProviderModule;",
            "Lj/a/a<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ZendeskHelpCenterService;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/HelpCenterSessionCache;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ZendeskTracker;",
            ">;)",
            "Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;"
        }
    .end annotation

    .line 1
    new-instance v7, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;-><init>(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v7
.end method

.method public static provideHelpCenterProvider(Lzendesk/support/ProviderModule;Lzendesk/support/SupportSettingsProvider;Lzendesk/support/SupportBlipsProvider;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lzendesk/support/HelpCenterProvider;
    .locals 6

    .line 1
    move-object v3, p3

    check-cast v3, Lzendesk/support/ZendeskHelpCenterService;

    move-object v4, p4

    check-cast v4, Lzendesk/support/HelpCenterSessionCache;

    move-object v5, p5

    check-cast v5, Lzendesk/support/ZendeskTracker;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lzendesk/support/ProviderModule;->provideHelpCenterProvider(Lzendesk/support/SupportSettingsProvider;Lzendesk/support/SupportBlipsProvider;Lzendesk/support/ZendeskHelpCenterService;Lzendesk/support/HelpCenterSessionCache;Lzendesk/support/ZendeskTracker;)Lzendesk/support/HelpCenterProvider;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/support/HelpCenterProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;->get()Lzendesk/support/HelpCenterProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/HelpCenterProvider;
    .locals 6

    .line 2
    iget-object v0, p0, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;->module:Lzendesk/support/ProviderModule;

    iget-object v1, p0, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;->settingsProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/SupportSettingsProvider;

    iget-object v2, p0, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;->supportBlipsProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/SupportBlipsProvider;

    iget-object v3, p0, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;->helpCenterServiceProvider:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;->helpCenterSessionCacheProvider:Lj/a/a;

    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;->zendeskTrackerProvider:Lj/a/a;

    invoke-interface {v5}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lzendesk/support/ProviderModule_ProvideHelpCenterProviderFactory;->provideHelpCenterProvider(Lzendesk/support/ProviderModule;Lzendesk/support/SupportSettingsProvider;Lzendesk/support/SupportBlipsProvider;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lzendesk/support/HelpCenterProvider;

    move-result-object v0

    return-object v0
.end method
