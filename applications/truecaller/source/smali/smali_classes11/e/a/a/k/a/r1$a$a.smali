.class public final Le/a/a/k/a/r1$a$a;
.super Lp3/a/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/r1$a;->e(Lp3/a/f$a;Lp3/a/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a/x<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/k/a/r1$a;

.field public final synthetic b:Lp3/a/f$a;


# direct methods
.method public constructor <init>(Le/a/a/k/a/r1$a;Lp3/a/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f$a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/k/a/r1$a$a;->a:Le/a/a/k/a/r1$a;

    iput-object p2, p0, Le/a/a/k/a/r1$a$a;->b:Lp3/a/f$a;

    invoke-direct {p0}, Lp3/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/a/k/a/q1;->c:Le/a/a/k/a/q1;

    .line 2
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/events/Event;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-static {v0}, Le/a/a/k/a/q1;->d(Lcom/truecaller/api/services/messenger/v1/events/Event;)Lcom/truecaller/api/services/messenger/v1/events/Event;

    move-result-object v0

    goto/16 :goto_1

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response$a;

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;->getUploadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/a/a/k/a/q1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6
    iget-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;

    invoke-static {v3, v2}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;->access$1100(Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/a/k/a/q1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9
    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;

    invoke-static {v2, v0}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;->access$1400(Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    goto/16 :goto_1

    .line 11
    :cond_1
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Response;

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 12
    :cond_2
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;

    if-eqz v0, :cond_3

    goto/16 :goto_0

    .line 13
    :cond_3
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/GetContexts$Response;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 15
    :cond_5
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/GetNotificationSettings$Response;

    if-eqz v0, :cond_6

    goto :goto_0

    .line 16
    :cond_6
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/GetUsers$Response;

    if-eqz v0, :cond_7

    goto :goto_0

    .line 17
    :cond_7
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    if-eqz v0, :cond_8

    goto :goto_0

    .line 18
    :cond_8
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/GetPermissions$Response;

    if-eqz v0, :cond_9

    goto :goto_0

    .line 19
    :cond_9
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/RegisterUser$Response;

    if-eqz v0, :cond_a

    goto :goto_0

    .line 20
    :cond_a
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;

    if-eqz v0, :cond_b

    goto :goto_0

    .line 21
    :cond_b
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/SendMessage$Response;

    if-eqz v0, :cond_c

    goto :goto_0

    .line 22
    :cond_c
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/SendReaction$Response;

    if-eqz v0, :cond_d

    goto :goto_0

    .line 23
    :cond_d
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/SendReport$Response;

    if-eqz v0, :cond_e

    goto :goto_0

    .line 24
    :cond_e
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Response;

    if-eqz v0, :cond_f

    goto :goto_0

    .line 25
    :cond_f
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response;

    if-eqz v0, :cond_10

    goto :goto_0

    .line 26
    :cond_10
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Response;

    if-eqz v0, :cond_11

    goto :goto_0

    .line 27
    :cond_11
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;

    if-eqz v0, :cond_12

    goto :goto_0

    .line 28
    :cond_12
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Response;

    if-eqz v0, :cond_13

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_13
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_14

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/a/k/a/q1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_14
    const-string v0, "<masked>"

    :goto_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "IM <-- "

    .line 30
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Le/a/a/k/a/r1$a$a;->a:Le/a/a/k/a/r1$a;

    iget-object v4, v4, Le/a/a/k/a/r1$a;->b:Ljava/lang/String;

    const/16 v5, 0x20

    invoke-static {v3, v4, v5, v0}, Le/d/c/a/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Le/a/a/k/a/r1$a$a;->e()Lp3/a/f$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp3/a/f$a;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public e()Lp3/a/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp3/a/f$a<",
            "TRespT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/r1$a$a;->b:Lp3/a/f$a;

    return-object v0
.end method
