.class public final Lzendesk/support/ServiceModule_ProvideZendeskHelpCenterServiceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/ZendeskHelpCenterService;",
        ">;"
    }
.end annotation


# instance fields
.field private final helpCenterServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/HelpCenterService;",
            ">;"
        }
    .end annotation
.end field

.field private final localeConverterProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ZendeskLocaleConverter;",
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
            "Lzendesk/support/HelpCenterService;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/ZendeskLocaleConverter;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ServiceModule_ProvideZendeskHelpCenterServiceFactory;->helpCenterServiceProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/support/ServiceModule_ProvideZendeskHelpCenterServiceFactory;->localeConverterProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;)Lzendesk/support/ServiceModule_ProvideZendeskHelpCenterServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/support/HelpCenterService;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/ZendeskLocaleConverter;",
            ">;)",
            "Lzendesk/support/ServiceModule_ProvideZendeskHelpCenterServiceFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/ServiceModule_ProvideZendeskHelpCenterServiceFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/support/ServiceModule_ProvideZendeskHelpCenterServiceFactory;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static provideZendeskHelpCenterService(Ljava/lang/Object;Lzendesk/core/ZendeskLocaleConverter;)Lzendesk/support/ZendeskHelpCenterService;
    .locals 0

    .line 1
    check-cast p0, Lzendesk/support/HelpCenterService;

    invoke-static {p0, p1}, Lzendesk/support/ServiceModule;->provideZendeskHelpCenterService(Lzendesk/support/HelpCenterService;Lzendesk/core/ZendeskLocaleConverter;)Lzendesk/support/ZendeskHelpCenterService;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/support/ZendeskHelpCenterService;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/ServiceModule_ProvideZendeskHelpCenterServiceFactory;->get()Lzendesk/support/ZendeskHelpCenterService;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/ZendeskHelpCenterService;
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/support/ServiceModule_ProvideZendeskHelpCenterServiceFactory;->helpCenterServiceProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/ServiceModule_ProvideZendeskHelpCenterServiceFactory;->localeConverterProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/ZendeskLocaleConverter;

    invoke-static {v0, v1}, Lzendesk/support/ServiceModule_ProvideZendeskHelpCenterServiceFactory;->provideZendeskHelpCenterService(Ljava/lang/Object;Lzendesk/core/ZendeskLocaleConverter;)Lzendesk/support/ZendeskHelpCenterService;

    move-result-object v0

    return-object v0
.end method
