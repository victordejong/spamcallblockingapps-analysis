.class public final Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/core/SharedPreferencesStorage;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final serializerProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/Serializer;",
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
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/Serializer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory;->contextProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory;->serializerProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/Serializer;",
            ">;)",
            "Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static provideLegacyIdentityBaseStorage(Landroid/content/Context;Ljava/lang/Object;)Lzendesk/core/SharedPreferencesStorage;
    .locals 0

    .line 1
    check-cast p1, Lzendesk/core/Serializer;

    invoke-static {p0, p1}, Lzendesk/core/ZendeskStorageModule;->provideLegacyIdentityBaseStorage(Landroid/content/Context;Lzendesk/core/Serializer;)Lzendesk/core/SharedPreferencesStorage;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/core/SharedPreferencesStorage;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory;->get()Lzendesk/core/SharedPreferencesStorage;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/SharedPreferencesStorage;
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory;->contextProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory;->serializerProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory;->provideLegacyIdentityBaseStorage(Landroid/content/Context;Ljava/lang/Object;)Lzendesk/core/SharedPreferencesStorage;

    move-result-object v0

    return-object v0
.end method
