.class public final Lzendesk/core/ZendeskApplicationModule_ProvideApplicationConfigurationFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/core/ApplicationConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/core/ZendeskApplicationModule;


# direct methods
.method public constructor <init>(Lzendesk/core/ZendeskApplicationModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationConfigurationFactory;->module:Lzendesk/core/ZendeskApplicationModule;

    return-void
.end method

.method public static create(Lzendesk/core/ZendeskApplicationModule;)Lzendesk/core/ZendeskApplicationModule_ProvideApplicationConfigurationFactory;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationConfigurationFactory;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationConfigurationFactory;-><init>(Lzendesk/core/ZendeskApplicationModule;)V

    return-object v0
.end method

.method public static provideApplicationConfiguration(Lzendesk/core/ZendeskApplicationModule;)Lzendesk/core/ApplicationConfiguration;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskApplicationModule;->provideApplicationConfiguration()Lzendesk/core/ApplicationConfiguration;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/core/ApplicationConfiguration;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationConfigurationFactory;->get()Lzendesk/core/ApplicationConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/ApplicationConfiguration;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationConfigurationFactory;->module:Lzendesk/core/ZendeskApplicationModule;

    invoke-static {v0}, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationConfigurationFactory;->provideApplicationConfiguration(Lzendesk/core/ZendeskApplicationModule;)Lzendesk/core/ApplicationConfiguration;

    move-result-object v0

    return-object v0
.end method
