.class public Lzendesk/support/CreateRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final transient METADATA_SDK_KEY:Ljava/lang/String; = "sdk"


# instance fields
.field private comment:Lzendesk/support/Comment;

.field private customFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/CustomField;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private subject:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ticketFormId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/CustomField;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/CreateRequest;->customFields:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/CreateRequest;->comment:Lzendesk/support/Comment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lzendesk/support/Comment;->getBody()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/CreateRequest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/CreateRequest;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/CreateRequest;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTicketFormId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/CreateRequest;->ticketFormId:Ljava/lang/Long;

    return-object v0
.end method

.method public setAttachments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/CreateRequest;->comment:Lzendesk/support/Comment;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lzendesk/support/Comment;

    invoke-direct {v0}, Lzendesk/support/Comment;-><init>()V

    iput-object v0, p0, Lzendesk/support/CreateRequest;->comment:Lzendesk/support/Comment;

    .line 3
    :cond_0
    iget-object v0, p0, Lzendesk/support/CreateRequest;->comment:Lzendesk/support/Comment;

    invoke-virtual {v0, p1}, Lzendesk/support/Comment;->setAttachments(Ljava/util/List;)V

    return-void
.end method

.method public setCustomFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/CustomField;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lzendesk/support/CreateRequest;->customFields:Ljava/util/List;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/CreateRequest;->comment:Lzendesk/support/Comment;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lzendesk/support/Comment;

    invoke-direct {v0}, Lzendesk/support/Comment;-><init>()V

    iput-object v0, p0, Lzendesk/support/CreateRequest;->comment:Lzendesk/support/Comment;

    .line 3
    :cond_0
    iget-object v0, p0, Lzendesk/support/CreateRequest;->comment:Lzendesk/support/Comment;

    invoke-virtual {v0, p1}, Lzendesk/support/Comment;->setBody(Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/CreateRequest;->id:Ljava/lang/String;

    return-void
.end method

.method public setMetadata(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzendesk/support/CreateRequest;->metadata:Ljava/util/Map;

    const-string v1, "sdk"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/CreateRequest;->subject:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lzendesk/support/CreateRequest;->tags:Ljava/util/List;

    return-void
.end method

.method public setTicketFormId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/CreateRequest;->ticketFormId:Ljava/lang/Long;

    return-void
.end method
