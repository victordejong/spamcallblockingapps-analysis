.class Lzendesk/support/request/StateRequestUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final avatar:Ljava/lang/String;

.field private final id:J

.field private final isAgent:Z

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/StateRequestUser;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/StateRequestUser;->avatar:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lzendesk/support/request/StateRequestUser;->isAgent:Z

    .line 5
    iput-wide p4, p0, Lzendesk/support/request/StateRequestUser;->id:J

    return-void
.end method

.method static containsAgent(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestUser;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/StateRequestUser;

    .line 2
    invoke-virtual {v0}, Lzendesk/support/request/StateRequestUser;->isAgent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static convert(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/User;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestUser;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/User;

    .line 3
    invoke-virtual {v1}, Lzendesk/support/User;->getId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lzendesk/support/User;->getPhoto()Lzendesk/support/Attachment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lzendesk/support/Attachment;->getContentUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v2}, Lzendesk/support/Attachment;->getContentUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    move-object v5, v2

    .line 7
    new-instance v2, Lzendesk/support/request/StateRequestUser;

    invoke-virtual {v1}, Lzendesk/support/User;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lzendesk/support/User;->isAgent()Z

    move-result v6

    invoke-virtual {v1}, Lzendesk/support/User;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lzendesk/support/request/StateRequestUser;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/StateRequestUser;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzendesk/support/request/StateRequestUser;->id:J

    return-wide v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/StateRequestUser;->name:Ljava/lang/String;

    return-object v0
.end method

.method isAgent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/StateRequestUser;->isAgent:Z

    return v0
.end method
