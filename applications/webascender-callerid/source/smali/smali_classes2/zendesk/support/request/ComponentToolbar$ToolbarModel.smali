.class Lzendesk/support/request/ComponentToolbar$ToolbarModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToolbarModel"
.end annotation


# static fields
.field static STATE_AGENT_INFO:I = 0x3

.field static STATE_LOADING:I = 0x1

.field static STATE_TITLE:I = 0x2


# instance fields
.field private final agent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestUser;",
            ">;"
        }
    .end annotation
.end field

.field private final isProgressEnabled:Z

.field private final lastReply:Ljava/util/Date;

.field private final toolbarContentState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(ZILjava/util/List;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestUser;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->isProgressEnabled:Z

    .line 3
    iput p2, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->toolbarContentState:I

    .line 4
    iput-object p3, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->agent:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->lastReply:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 1
    const-class v2, Lzendesk/support/request/ComponentToolbar$ToolbarModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;

    .line 3
    iget-boolean v2, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->isProgressEnabled:Z

    iget-boolean v3, p1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->isProgressEnabled:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->toolbarContentState:I

    iget v3, p1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->toolbarContentState:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->agent:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->agent:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->agent:Ljava/util/List;

    if-eqz v2, :cond_5

    :goto_0
    return v1

    .line 6
    :cond_5
    iget-object v2, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->lastReply:Ljava/util/Date;

    iget-object p1, p1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->lastReply:Ljava/util/Date;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method getAvatarUrls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf/h/k/c<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->agent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/request/StateRequestUser;

    .line 3
    invoke-virtual {v2}, Lzendesk/support/request/StateRequestUser;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lzendesk/support/request/StateRequestUser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lf/h/k/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Lf/h/k/c;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getLastReply()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->lastReply:Ljava/util/Date;

    return-object v0
.end method

.method getNameOfFirstAgent()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->agent:Ljava/util/List;

    invoke-static {v0}, Lg/k/d/a;->i(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->agent:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/StateRequestUser;

    invoke-virtual {v0}, Lzendesk/support/request/StateRequestUser;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method getToolbarContentState()I
    .locals 1

    .line 1
    iget v0, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->toolbarContentState:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->isProgressEnabled:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->toolbarContentState:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->agent:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->lastReply:Ljava/util/Date;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method isProgressEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->isProgressEnabled:Z

    return v0
.end method
