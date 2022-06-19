.class public final Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/core/SessionStorage;",
        ">;"
    }
.end annotation


# instance fields
.field private final additionalSdkStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/BaseStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final belvedereDirProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final cacheDirProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/io/File;",
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

.field private final dataDirProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final identityStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/IdentityStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaCacheProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/BaseStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/core/IdentityStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/BaseStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/BaseStorage;",
            ">;",
            "Lj/a/a<",
            "Lm/d;",
            ">;",
            "Lj/a/a<",
            "Ljava/io/File;",
            ">;",
            "Lj/a/a<",
            "Ljava/io/File;",
            ">;",
            "Lj/a/a<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->identityStorageProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->additionalSdkStorageProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->mediaCacheProvider:Lj/a/a;

    .line 5
    iput-object p4, p0, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->cacheProvider:Lj/a/a;

    .line 6
    iput-object p5, p0, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->cacheDirProvider:Lj/a/a;

    .line 7
    iput-object p6, p0, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->dataDirProvider:Lj/a/a;

    .line 8
    iput-object p7, p0, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->belvedereDirProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/core/IdentityStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/BaseStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/BaseStorage;",
            ">;",
            "Lj/a/a<",
            "Lm/d;",
            ">;",
            "Lj/a/a<",
            "Ljava/io/File;",
            ">;",
            "Lj/a/a<",
            "Ljava/io/File;",
            ">;",
            "Lj/a/a<",
            "Ljava/io/File;",
            ">;)",
            "Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;"
        }
    .end annotation

    .line 1
    new-instance v8, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v8
.end method

.method public static provideSessionStorage(Ljava/lang/Object;Lzendesk/core/BaseStorage;Lzendesk/core/BaseStorage;Lm/d;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Lzendesk/core/SessionStorage;
    .locals 7

    .line 1
    move-object v0, p0

    check-cast v0, Lzendesk/core/IdentityStorage;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lzendesk/core/ZendeskStorageModule;->provideSessionStorage(Lzendesk/core/IdentityStorage;Lzendesk/core/BaseStorage;Lzendesk/core/BaseStorage;Lm/d;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Lzendesk/core/SessionStorage;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/core/SessionStorage;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->get()Lzendesk/core/SessionStorage;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/SessionStorage;
    .locals 8

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->identityStorageProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->additionalSdkStorageProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lzendesk/core/BaseStorage;

    iget-object v0, p0, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->mediaCacheProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lzendesk/core/BaseStorage;

    iget-object v0, p0, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->cacheProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lm/d;

    iget-object v0, p0, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->cacheDirProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/io/File;

    iget-object v0, p0, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->dataDirProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/io/File;

    iget-object v0, p0, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->belvedereDirProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/io/File;

    invoke-static/range {v1 .. v7}, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->provideSessionStorage(Ljava/lang/Object;Lzendesk/core/BaseStorage;Lzendesk/core/BaseStorage;Lm/d;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Lzendesk/core/SessionStorage;

    move-result-object v0

    return-object v0
.end method
