.class Lzendesk/support/request/HeadlessComponentListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final attachment:Lzendesk/support/request/AttachmentDownloaderComponent;

.field private final persistence:Lzendesk/support/request/ComponentPersistence;

.field private registered:Z

.field private final updateActionHandlersComponent:Lzendesk/support/request/ComponentUpdateActionHandlers;


# direct methods
.method constructor <init>(Lzendesk/support/request/ComponentPersistence;Lzendesk/support/request/AttachmentDownloaderComponent;Lzendesk/support/request/ComponentUpdateActionHandlers;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lzendesk/support/request/HeadlessComponentListener;->registered:Z

    .line 3
    iput-object p1, p0, Lzendesk/support/request/HeadlessComponentListener;->persistence:Lzendesk/support/request/ComponentPersistence;

    .line 4
    iput-object p2, p0, Lzendesk/support/request/HeadlessComponentListener;->attachment:Lzendesk/support/request/AttachmentDownloaderComponent;

    .line 5
    iput-object p3, p0, Lzendesk/support/request/HeadlessComponentListener;->updateActionHandlersComponent:Lzendesk/support/request/ComponentUpdateActionHandlers;

    return-void
.end method


# virtual methods
.method startListening(Lt/a/q;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/HeadlessComponentListener;->registered:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/support/request/HeadlessComponentListener;->persistence:Lzendesk/support/request/ComponentPersistence;

    invoke-virtual {v0}, Lzendesk/support/request/ComponentPersistence;->getSelector()Lt/a/p;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/request/HeadlessComponentListener;->persistence:Lzendesk/support/request/ComponentPersistence;

    invoke-interface {p1, v0, v1}, Lt/a/q;->e(Lt/a/p;Lt/a/k;)Lt/a/t;

    .line 3
    const-class v0, Lzendesk/support/request/StateConversation;

    iget-object v1, p0, Lzendesk/support/request/HeadlessComponentListener;->attachment:Lzendesk/support/request/AttachmentDownloaderComponent;

    invoke-interface {p1, v0, v1}, Lt/a/q;->a(Ljava/lang/Class;Lt/a/k;)Lt/a/t;

    .line 4
    const-class v0, Lzendesk/support/request/StateConversation;

    iget-object v1, p0, Lzendesk/support/request/HeadlessComponentListener;->updateActionHandlersComponent:Lzendesk/support/request/ComponentUpdateActionHandlers;

    invoke-interface {p1, v0, v1}, Lt/a/q;->a(Ljava/lang/Class;Lt/a/k;)Lt/a/t;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lzendesk/support/request/HeadlessComponentListener;->registered:Z

    :cond_0
    return-void
.end method
