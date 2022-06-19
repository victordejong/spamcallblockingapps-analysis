.class Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloaderSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/AttachmentDownloaderComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttachmentDownloaderSelector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectData(Lzendesk/support/request/StateConversation;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/StateConversation;",
            ")",
            "Ljava/util/List<",
            "Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getAttachmentIdMapper()Lzendesk/support/request/StateIdMapper;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getLocalId()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getMessages()Ljava/util/List;

    move-result-object p1

    .line 4
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/support/request/StateMessage;

    .line 6
    invoke-virtual {v3}, Lzendesk/support/request/StateMessage;->getAttachments()Ljava/util/List;

    move-result-object v3

    .line 7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/request/StateRequestAttachment;

    .line 8
    invoke-virtual {v4}, Lzendesk/support/request/StateRequestAttachment;->getId()J

    move-result-wide v5

    .line 9
    invoke-virtual {v4}, Lzendesk/support/request/StateRequestAttachment;->getLocalFile()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 10
    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Lzendesk/support/request/StateIdMapper;->hasRemoteId(Ljava/lang/Long;)Z

    move-result v8

    .line 11
    invoke-virtual {v4}, Lzendesk/support/request/StateRequestAttachment;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v7, :cond_1

    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    .line 12
    new-instance v7, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;

    .line 13
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lzendesk/support/request/StateIdMapper;->getRemoteId(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v7, v1, v5, v6, v4}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;-><init>(Ljava/lang/String;JLzendesk/support/request/StateRequestAttachment;)V

    .line 14
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v2
.end method
