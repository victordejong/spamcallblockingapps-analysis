.class public final Lzendesk/support/StorageModule_ProvideHelpCenterSessionCacheFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/HelpCenterSessionCache;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/StorageModule;


# direct methods
.method public constructor <init>(Lzendesk/support/StorageModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/StorageModule_ProvideHelpCenterSessionCacheFactory;->module:Lzendesk/support/StorageModule;

    return-void
.end method

.method public static create(Lzendesk/support/StorageModule;)Lzendesk/support/StorageModule_ProvideHelpCenterSessionCacheFactory;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/StorageModule_ProvideHelpCenterSessionCacheFactory;

    invoke-direct {v0, p0}, Lzendesk/support/StorageModule_ProvideHelpCenterSessionCacheFactory;-><init>(Lzendesk/support/StorageModule;)V

    return-object v0
.end method

.method public static provideHelpCenterSessionCache(Lzendesk/support/StorageModule;)Lzendesk/support/HelpCenterSessionCache;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/StorageModule;->provideHelpCenterSessionCache()Lzendesk/support/HelpCenterSessionCache;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/support/HelpCenterSessionCache;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/StorageModule_ProvideHelpCenterSessionCacheFactory;->get()Lzendesk/support/HelpCenterSessionCache;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/HelpCenterSessionCache;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/support/StorageModule_ProvideHelpCenterSessionCacheFactory;->module:Lzendesk/support/StorageModule;

    invoke-static {v0}, Lzendesk/support/StorageModule_ProvideHelpCenterSessionCacheFactory;->provideHelpCenterSessionCache(Lzendesk/support/StorageModule;)Lzendesk/support/HelpCenterSessionCache;

    move-result-object v0

    return-object v0
.end method
