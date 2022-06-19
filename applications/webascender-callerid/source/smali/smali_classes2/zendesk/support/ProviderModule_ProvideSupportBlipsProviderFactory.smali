.class public final Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/SupportBlipsProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final blipsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/BlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final localeProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/support/ProviderModule;


# direct methods
.method public constructor <init>(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ProviderModule;",
            "Lj/a/a<",
            "Lzendesk/core/BlipsProvider;",
            ">;",
            "Lj/a/a<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->module:Lzendesk/support/ProviderModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->blipsProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->localeProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;)Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ProviderModule;",
            "Lj/a/a<",
            "Lzendesk/core/BlipsProvider;",
            ">;",
            "Lj/a/a<",
            "Ljava/util/Locale;",
            ">;)",
            "Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;-><init>(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static provideSupportBlipsProvider(Lzendesk/support/ProviderModule;Lzendesk/core/BlipsProvider;Ljava/util/Locale;)Lzendesk/support/SupportBlipsProvider;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lzendesk/support/ProviderModule;->provideSupportBlipsProvider(Lzendesk/core/BlipsProvider;Ljava/util/Locale;)Lzendesk/support/SupportBlipsProvider;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/support/SupportBlipsProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->get()Lzendesk/support/SupportBlipsProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/SupportBlipsProvider;
    .locals 3

    .line 2
    iget-object v0, p0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->module:Lzendesk/support/ProviderModule;

    iget-object v1, p0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->blipsProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/BlipsProvider;

    iget-object v2, p0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->localeProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    invoke-static {v0, v1, v2}, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->provideSupportBlipsProvider(Lzendesk/support/ProviderModule;Lzendesk/core/BlipsProvider;Ljava/util/Locale;)Lzendesk/support/SupportBlipsProvider;

    move-result-object v0

    return-object v0
.end method
