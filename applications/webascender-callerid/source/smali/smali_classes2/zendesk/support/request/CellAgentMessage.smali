.class Lzendesk/support/request/CellAgentMessage;
.super Lzendesk/support/request/CellBase;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/CellType$Message;
.implements Lzendesk/support/request/CellType$Agent;


# instance fields
.field private final insets:Landroid/graphics/Rect;

.field private final message:Lzendesk/support/request/StateMessage;

.field private showAgentName:Z

.field private final textMessage:Ljava/lang/CharSequence;

.field private final user:Lzendesk/support/request/StateRequestUser;


# direct methods
.method constructor <init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/StateMessage;Ljava/lang/CharSequence;Lzendesk/support/request/StateRequestUser;)V
    .locals 8

    .line 1
    sget v2, Lg/k/c/h;->j:I

    invoke-virtual {p2}, Lzendesk/support/request/StateMessage;->getId()J

    move-result-wide v3

    invoke-virtual {p2}, Lzendesk/support/request/StateMessage;->getUserId()J

    move-result-wide v5

    invoke-virtual {p2}, Lzendesk/support/request/StateMessage;->getDate()Ljava/util/Date;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lzendesk/support/request/CellBase;-><init>(Lzendesk/support/request/CellBindHelper;IJJLjava/util/Date;)V

    .line 2
    iput-object p3, p0, Lzendesk/support/request/CellAgentMessage;->textMessage:Ljava/lang/CharSequence;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/CellAgentMessage;->message:Lzendesk/support/request/StateMessage;

    .line 4
    iput-object p4, p0, Lzendesk/support/request/CellAgentMessage;->user:Lzendesk/support/request/StateRequestUser;

    .line 5
    sget p2, Lg/k/c/d;->q:I

    sget p3, Lg/k/c/d;->p:I

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p2, p4, p3}, Lzendesk/support/request/CellBindHelper;->getInsets(IIII)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/CellAgentMessage;->insets:Landroid/graphics/Rect;

    .line 6
    iput-boolean p4, p0, Lzendesk/support/request/CellAgentMessage;->showAgentName:Z

    return-void
.end method

.method private buildTalkBackString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget v1, Lg/k/c/j;->d0:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lzendesk/support/request/CellAgentMessage;->textMessage:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lzendesk/support/request/CellAgentMessage;->message:Lzendesk/support/request/StateMessage;

    invoke-virtual {v1}, Lzendesk/support/request/StateMessage;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {p1, v3, v4, v2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5
    sget v3, Lg/k/c/j;->c0:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    iget-object v1, p0, Lzendesk/support/request/CellAgentMessage;->user:Lzendesk/support/request/StateRequestUser;

    .line 6
    invoke-virtual {v1}, Lzendesk/support/request/StateRequestUser;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 7
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public areContentsTheSame(Lzendesk/support/request/CellType$Base;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    invoke-virtual {v0, p0, p1}, Lzendesk/support/request/CellBindHelper;->areMessageContentsTheSame(Lzendesk/support/request/CellType$Message;Lzendesk/support/request/CellType$Base;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    invoke-virtual {v1, p0, p1}, Lzendesk/support/request/CellBindHelper;->areAgentCellContentsTheSame(Lzendesk/support/request/CellType$Agent;Lzendesk/support/request/CellType$Base;)Z

    move-result p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bind(Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;)V
    .locals 5

    .line 1
    sget v0, Lg/k/c/f;->V:I

    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/ViewRequestText;

    .line 2
    iget-object v1, p0, Lzendesk/support/request/CellAgentMessage;->textMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget v1, Lg/k/c/f;->W:I

    invoke-virtual {p1, v1}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    iget-object v2, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-boolean v3, p0, Lzendesk/support/request/CellAgentMessage;->showAgentName:Z

    iget-object v4, p0, Lzendesk/support/request/CellAgentMessage;->user:Lzendesk/support/request/StateRequestUser;

    invoke-virtual {v2, v1, v3, v4}, Lzendesk/support/request/CellBindHelper;->bindAgentName(Landroid/widget/TextView;ZLzendesk/support/request/StateRequestUser;)V

    .line 5
    sget v1, Lg/k/c/f;->U:I

    invoke-virtual {p1, v1}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lzendesk/support/request/CellAgentMessage;->buildTalkBackString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public getAgent()Lzendesk/support/request/StateRequestUser;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellAgentMessage;->user:Lzendesk/support/request/StateRequestUser;

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellAgentMessage;->insets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellAgentMessage;->message:Lzendesk/support/request/StateMessage;

    invoke-virtual {v0}, Lzendesk/support/request/StateMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAgentNameVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/CellAgentMessage;->showAgentName:Z

    return v0
.end method

.method public showAgentName(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzendesk/support/request/CellAgentMessage;->showAgentName:Z

    return-void
.end method
