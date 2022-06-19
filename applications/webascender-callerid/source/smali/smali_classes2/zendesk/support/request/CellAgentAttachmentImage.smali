.class Lzendesk/support/request/CellAgentAttachmentImage;
.super Lzendesk/support/request/CellBase;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/CellType$Attachment;
.implements Lzendesk/support/request/CellType$Agent;


# instance fields
.field private final attachment:Lzendesk/support/request/StateRequestAttachment;

.field private final insets:Landroid/graphics/Rect;

.field private isAgentNameVisible:Z

.field private final user:Lzendesk/support/request/StateRequestUser;


# direct methods
.method constructor <init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/StateRequestAttachment;Lzendesk/support/request/StateRequestUser;Ljava/util/Date;)V
    .locals 8

    .line 1
    sget v2, Lg/k/c/h;->i:I

    invoke-virtual {p2}, Lzendesk/support/request/StateRequestAttachment;->getId()J

    move-result-wide v3

    invoke-virtual {p3}, Lzendesk/support/request/StateRequestUser;->getId()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lzendesk/support/request/CellBase;-><init>(Lzendesk/support/request/CellBindHelper;IJJLjava/util/Date;)V

    .line 2
    iput-object p3, p0, Lzendesk/support/request/CellAgentAttachmentImage;->user:Lzendesk/support/request/StateRequestUser;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/CellAgentAttachmentImage;->attachment:Lzendesk/support/request/StateRequestAttachment;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lzendesk/support/request/CellAgentAttachmentImage;->isAgentNameVisible:Z

    .line 5
    sget p3, Lg/k/c/d;->o:I

    invoke-virtual {p1, p2, p2, p2, p3}, Lzendesk/support/request/CellBindHelper;->getInsets(IIII)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/CellAgentAttachmentImage;->insets:Landroid/graphics/Rect;

    return-void
.end method

.method private buildTalkBackString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget v1, Lg/k/c/j;->b0:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lzendesk/support/request/CellAgentAttachmentImage;->attachment:Lzendesk/support/request/StateRequestAttachment;

    invoke-virtual {v4}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lzendesk/support/request/CellBase;->getTimeStamp()Ljava/util/Date;

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

    iget-object v1, p0, Lzendesk/support/request/CellAgentAttachmentImage;->user:Lzendesk/support/request/StateRequestUser;

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

    invoke-virtual {v0, p0, p1}, Lzendesk/support/request/CellBindHelper;->areAttachmentCellContentsTheSame(Lzendesk/support/request/CellType$Attachment;Lzendesk/support/request/CellType$Base;)Z

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
    .locals 4

    .line 1
    sget v0, Lg/k/c/f;->T:I

    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    iget-object v1, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-object v2, p0, Lzendesk/support/request/CellAgentAttachmentImage;->attachment:Lzendesk/support/request/StateRequestAttachment;

    invoke-virtual {v1, v0, v2}, Lzendesk/support/request/CellBindHelper;->bindImage(Landroid/widget/ImageView;Lzendesk/support/request/StateRequestAttachment;)V

    .line 3
    iget-object v1, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-object v2, p0, Lzendesk/support/request/CellAgentAttachmentImage;->attachment:Lzendesk/support/request/StateRequestAttachment;

    invoke-virtual {v1, v0, v2}, Lzendesk/support/request/CellBindHelper;->addOnClickListenerForImageAttachment(Landroid/view/View;Lzendesk/support/request/StateRequestAttachment;)V

    .line 4
    sget v0, Lg/k/c/f;->S:I

    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-boolean v2, p0, Lzendesk/support/request/CellAgentAttachmentImage;->isAgentNameVisible:Z

    iget-object v3, p0, Lzendesk/support/request/CellAgentAttachmentImage;->user:Lzendesk/support/request/StateRequestUser;

    invoke-virtual {v1, v0, v2, v3}, Lzendesk/support/request/CellBindHelper;->bindAgentName(Landroid/widget/TextView;ZLzendesk/support/request/StateRequestUser;)V

    .line 6
    sget v0, Lg/k/c/f;->M:I

    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lzendesk/support/request/CellAgentAttachmentImage;->buildTalkBackString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAgent()Lzendesk/support/request/StateRequestUser;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellAgentAttachmentImage;->user:Lzendesk/support/request/StateRequestUser;

    return-object v0
.end method

.method public getAttachment()Lzendesk/support/request/StateRequestAttachment;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellAgentAttachmentImage;->attachment:Lzendesk/support/request/StateRequestAttachment;

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellAgentAttachmentImage;->insets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isAgentNameVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/CellAgentAttachmentImage;->isAgentNameVisible:Z

    return v0
.end method

.method public showAgentName(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzendesk/support/request/CellAgentAttachmentImage;->isAgentNameVisible:Z

    return-void
.end method
