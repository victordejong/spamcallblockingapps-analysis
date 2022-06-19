.class public final Lzendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/core/BaseStorage;",
        ">;"
    }
.end annotation


# instance fields
.field private final fileProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/io/File;",
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
            "Ljava/io/File;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/Serializer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory;->fileProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory;->serializerProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Ljava/io/File;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/Serializer;",
            ">;)",
            "Lzendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static providesDiskLruStorage(Ljava/io/File;Ljava/lang/Object;)Lzendesk/core/BaseStorage;
    .locals 0

    .line 1
    check-cast p1, Lzendesk/core/Serializer;

    invoke-static {p0, p1}, Lzendesk/core/ZendeskStorageModule;->providesDiskLruStorage(Ljava/io/File;Lzendesk/core/Serializer;)Lzendesk/core/BaseStorage;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/core/BaseStorage;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory;->get()Lzendesk/core/BaseStorage;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/BaseStorage;
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory;->fileProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Lzendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory;->serializerProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory;->providesDiskLruStorage(Ljava/io/File;Ljava/lang/Object;)Lzendesk/core/BaseStorage;

    move-result-object v0

    return-object v0
.end method
