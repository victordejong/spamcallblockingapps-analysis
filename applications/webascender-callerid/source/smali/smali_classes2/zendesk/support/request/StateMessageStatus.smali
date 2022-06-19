.class Lzendesk/support/request/StateMessageStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final errorResponse:Ljava/lang/String;

.field private final status:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lzendesk/support/request/StateMessageStatus;->status:I

    .line 3
    iput-object p2, p0, Lzendesk/support/request/StateMessageStatus;->errorResponse:Ljava/lang/String;

    return-void
.end method

.method static delivered()Lzendesk/support/request/StateMessageStatus;
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/request/StateMessageStatus;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/support/request/StateMessageStatus;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static error(Ljava/lang/String;)Lzendesk/support/request/StateMessageStatus;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/request/StateMessageStatus;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lzendesk/support/request/StateMessageStatus;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static pending()Lzendesk/support/request/StateMessageStatus;
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/request/StateMessageStatus;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/support/request/StateMessageStatus;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lzendesk/support/request/StateMessageStatus;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lzendesk/support/request/StateMessageStatus;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown"

    goto :goto_0

    :cond_0
    const-string v0, "Pending"

    goto :goto_0

    :cond_1
    const-string v0, "Delivered"

    goto :goto_0

    :cond_2
    const-string v0, "Error"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageState{status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", errorResponse="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lzendesk/support/request/StateMessageStatus;->errorResponse:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
