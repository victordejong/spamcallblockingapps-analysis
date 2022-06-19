.class public final Le/a/a/k/a/r1$a;
.super Lp3/a/w$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/r1;->a(Lp3/a/p0;Lp3/a/c;Lp3/a/d;)Lp3/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a/w$a<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lp3/a/d;Lp3/a/p0;Lp3/a/c;Lp3/a/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/k/a/r1$a;->b:Ljava/lang/String;

    invoke-direct {p0, p5}, Lp3/a/w$a;-><init>(Lp3/a/f;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/a/k/a/q1;->c:Le/a/a/k/a/q1;

    .line 2
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request$a;

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->getContent()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    move-result-object v0

    const-string v2, "request.content"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/a/a/k/a/q1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;->f(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getAttachmentCase()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AttachmentCase;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getAudio()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$a;

    .line 8
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getAudio()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;

    move-result-object v0

    const-string v4, "content.audio"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/a/k/a/q1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;

    invoke-static {v4, v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;->access$13500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12
    iget-object v0, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;

    invoke-static {v0, v3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->access$22000(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;)V

    goto/16 :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getVideo()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video$a;

    .line 14
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getVideo()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    move-result-object v4

    const-string v5, "content.video"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/a/k/a/q1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16
    iget-object v6, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    invoke-static {v6, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;->access$5600(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getVideo()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    move-result-object v0

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Le/a/a/k/a/q1;->b(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    invoke-static {v4, v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;->access$6700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;Lcom/google/protobuf/ByteString;)V

    .line 20
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 21
    iget-object v0, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    invoke-static {v0, v3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->access$21700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;)V

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getImage()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image$a;

    .line 23
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getImage()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    move-result-object v4

    const-string v5, "content.image"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/a/k/a/q1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 25
    iget-object v6, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    invoke-static {v6, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;->access$1800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->getImage()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    move-result-object v0

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Le/a/a/k/a/q1;->b(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 28
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    invoke-static {v4, v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;->access$2700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;Lcom/google/protobuf/ByteString;)V

    .line 29
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 30
    iget-object v0, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    invoke-static {v0, v3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->access$20800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;)V

    .line 31
    :goto_0
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v2, "masked.build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    .line 32
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 33
    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;

    invoke-static {v2, v0}, Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;->access$600(Lcom/truecaller/api/services/messenger/v1/SendMessage$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;)V

    .line 34
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    goto/16 :goto_2

    .line 35
    :cond_4
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/events/Event$Ack;

    if-eqz v0, :cond_5

    goto/16 :goto_1

    .line 36
    :cond_5
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;

    if-eqz v0, :cond_6

    goto/16 :goto_1

    .line 37
    :cond_6
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    if-eqz v0, :cond_7

    goto/16 :goto_1

    .line 38
    :cond_7
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;

    if-eqz v0, :cond_8

    goto :goto_1

    .line 39
    :cond_8
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/GetChangelog$Request;

    if-eqz v0, :cond_9

    goto :goto_1

    .line 40
    :cond_9
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/GetContexts$Request;

    if-eqz v0, :cond_a

    goto :goto_1

    .line 41
    :cond_a
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/GetNotificationSettings$Request;

    if-eqz v0, :cond_b

    goto :goto_1

    .line 42
    :cond_b
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/GetUsers$Request;

    if-eqz v0, :cond_c

    goto :goto_1

    .line 43
    :cond_c
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;

    if-eqz v0, :cond_d

    goto :goto_1

    .line 44
    :cond_d
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/GetPermissions$Request;

    if-eqz v0, :cond_e

    goto :goto_1

    .line 45
    :cond_e
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/RegisterUser$Request;

    if-eqz v0, :cond_f

    goto :goto_1

    .line 46
    :cond_f
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;

    if-eqz v0, :cond_10

    goto :goto_1

    .line 47
    :cond_10
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;

    if-eqz v0, :cond_11

    goto :goto_1

    .line 48
    :cond_11
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/SendReport$Request;

    if-eqz v0, :cond_12

    goto :goto_1

    .line 49
    :cond_12
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;

    if-eqz v0, :cond_13

    goto :goto_1

    .line 50
    :cond_13
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;

    if-eqz v0, :cond_14

    goto :goto_1

    .line 51
    :cond_14
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Request;

    if-eqz v0, :cond_15

    goto :goto_1

    .line 52
    :cond_15
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;

    if-eqz v0, :cond_16

    goto :goto_1

    .line 53
    :cond_16
    instance-of v0, p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    if-eqz v0, :cond_17

    :goto_1
    move-object v0, p1

    goto :goto_2

    :cond_17
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_18

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/a/k/a/q1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_18
    const-string v0, "<masked>"

    :goto_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "IM --> "

    .line 55
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Le/a/a/k/a/r1$a;->b:Ljava/lang/String;

    const/16 v5, 0x20

    invoke-static {v3, v4, v5, v0}, Le/d/c/a/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lp3/a/w$a;->f()Lp3/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp3/a/f;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lp3/a/f$a;Lp3/a/o0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f$a<",
            "TRespT;>;",
            "Lp3/a/o0;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/a/k/a/r1$a$a;

    invoke-direct {v0, p0, p1}, Le/a/a/k/a/r1$a$a;-><init>(Le/a/a/k/a/r1$a;Lp3/a/f$a;)V

    .line 2
    invoke-virtual {p0}, Lp3/a/w$a;->f()Lp3/a/f;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lp3/a/f;->e(Lp3/a/f$a;Lp3/a/o0;)V

    return-void
.end method
