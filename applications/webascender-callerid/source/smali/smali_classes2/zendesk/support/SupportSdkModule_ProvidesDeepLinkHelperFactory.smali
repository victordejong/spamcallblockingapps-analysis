.class public final Lzendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/ZendeskDeepLinkHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/SupportSdkModule;

.field private final parserProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/ZendeskDeepLinkParser;",
            ">;"
        }
    .end annotation
.end field

.field private final registryProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/support/SupportSdkModule;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSdkModule;",
            "Lj/a/a<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ZendeskDeepLinkParser;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory;->module:Lzendesk/support/SupportSdkModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory;->registryProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory;->parserProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lzendesk/support/SupportSdkModule;Lj/a/a;Lj/a/a;)Lzendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSdkModule;",
            "Lj/a/a<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ZendeskDeepLinkParser;",
            ">;)",
            "Lzendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory;-><init>(Lzendesk/support/SupportSdkModule;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static providesDeepLinkHelper(Lzendesk/support/SupportSdkModule;Lzendesk/core/ActionHandlerRegistry;Ljava/lang/Object;)Lzendesk/support/ZendeskDeepLinkHelper;
    .locals 0

    .line 1
    check-cast p2, Lzendesk/support/ZendeskDeepLinkParser;

    invoke-virtual {p0, p1, p2}, Lzendesk/support/SupportSdkModule;->providesDeepLinkHelper(Lzendesk/core/ActionHandlerRegistry;Lzendesk/support/ZendeskDeepLinkParser;)Lzendesk/support/ZendeskDeepLinkHelper;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/support/ZendeskDeepLinkHelper;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory;->get()Lzendesk/support/ZendeskDeepLinkHelper;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/ZendeskDeepLinkHelper;
    .locals 3

    .line 2
    iget-object v0, p0, Lzendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory;->module:Lzendesk/support/SupportSdkModule;

    iget-object v1, p0, Lzendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory;->registryProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/ActionHandlerRegistry;

    iget-object v2, p0, Lzendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory;->parserProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lzendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory;->providesDeepLinkHelper(Lzendesk/support/SupportSdkModule;Lzendesk/core/ActionHandlerRegistry;Ljava/lang/Object;)Lzendesk/support/ZendeskDeepLinkHelper;

    move-result-object v0

    return-object v0
.end method
