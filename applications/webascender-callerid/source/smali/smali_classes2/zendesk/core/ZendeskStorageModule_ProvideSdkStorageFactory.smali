.class public final Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/core/Storage;",
        ">;"
    }
.end annotation


# instance fields
.field private final memoryCacheProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/MemoryCache;",
            ">;"
        }
    .end annotation
.end field

.field private final sdkBaseStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/BaseStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/SessionStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/SettingsStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/core/SettingsStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/SessionStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/BaseStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/MemoryCache;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;->settingsStorageProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;->sessionStorageProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;->sdkBaseStorageProvider:Lj/a/a;

    .line 5
    iput-object p4, p0, Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;->memoryCacheProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/core/SettingsStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/SessionStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/BaseStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/MemoryCache;",
            ">;)",
            "Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static provideSdkStorage(Ljava/lang/Object;Lzendesk/core/SessionStorage;Lzendesk/core/BaseStorage;Lzendesk/core/MemoryCache;)Lzendesk/core/Storage;
    .locals 0

    .line 1
    check-cast p0, Lzendesk/core/SettingsStorage;

    invoke-static {p0, p1, p2, p3}, Lzendesk/core/ZendeskStorageModule;->provideSdkStorage(Lzendesk/core/SettingsStorage;Lzendesk/core/SessionStorage;Lzendesk/core/BaseStorage;Lzendesk/core/MemoryCache;)Lzendesk/core/Storage;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/core/Storage;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;->get()Lzendesk/core/Storage;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/Storage;
    .locals 4

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;->settingsStorageProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;->sessionStorageProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/SessionStorage;

    iget-object v2, p0, Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;->sdkBaseStorageProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/core/BaseStorage;

    iget-object v3, p0, Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;->memoryCacheProvider:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/core/MemoryCache;

    invoke-static {v0, v1, v2, v3}, Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;->provideSdkStorage(Ljava/lang/Object;Lzendesk/core/SessionStorage;Lzendesk/core/BaseStorage;Lzendesk/core/MemoryCache;)Lzendesk/core/Storage;

    move-result-object v0

    return-object v0
.end method
