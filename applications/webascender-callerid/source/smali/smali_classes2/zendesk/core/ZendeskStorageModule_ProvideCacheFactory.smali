.class public final Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lm/d;",
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


# direct methods
.method public constructor <init>(Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;->fileProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;)Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Ljava/io/File;",
            ">;)",
            "Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static provideCache(Ljava/io/File;)Lm/d;
    .locals 1

    .line 1
    invoke-static {p0}, Lzendesk/core/ZendeskStorageModule;->provideCache(Ljava/io/File;)Lm/d;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lm/d;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;->get()Lm/d;

    move-result-object v0

    return-object v0
.end method

.method public get()Lm/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;->fileProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;->provideCache(Ljava/io/File;)Lm/d;

    move-result-object v0

    return-object v0
.end method
