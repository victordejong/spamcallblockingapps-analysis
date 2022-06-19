.class final Lzendesk/support/RequestData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final commentCount:I

.field private final id:Ljava/lang/String;

.field private readCommentCount:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lzendesk/support/RequestData;->commentCount:I

    .line 3
    iput-object p1, p0, Lzendesk/support/RequestData;->id:Ljava/lang/String;

    .line 4
    iput p3, p0, Lzendesk/support/RequestData;->readCommentCount:I

    return-void
.end method

.method static create(Ljava/lang/String;II)Lzendesk/support/RequestData;
    .locals 1

    .line 2
    new-instance v0, Lzendesk/support/RequestData;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/RequestData;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method static create(Lzendesk/support/Request;)Lzendesk/support/RequestData;
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/RequestData;

    invoke-virtual {p0}, Lzendesk/support/Request;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lzendesk/support/Request;->getCommentCount()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lzendesk/support/RequestData;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lzendesk/support/RequestData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lzendesk/support/RequestData;

    .line 3
    iget-object v2, p0, Lzendesk/support/RequestData;->id:Ljava/lang/String;

    iget-object p1, p1, Lzendesk/support/RequestData;->id:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method getCommentCount()I
    .locals 1

    .line 1
    iget v0, p0, Lzendesk/support/RequestData;->commentCount:I

    return v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/RequestData;->id:Ljava/lang/String;

    return-object v0
.end method

.method getReadCommentCount()I
    .locals 1

    .line 1
    iget v0, p0, Lzendesk/support/RequestData;->readCommentCount:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/RequestData;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestData{commentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzendesk/support/RequestData;->commentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "readCommentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzendesk/support/RequestData;->readCommentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzendesk/support/RequestData;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unreadComments()I
    .locals 2

    .line 1
    iget v0, p0, Lzendesk/support/RequestData;->commentCount:I

    iget v1, p0, Lzendesk/support/RequestData;->readCommentCount:I

    sub-int/2addr v0, v1

    return v0
.end method
