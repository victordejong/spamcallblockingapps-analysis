.class Lzendesk/support/request/CellAgentAttachmentGeneric;
.super Lzendesk/support/request/CellBase;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/CellType$Attachment;
.implements Lzendesk/support/request/CellType$Agent;


# instance fields
.field private final appInfo:Landroid/content/pm/ResolveInfo;

.field private final insets:Landroid/graphics/Rect;

.field private isAgentNameVisible:Z

.field private final requestAttachment:Lzendesk/support/request/StateRequestAttachment;

.field private final user:Lzendesk/support/request/StateRequestUser;


# direct methods
.method constructor <init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/StateRequestAttachment;Lzendesk/support/request/StateRequestUser;Ljava/util/Date;)V
    .locals 8

    .line 1
    sget v2, Lg/k/c/h;->h:I

    invoke-virtual {p2}, Lzendesk/support/request/StateRequestAttachment;->getId()J

    move-result-wide v3

    invoke-virtual {p3}, Lzendesk/support/request/StateRequestUser;->getId()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lzendesk/support/request/CellBase;-><init>(Lzendesk/support/request/CellBindHelper;IJJLjava/util/Date;)V

    .line 2
    iput-object p2, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    .line 3
    iput-object p3, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->user:Lzendesk/support/request/StateRequestUser;

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->isAgentNameVisible:Z

    .line 5
    invoke-virtual {p2}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lzendesk/support/request/CellBindHelper;->getAppInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->appInfo:Landroid/content/pm/ResolveInfo;

    .line 6
    sget p2, Lg/k/c/d;->o:I

    invoke-virtual {p1, p3, p3, p3, p2}, Lzendesk/support/request/CellBindHelper;->getInsets(IIII)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->insets:Landroid/graphics/Rect;

    return-void
.end method

.method private buildTalkBackString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget v1, Lg/k/c/j;->a0:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    .line 3
    invoke-virtual {v4}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lzendesk/support/request/CellBase;->getTimeStamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {p1, v3, v4, v2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 7
    sget v3, Lg/k/c/j;->c0:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    iget-object v1, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->user:Lzendesk/support/request/StateRequestUser;

    .line 8
    invoke-virtual {v1}, Lzendesk/support/request/StateRequestUser;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 9
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
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
    sget v0, Lg/k/c/f;->Q:I

    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    invoke-virtual {v1}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget v0, Lg/k/c/f;->R:I

    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    sget v1, Lg/k/c/f;->P:I

    invoke-virtual {p1, v1}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 5
    iget-object v2, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-object v3, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->appInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v3, v0, v1}, Lzendesk/support/request/CellBindHelper;->bindAppInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 6
    sget v0, Lg/k/c/f;->O:I

    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-object v2, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    invoke-virtual {v1, v0, v2}, Lzendesk/support/request/CellBindHelper;->addOnClickListenerForFileAttachment(Landroid/view/View;Lzendesk/support/request/StateRequestAttachment;)V

    .line 8
    sget v1, Lg/k/c/f;->N:I

    invoke-virtual {p1, v1}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 9
    iget-object v1, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-boolean v2, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->isAgentNameVisible:Z

    iget-object v3, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->user:Lzendesk/support/request/StateRequestUser;

    invoke-virtual {v1, p1, v2, v3}, Lzendesk/support/request/CellBindHelper;->bindAgentName(Landroid/widget/TextView;ZLzendesk/support/request/StateRequestUser;)V

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lzendesk/support/request/CellAgentAttachmentGeneric;->buildTalkBackString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAgent()Lzendesk/support/request/StateRequestUser;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->user:Lzendesk/support/request/StateRequestUser;

    return-object v0
.end method

.method public getAttachment()Lzendesk/support/request/StateRequestAttachment;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->insets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isAgentNameVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->isAgentNameVisible:Z

    return v0
.end method

.method public showAgentName(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzendesk/support/request/CellAgentAttachmentGeneric;->isAgentNameVisible:Z

    return-void
.end method
