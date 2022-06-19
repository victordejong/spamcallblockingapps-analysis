.class public final Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/SupportUiStorage;",
        ">;"
    }
.end annotation


# instance fields
.field private final diskLruCacheProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/h/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final gsonProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/support/SupportSdkModule;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportSdkModule;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSdkModule;",
            "Lj/a/a<",
            "Lg/h/a/a;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->module:Lzendesk/support/SupportSdkModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->diskLruCacheProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->gsonProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lzendesk/support/SupportSdkModule;Lj/a/a;Lj/a/a;)Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSdkModule;",
            "Lj/a/a<",
            "Lg/h/a/a;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;)",
            "Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;-><init>(Lzendesk/support/SupportSdkModule;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static supportUiStorage(Lzendesk/support/SupportSdkModule;Lg/h/a/a;Lcom/google/gson/f;)Lzendesk/support/SupportUiStorage;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lzendesk/support/SupportSdkModule;->supportUiStorage(Lg/h/a/a;Lcom/google/gson/f;)Lzendesk/support/SupportUiStorage;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/support/SupportUiStorage;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->get()Lzendesk/support/SupportUiStorage;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/SupportUiStorage;
    .locals 3

    .line 2
    iget-object v0, p0, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->module:Lzendesk/support/SupportSdkModule;

    iget-object v1, p0, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->diskLruCacheProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/h/a/a;

    iget-object v2, p0, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->gsonProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/f;

    invoke-static {v0, v1, v2}, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->supportUiStorage(Lzendesk/support/SupportSdkModule;Lg/h/a/a;Lcom/google/gson/f;)Lzendesk/support/SupportUiStorage;

    move-result-object v0

    return-object v0
.end method
