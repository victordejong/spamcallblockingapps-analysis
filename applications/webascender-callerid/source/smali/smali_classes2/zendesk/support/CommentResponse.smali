.class public Lzendesk/support/CommentResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private authorId:Ljava/lang/Long;

.field private body:Ljava/lang/String;

.field private createdAt:Ljava/util/Date;

.field private htmlBody:Ljava/lang/String;

.field private id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/Attachment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/CommentResponse;->attachments:Ljava/util/List;

    invoke-static {v0}, Lg/k/d/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/CommentResponse;->authorId:Ljava/lang/Long;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/CommentResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/CommentResponse;->createdAt:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lzendesk/support/CommentResponse;->createdAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0
.end method

.method public getHtmlBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/CommentResponse;->htmlBody:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/CommentResponse;->id:Ljava/lang/Long;

    return-object v0
.end method
