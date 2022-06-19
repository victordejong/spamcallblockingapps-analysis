.class public final Lzendesk/support/request/RequestModule_ProvidesComponentListenerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/request/HeadlessComponentListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final attachmentDownloaderProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/request/AttachmentDownloaderComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final persistenceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/request/ComponentPersistence;",
            ">;"
        }
    .end annotation
.end field

.field private final updatesComponentProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/request/ComponentUpdateActionHandlers;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/support/request/ComponentPersistence;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/request/AttachmentDownloaderComponent;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/request/ComponentUpdateActionHandlers;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/RequestModule_ProvidesComponentListenerFactory;->persistenceProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/RequestModule_ProvidesComponentListenerFactory;->attachmentDownloaderProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/support/request/RequestModule_ProvidesComponentListenerFactory;->updatesComponentProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesComponentListenerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/support/request/ComponentPersistence;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/request/AttachmentDownloaderComponent;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/request/ComponentUpdateActionHandlers;",
            ">;)",
            "Lzendesk/support/request/RequestModule_ProvidesComponentListenerFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/request/RequestModule_ProvidesComponentListenerFactory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/request/RequestModule_ProvidesComponentListenerFactory;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static providesComponentListener(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lzendesk/support/request/HeadlessComponentListener;
    .locals 0

    .line 1
    check-cast p0, Lzendesk/support/request/ComponentPersistence;

    check-cast p1, Lzendesk/support/request/AttachmentDownloaderComponent;

    check-cast p2, Lzendesk/support/request/ComponentUpdateActionHandlers;

    invoke-static {p0, p1, p2}, Lzendesk/support/request/RequestModule;->providesComponentListener(Lzendesk/support/request/ComponentPersistence;Lzendesk/support/request/AttachmentDownloaderComponent;Lzendesk/support/request/ComponentUpdateActionHandlers;)Lzendesk/support/request/HeadlessComponentListener;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/support/request/HeadlessComponentListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/request/RequestModule_ProvidesComponentListenerFactory;->get()Lzendesk/support/request/HeadlessComponentListener;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/request/HeadlessComponentListener;
    .locals 3

    .line 2
    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesComponentListenerFactory;->persistenceProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/request/RequestModule_ProvidesComponentListenerFactory;->attachmentDownloaderProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/request/RequestModule_ProvidesComponentListenerFactory;->updatesComponentProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lzendesk/support/request/RequestModule_ProvidesComponentListenerFactory;->providesComponentListener(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lzendesk/support/request/HeadlessComponentListener;

    move-result-object v0

    return-object v0
.end method
