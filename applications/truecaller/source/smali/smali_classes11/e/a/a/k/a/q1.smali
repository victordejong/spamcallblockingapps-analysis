.class public final Le/a/a/k/a/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/f0/h;

.field public static final b:Ls1/f0/h;

.field public static final c:Le/a/a/k/a/q1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/f0/h;

    const-string v1, "\\s+"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/a/k/a/q1;->a:Ls1/f0/h;

    .line 2
    new-instance v0, Ls1/f0/h;

    const-string v1, "(?:\\p{Alnum}+\\.)+([\\p{Alnum}\\$]+)@[0-9a-f]+"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/a/k/a/q1;->b:Ls1/f0/h;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "value"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/a/k/a/q1;->b:Ls1/f0/h;

    const-string v1, "$1"

    invoke-virtual {v0, p0, v1}, Ls1/f0/h;->e(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Le/a/a/k/a/q1;->a:Ls1/f0/h;

    const-string v1, " "

    invoke-virtual {v0, p0, v1}, Ls1/f0/h;->e(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "<null>"

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    const-string v0, "ByteString.copyFromUtf8(\u2026else \"<${size()} bytes>\")"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "<null>"

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " chars>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final d(Lcom/truecaller/api/services/messenger/v1/events/Event;)Lcom/truecaller/api/services/messenger/v1/events/Event;
    .locals 7

    const-string v0, "event"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getPayloadCase()Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event$b;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getMessageSent()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent$a;

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getMessageSent()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    move-result-object p0

    const-string v2, "event.messageSent"

    invoke-static {p0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->getContent()Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    move-result-object p0

    const-string v2, "event.messageSent.content"

    invoke-static {p0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$b;

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/a/a/k/a/q1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v4, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-static {v4, v3}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->access$20300(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getAttachmentCase()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    goto/16 :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getAudio()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$a;

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getAudio()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    move-result-object p0

    const-string v4, "content.audio"

    invoke-static {p0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->getUri()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/a/a/k/a/q1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {v4, p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->access$13500(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15
    iget-object p0, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {p0, v3}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->access$22600(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)V

    goto/16 :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getVideo()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video$a;

    .line 17
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getVideo()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;

    move-result-object v4

    const-string v5, "content.video"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/a/k/a/q1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19
    iget-object v6, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;

    invoke-static {v6, v4}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->access$5600(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getVideo()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;

    move-result-object p0

    invoke-static {p0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Le/a/a/k/a/q1;->b(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    .line 21
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 22
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;

    invoke-static {v4, p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->access$6700(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;Lcom/google/protobuf/ByteString;)V

    .line 23
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 24
    iget-object p0, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;

    invoke-static {p0, v3}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->access$22300(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;)V

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getImage()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image$a;

    .line 26
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getImage()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;

    move-result-object v4

    const-string v5, "content.image"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/a/k/a/q1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 28
    iget-object v6, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;

    invoke-static {v6, v4}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->access$1800(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getImage()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;

    move-result-object p0

    invoke-static {p0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Le/a/a/k/a/q1;->b(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    .line 30
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 31
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;

    invoke-static {v4, p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->access$2700(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;Lcom/google/protobuf/ByteString;)V

    .line 32
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 33
    iget-object p0, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;

    invoke-static {p0, v3}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->access$21400(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;)V

    .line 34
    :goto_0
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    const-string v2, "masked.build()"

    invoke-static {p0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;

    .line 35
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 36
    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    invoke-static {v2, p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->access$1700(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V

    .line 37
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 38
    iget-object p0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    invoke-static {p0, v1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->access$33000(Lcom/truecaller/api/services/messenger/v1/events/Event;Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;)V

    .line 39
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    goto :goto_2

    :goto_1
    const/4 p0, 0x0

    :cond_5
    :goto_2
    :pswitch_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
