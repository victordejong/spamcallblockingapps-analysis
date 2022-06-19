.class public final Lzendesk/support/SupportSdkModule_ProvidesZendeskUrlFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationConfigurationProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/support/SupportSdkModule;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportSdkModule;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSdkModule;",
            "Lj/a/a<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/SupportSdkModule_ProvidesZendeskUrlFactory;->module:Lzendesk/support/SupportSdkModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/SupportSdkModule_ProvidesZendeskUrlFactory;->applicationConfigurationProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lzendesk/support/SupportSdkModule;Lj/a/a;)Lzendesk/support/SupportSdkModule_ProvidesZendeskUrlFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSdkModule;",
            "Lj/a/a<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;)",
            "Lzendesk/support/SupportSdkModule_ProvidesZendeskUrlFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/SupportSdkModule_ProvidesZendeskUrlFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/support/SupportSdkModule_ProvidesZendeskUrlFactory;-><init>(Lzendesk/support/SupportSdkModule;Lj/a/a;)V

    return-object v0
.end method

.method public static providesZendeskUrl(Lzendesk/support/SupportSdkModule;Lzendesk/core/ApplicationConfiguration;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzendesk/support/SupportSdkModule;->providesZendeskUrl(Lzendesk/core/ApplicationConfiguration;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/SupportSdkModule_ProvidesZendeskUrlFactory;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/support/SupportSdkModule_ProvidesZendeskUrlFactory;->module:Lzendesk/support/SupportSdkModule;

    iget-object v1, p0, Lzendesk/support/SupportSdkModule_ProvidesZendeskUrlFactory;->applicationConfigurationProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/ApplicationConfiguration;

    invoke-static {v0, v1}, Lzendesk/support/SupportSdkModule_ProvidesZendeskUrlFactory;->providesZendeskUrl(Lzendesk/support/SupportSdkModule;Lzendesk/core/ApplicationConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
