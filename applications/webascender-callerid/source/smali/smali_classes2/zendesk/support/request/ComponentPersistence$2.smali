.class Lzendesk/support/request/ComponentPersistence$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/ComponentPersistence;->persistRequestId(Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/ComponentPersistence;

.field final synthetic val$requestPersistenceModel:Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;


# direct methods
.method constructor <init>(Lzendesk/support/request/ComponentPersistence;Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/ComponentPersistence$2;->this$0:Lzendesk/support/request/ComponentPersistence;

    iput-object p2, p0, Lzendesk/support/request/ComponentPersistence$2;->val$requestPersistenceModel:Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentPersistence$2;->this$0:Lzendesk/support/request/ComponentPersistence;

    invoke-static {v0}, Lzendesk/support/request/ComponentPersistence;->access$000(Lzendesk/support/request/ComponentPersistence;)Lzendesk/support/SupportUiStorage;

    move-result-object v0

    const-class v1, Lzendesk/support/request/ComponentPersistence$RequestIdMapper;

    const-string v2, "request_id_mapper"

    invoke-virtual {v0, v2, v1}, Lzendesk/support/SupportUiStorage;->read(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/ComponentPersistence$RequestIdMapper;

    .line 2
    iget-object v1, p0, Lzendesk/support/request/ComponentPersistence$2;->val$requestPersistenceModel:Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;

    invoke-virtual {v1}, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->getLocalRequestId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lzendesk/support/request/ComponentPersistence$RequestIdMapper;->removeLocalIdMapping(Ljava/lang/String;)Lzendesk/support/request/ComponentPersistence$RequestIdMapper;

    .line 4
    iget-object v1, p0, Lzendesk/support/request/ComponentPersistence$2;->this$0:Lzendesk/support/request/ComponentPersistence;

    invoke-static {v1}, Lzendesk/support/request/ComponentPersistence;->access$000(Lzendesk/support/request/ComponentPersistence;)Lzendesk/support/SupportUiStorage;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lzendesk/support/SupportUiStorage;->write(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lzendesk/support/request/ComponentPersistence$2;->this$0:Lzendesk/support/request/ComponentPersistence;

    invoke-static {v0}, Lzendesk/support/request/ComponentPersistence;->access$100(Lzendesk/support/request/ComponentPersistence;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
