.class Lzendesk/support/requestlist/RequestListItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/k/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/requestlist/RequestListItem;->getLastCommentingAgentNames()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/k/a/a<",
        "Lzendesk/support/requestlist/RequestInfo$AgentInfo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lzendesk/support/requestlist/RequestListItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/requestlist/RequestInfo$AgentInfo;

    invoke-virtual {p0, p1}, Lzendesk/support/requestlist/RequestListItem$1;->apply(Lzendesk/support/requestlist/RequestInfo$AgentInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lzendesk/support/requestlist/RequestInfo$AgentInfo;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestInfo$AgentInfo;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
