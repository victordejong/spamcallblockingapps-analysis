.class public final Lzendesk/core/CoreModule_GetSessionStorageFactory;
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
.field private final module:Lzendesk/core/CoreModule;


# direct methods
.method public constructor <init>(Lzendesk/core/CoreModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/CoreModule_GetSessionStorageFactory;->module:Lzendesk/core/CoreModule;

    return-void
.end method

.method public static create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetSessionStorageFactory;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/CoreModule_GetSessionStorageFactory;

    invoke-direct {v0, p0}, Lzendesk/core/CoreModule_GetSessionStorageFactory;-><init>(Lzendesk/core/CoreModule;)V

    return-object v0
.end method

.method public static getSessionStorage(Lzendesk/core/CoreModule;)Lzendesk/core/SessionStorage;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/CoreModule;->getSessionStorage()Lzendesk/core/SessionStorage;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/core/SessionStorage;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/CoreModule_GetSessionStorageFactory;->get()Lzendesk/core/SessionStorage;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/SessionStorage;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/core/CoreModule_GetSessionStorageFactory;->module:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_GetSessionStorageFactory;->getSessionStorage(Lzendesk/core/CoreModule;)Lzendesk/core/SessionStorage;

    move-result-object v0

    return-object v0
.end method
