.class public final Le/a/a/k/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/h;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/o5/m;

.field public final c:Lu3/e0;

.field public final d:Le/a/q2/a;

.field public final e:Le/a/a/k/a/s1;

.field public final f:Le/a/a/k/a/e2;

.field public final g:Le/a/b0/q/b;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/o5/m;Lu3/e0;Le/a/q2/a;Le/a/a/k/a/s1;Le/a/a/k/a/e2;Le/a/b0/q/b;)V
    .locals 1
    .param p3    # Lu3/e0;
        .annotation runtime Ljavax/inject/Named;
            value = "ImClient"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapConverter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stubManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadMediaErrorParser"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentStoreHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/k;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/a/k/a/k;->b:Le/a/o5/m;

    iput-object p3, p0, Le/a/a/k/a/k;->c:Lu3/e0;

    iput-object p4, p0, Le/a/a/k/a/k;->d:Le/a/q2/a;

    iput-object p5, p0, Le/a/a/k/a/k;->e:Le/a/a/k/a/s1;

    iput-object p6, p0, Le/a/a/k/a/k;->f:Le/a/a/k/a/e2;

    iput-object p7, p0, Le/a/a/k/a/k;->g:Le/a/b0/q/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;Lcom/truecaller/messaging/data/types/BinaryEntity;)V
    .locals 5

    const-string v0, "builder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "entity"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v1, p2

    check-cast v1, Lcom/truecaller/messaging/data/types/GifEntity;

    .line 2
    iget-object v2, v1, Lcom/truecaller/messaging/data/types/GifEntity;->A:Ljava/lang/String;

    .line 3
    iget-object v3, p0, Le/a/a/k/a/k;->b:Le/a/o5/m;

    iget-object p2, p2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-interface {v3, p2}, Le/a/o5/m;->d(Landroid/net/Uri;)[B

    move-result-object p2

    .line 4
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant$a;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    invoke-static {v4, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;->access$7100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;Ljava/lang/String;)V

    .line 7
    iget v2, v1, Lcom/truecaller/messaging/data/types/ImageEntity;->v:I

    .line 8
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    invoke-static {v4, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;->access$7900(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;I)V

    .line 10
    iget v2, v1, Lcom/truecaller/messaging/data/types/ImageEntity;->w:I

    .line 11
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    invoke-static {v4, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;->access$8100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;I)V

    .line 13
    iget-wide v1, v1, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    long-to-int v1, v1

    .line 14
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15
    iget-object v2, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    invoke-static {v2, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;->access$7700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;I)V

    .line 16
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation$a;

    move-result-object v1

    .line 17
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    .line 18
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19
    iget-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v3, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->access$8700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;)V

    if-eqz p2, :cond_0

    .line 20
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p2

    .line 21
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 22
    iget-object v0, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v0, p2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->access$8500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;Lcom/google/protobuf/ByteString;)V

    .line 23
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    const-string v0, "builder.build()"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    .line 24
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 25
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->access$22300(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;)V

    return-void
.end method

.method public b(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;I)Lcom/truecaller/messaging/data/types/Entity;
    .locals 27

    const-string v0, "content"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getAttachmentCase()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v2, "uri"

    const-string v3, "thumbnail.toByteArray()"

    const-string v4, "Uri.parse(uri)"

    const-string v5, "mimeType"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getFile()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;

    move-result-object v0

    const-string v1, "content.file"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "contentType"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "text/plain"

    .line 5
    invoke-static {v3, v1, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "text/vnd.plain-file"

    :cond_1
    move-object v8, v1

    .line 6
    new-instance v1, Lcom/truecaller/messaging/data/types/DocumentEntity;

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;->getSize()I

    move-result v2

    int-to-long v12, v2

    .line 9
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;->getFileName()Ljava/lang/String;

    move-result-object v14

    const-string v0, "fileName"

    invoke-static {v14, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, -0x1

    const/4 v11, 0x0

    move-object v5, v1

    move/from16 v9, p2

    .line 10
    invoke-direct/range {v5 .. v14}, Lcom/truecaller/messaging/data/types/DocumentEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;ZJLjava/lang/String;)V

    goto/16 :goto_2

    .line 11
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getAnimation()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;

    move-result-object v0

    const-string v1, "content.animation"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v7

    invoke-static {v7, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;->getGifTiny()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AnimationVariant;

    move-result-object v1

    const-string v2, "gifTiny"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AnimationVariant;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;->getGifTiny()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AnimationVariant;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AnimationVariant;->getHeight()I

    move-result v9

    const-string v10, "tenor/gif"

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Le/a/a/k/a/k;->d(J[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 13
    new-instance v1, Lcom/truecaller/messaging/data/types/GifEntity;

    .line 14
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;->getGifTiny()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AnimationVariant;

    move-result-object v3

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AnimationVariant;->getUri()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gifTiny.uri"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;->getGifTiny()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AnimationVariant;

    move-result-object v5

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AnimationVariant;->getWidth()I

    move-result v17

    .line 16
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;->getGifTiny()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AnimationVariant;

    move-result-object v5

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AnimationVariant;->getHeight()I

    move-result v18

    .line 17
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;->getGifTiny()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AnimationVariant;

    move-result-object v5

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AnimationVariant;->getSize()I

    move-result v5

    int-to-long v5, v5

    .line 18
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Animation;->getGifTiny()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AnimationVariant;

    move-result-object v0

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AnimationVariant;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v12, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x41

    const-string v14, "tenor/gif"

    move-object v11, v1

    move/from16 v15, p2

    move-object/from16 v16, v3

    move-wide/from16 v20, v5

    move-object/from16 v23, v0

    .line 19
    invoke-direct/range {v11 .. v24}, Lcom/truecaller/messaging/data/types/GifEntity;-><init>(JLjava/lang/String;ILjava/lang/String;IIZJLandroid/net/Uri;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 20
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getAudio()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    move-result-object v0

    const-string v1, "content.audio"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v1, Lcom/truecaller/messaging/data/types/AudioEntity;

    .line 22
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->getSize()I

    move-result v2

    int-to-long v13, v2

    .line 25
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->getDuration()I

    move-result v15

    const-wide/16 v7, -0x1

    const/4 v12, 0x0

    move-object v6, v1

    move/from16 v10, p2

    .line 26
    invoke-direct/range {v6 .. v15}, Lcom/truecaller/messaging/data/types/AudioEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;ZJI)V

    goto/16 :goto_2

    .line 27
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getVideo()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;

    move-result-object v0

    const-string v1, "content.video"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    int-to-long v7, v1

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v9

    invoke-static {v9, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getHeight()I

    move-result v11

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v12}, Le/a/a/k/a/k;->d(J[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 29
    new-instance v1, Lcom/truecaller/messaging/data/types/VideoEntity;

    .line 30
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getSize()I

    move-result v4

    int-to-long v4, v4

    .line 33
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getWidth()I

    move-result v22

    .line 34
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getHeight()I

    move-result v23

    .line 35
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getDuration()I

    move-result v24

    const-wide/16 v14, -0x1

    const/16 v19, 0x0

    move-object v13, v1

    move-object/from16 v16, v2

    move/from16 v17, p2

    move-object/from16 v18, v3

    move-wide/from16 v20, v4

    .line 36
    invoke-direct/range {v13 .. v25}, Lcom/truecaller/messaging/data/types/VideoEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;ZJIIILandroid/net/Uri;)V

    goto/16 :goto_2

    .line 37
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getLocation()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;

    move-result-object v0

    const-string v1, "content.location"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v2, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    .line 39
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move-object v7, v1

    const-string v3, "Uri.EMPTY"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;->getAddress()Ljava/lang/String;

    move-result-object v20

    .line 41
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;->getLatitude()D

    move-result-wide v21

    .line 42
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Location;->getLongitude()D

    move-result-wide v23

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v25, 0x7ff1

    const-string v5, "application/vnd.truecaller.location"

    move/from16 v6, p2

    .line 43
    invoke-static/range {v2 .. v25}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v1

    goto/16 :goto_2

    .line 44
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getVcard()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;

    move-result-object v0

    const-string v1, "content.vcard"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/truecaller/messaging/data/types/VCardEntity;

    .line 46
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$VCard;->getSize()I

    move-result v0

    int-to-long v10, v0

    const-wide/16 v4, -0x1

    const/4 v9, 0x0

    .line 48
    sget-object v14, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const/4 v13, 0x1

    const-string v6, "text/vcard"

    const-string v12, ""

    move-object v3, v1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v14}, Lcom/truecaller/messaging/data/types/VCardEntity;-><init>(JLjava/lang/String;ILjava/lang/String;ZJLjava/lang/String;ILandroid/net/Uri;)V

    goto/16 :goto_2

    .line 49
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getImage()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;

    move-result-object v0

    const-string v1, "content.image"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x34688ef0    # -1.984976E7f

    if-eq v6, v7, :cond_3

    goto :goto_0

    :cond_3
    const-string v6, "image/gif"

    .line 51
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    int-to-long v7, v1

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v9

    invoke-static {v9, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getHeight()I

    move-result v11

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v12}, Le/a/a/k/a/k;->d(J[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 53
    new-instance v1, Lcom/truecaller/messaging/data/types/GifEntity;

    const-wide/16 v14, 0x0

    .line 54
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getWidth()I

    move-result v19

    .line 57
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getHeight()I

    move-result v20

    const/16 v21, 0x0

    .line 58
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getSize()I

    move-result v0

    int-to-long v5, v0

    const/16 v26, 0x41

    const-string v25, ""

    move-object v13, v1

    move-object/from16 v16, v3

    move/from16 v17, p2

    move-object/from16 v18, v4

    move-wide/from16 v22, v5

    .line 59
    invoke-direct/range {v13 .. v26}, Lcom/truecaller/messaging/data/types/GifEntity;-><init>(JLjava/lang/String;ILjava/lang/String;IIZJLandroid/net/Uri;Ljava/lang/String;I)V

    goto :goto_2

    .line 60
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    int-to-long v7, v1

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v9

    invoke-static {v9, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getHeight()I

    move-result v11

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v12}, Le/a/a/k/a/k;->d(J[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 61
    new-instance v1, Lcom/truecaller/messaging/data/types/ImageEntity;

    .line 62
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getWidth()I

    move-result v19

    .line 65
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getHeight()I

    move-result v20

    .line 66
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getSize()I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v14, -0x1

    const/16 v23, 0x0

    move-object v13, v1

    move-object/from16 v16, v2

    move/from16 v17, p2

    move-object/from16 v18, v3

    move-wide/from16 v21, v4

    .line 67
    invoke-direct/range {v13 .. v24}, Lcom/truecaller/messaging/data/types/ImageEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;IIJZLandroid/net/Uri;)V

    goto :goto_2

    :goto_1
    const-string v0, "Found unsupported attachment "

    .line 68
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getAttachmentCase()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :pswitch_7
    const/4 v1, 0x0

    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final c(Lcom/truecaller/messaging/data/types/Entity;Ljava/lang/String;JLjava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    long-to-float v2, v0

    const/16 v3, 0x400

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v4, p3

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    long-to-float v3, v6

    div-float/2addr v2, v3

    const-string v3, "ImAttachmentUpload"

    const-string v11, "type"

    .line 3
    invoke-static {v3, v11}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v15

    const-string v14, "name"

    const-string v13, "value"

    const-string v17, "status"

    move-object v6, v11

    move-object v7, v14

    move-object/from16 v8, p2

    move-object v9, v13

    move-object v10, v15

    move-object/from16 v12, p2

    move-object/from16 p1, v13

    move-object/from16 v13, v17

    move-object/from16 p2, v14

    move-object v4, v15

    move-object/from16 v15, p5

    move-object/from16 v16, p1

    move-object/from16 v18, p5

    .line 4
    invoke-static/range {v6 .. v18}, Le/d/c/a/a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v6, "sizeAbsolute"

    long-to-double v7, v0

    move-object/from16 v9, p2

    .line 5
    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "sizeBatch"

    .line 7
    invoke-static {v0, v1}, Le/a/c/p/a;->P2(J)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    float-to-double v6, v2

    .line 10
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timeBatch"

    .line 11
    invoke-static/range {p3 .. p4}, Le/a/c/p/a;->Q2(J)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    invoke-virtual {v0, v3}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v0, v5}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v0, v4}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v0}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 15
    iget-object v2, v1, Le/a/a/k/a/k;->d:Le/a/q2/a;

    invoke-interface {v2, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public d(J[BIILjava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "thumbnail"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p6, p0, Le/a/a/k/a/k;->b:Le/a/o5/m;

    invoke-interface {p6, p3, p4, p5}, Le/a/o5/m;->c([BII)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2
    new-instance p4, Le/a/a/k/a/k$a;

    invoke-direct {p4, p0, p1, p2}, Le/a/a/k/a/k$a;-><init>(Le/a/a/k/a/k;J)V

    invoke-static {p3, p4}, Le/a/e/a2;->j0(Landroid/graphics/Bitmap;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/k;

    .line 3
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 4
    check-cast p1, Landroid/net/Uri;

    return-object p1

    :cond_0
    const-string p1, "Can\'t unpack thumbnail"

    .line 5
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 6
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string p2, "Uri.EMPTY"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public e(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b;Lcom/truecaller/messaging/data/types/BinaryEntity;Lcom/truecaller/messaging/data/types/Message;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    const-string v9, "builder"

    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "entity"

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "message"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->l()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->w()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->t()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    iget-boolean v1, v8, Lcom/truecaller/messaging/data/types/BinaryEntity;->t:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object v1, v8, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const-string v10, "contentType"

    .line 4
    invoke-static {v1, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "text/vnd.plain-file"

    .line 5
    invoke-static {v11, v1, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const-string v12, "text/plain"

    if-eqz v3, :cond_3

    move-object v3, v12

    goto :goto_2

    :cond_3
    move-object v3, v1

    .line 6
    :goto_2
    iget-object v1, v7, Le/a/a/k/a/k;->e:Le/a/a/k/a/s1;

    const/4 v13, 0x0

    invoke-static {v1, v13, v2, v13}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v1

    check-cast v1, Le/a/t2/a/e/a/b$a;

    if-eqz v1, :cond_11

    .line 7
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request$a;

    move-result-object v4

    .line 8
    iget-wide v5, v8, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    .line 9
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v14, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;

    invoke-static {v14, v5, v6}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;J)V

    .line 11
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12
    iget-object v5, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;

    invoke-static {v5, v3}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;->access$300(Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;Ljava/lang/String;)V

    .line 13
    sget-object v5, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request$UploadType;->MEDIA:Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request$UploadType;

    .line 14
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15
    iget-object v6, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;

    invoke-static {v6, v5}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;->access$700(Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request$UploadType;)V

    .line 16
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    .line 17
    check-cast v4, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;

    .line 18
    invoke-virtual {v1, v4}, Le/a/t2/a/e/a/b$a;->j(Lcom/truecaller/api/services/messenger/v1/MediaHandles$Request;)Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;

    move-result-object v14

    const-string v1, "stub.getMediaHandles(request)"

    invoke-static {v14, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;->getFormFieldsMap()Ljava/util/Map;

    move-result-object v1

    const-string v4, "result.formFieldsMap"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;->getUploadUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "result.uploadUrl"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v5, Lu3/d0$a;

    invoke-direct {v5, v13, v2}, Lu3/d0$a;-><init>(Ljava/lang/String;I)V

    .line 21
    sget-object v2, Lu3/d0;->h:Lu3/c0;

    invoke-virtual {v5, v2}, Lu3/d0$a;->e(Lu3/c0;)Lu3/d0$a;

    .line 22
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 23
    invoke-virtual {v5, v6, v2}, Lu3/d0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/d0$a;

    goto :goto_3

    .line 24
    :cond_4
    iget-object v1, v8, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const-string v2, "entity.content.pathSegments"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Le/a/a/k/a/d;

    iget-object v6, v7, Le/a/a/k/a/k;->a:Landroid/content/ContentResolver;

    invoke-direct {v2, v6, v8, v3}, Le/a/a/k/a/d;-><init>(Landroid/content/ContentResolver;Lcom/truecaller/messaging/data/types/BinaryEntity;Ljava/lang/String;)V

    const-string v6, "file"

    invoke-virtual {v5, v6, v1, v2}, Lu3/d0$a;->b(Ljava/lang/String;Ljava/lang/String;Lu3/j0;)Lu3/d0$a;

    .line 25
    invoke-virtual {v5}, Lu3/d0$a;->d()Lu3/d0;

    move-result-object v1

    .line 26
    new-instance v2, Lu3/g0$a;

    invoke-direct {v2}, Lu3/g0$a;-><init>()V

    .line 27
    invoke-virtual {v2, v4}, Lu3/g0$a;->i(Ljava/lang/String;)Lu3/g0$a;

    .line 28
    iget-wide v4, v8, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 29
    const-class v5, Ljava/lang/Object;

    invoke-virtual {v2, v5, v4}, Lu3/g0$a;->h(Ljava/lang/Class;Ljava/lang/Object;)Lu3/g0$a;

    .line 30
    invoke-virtual {v2, v1}, Lu3/g0$a;->f(Lu3/j0;)Lu3/g0$a;

    .line 31
    invoke-virtual {v2}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object v1

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 33
    iget-object v2, v7, Le/a/a/k/a/k;->c:Lu3/e0;

    invoke-virtual {v2, v1}, Lu3/e0;->a(Lu3/g0;)Lu3/f;

    move-result-object v1

    .line 34
    move-object v15, v1

    check-cast v15, Lu3/p0/g/e;

    :try_start_0
    invoke-virtual {v15}, Lu3/p0/g/e;->execute()Lu3/k0;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :try_start_1
    invoke-virtual {v6}, Lu3/k0;->j()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_f

    .line 36
    :try_start_2
    invoke-static {v6, v13}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v4, v1, v4

    const-string v6, "Success"

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 38
    invoke-virtual/range {v1 .. v6}, Le/a/a/k/a/k;->c(Lcom/truecaller/messaging/data/types/Entity;Ljava/lang/String;JLjava/lang/String;)V

    .line 39
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->l()Z

    move-result v1

    const-string v2, "builder.build()"

    const-string v3, "result.downloadUrl"

    if-eqz v1, :cond_6

    move-object v1, v8

    check-cast v1, Lcom/truecaller/messaging/data/types/ImageEntity;

    .line 40
    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v3, v7, Le/a/a/k/a/k;->b:Le/a/o5/m;

    iget-object v5, v8, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-interface {v3, v5}, Le/a/o5/m;->d(Landroid/net/Uri;)[B

    move-result-object v3

    .line 42
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image$a;

    move-result-object v5

    .line 43
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 44
    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    invoke-static {v6, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;->access$1800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;Ljava/lang/String;)V

    .line 45
    iget-object v4, v1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    .line 46
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 47
    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    invoke-static {v6, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;->access$1500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;Ljava/lang/String;)V

    .line 48
    iget v4, v1, Lcom/truecaller/messaging/data/types/ImageEntity;->v:I

    .line 49
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 50
    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    invoke-static {v6, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;->access$2300(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;I)V

    .line 51
    iget v4, v1, Lcom/truecaller/messaging/data/types/ImageEntity;->w:I

    .line 52
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 53
    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    invoke-static {v6, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;->access$2500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;I)V

    .line 54
    iget-wide v10, v1, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    long-to-int v1, v10

    .line 55
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 56
    iget-object v4, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    invoke-static {v4, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;->access$2100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;I)V

    if-eqz v3, :cond_5

    .line 57
    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 58
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 59
    iget-object v3, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    invoke-static {v3, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;->access$2700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;Lcom/google/protobuf/ByteString;)V

    .line 60
    :cond_5
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 62
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->access$20800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image;)V

    goto/16 :goto_6

    .line 63
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->w()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 64
    move-object v1, v8

    check-cast v1, Lcom/truecaller/messaging/data/types/VideoEntity;

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v8, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    .line 65
    iget-object v5, v7, Le/a/a/k/a/k;->b:Le/a/o5/m;

    const/16 v6, 0x500

    .line 66
    invoke-interface {v5, v3, v6}, Le/a/o5/m;->g(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 67
    :try_start_3
    iget-object v5, v7, Le/a/a/k/a/k;->b:Le/a/o5/m;

    invoke-interface {v5, v3}, Le/a/o5/m;->d(Landroid/net/Uri;)[B

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v3, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    .line 69
    iget-object v5, v7, Le/a/a/k/a/k;->a:Landroid/content/ContentResolver;

    invoke-static {v5, v3}, Le/a/p5/s0/f;->K(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 70
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v3, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    .line 71
    iget-object v1, v7, Le/a/a/k/a/k;->a:Landroid/content/ContentResolver;

    invoke-static {v1, v3}, Le/a/p5/s0/f;->K(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    :cond_7
    throw v0

    .line 72
    :cond_8
    :goto_4
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video$a;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 74
    iget-object v5, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    invoke-static {v5, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;->access$5600(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;Ljava/lang/String;)V

    .line 75
    iget-object v4, v1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    .line 76
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 77
    iget-object v5, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    invoke-static {v5, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;->access$5300(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;Ljava/lang/String;)V

    .line 78
    iget-wide v4, v1, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    long-to-int v4, v4

    .line 79
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 80
    iget-object v5, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    invoke-static {v5, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;->access$5900(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;I)V

    .line 81
    iget v4, v1, Lcom/truecaller/messaging/data/types/VideoEntity;->v:I

    .line 82
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 83
    iget-object v5, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    invoke-static {v5, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;->access$6100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;I)V

    .line 84
    iget v4, v1, Lcom/truecaller/messaging/data/types/VideoEntity;->w:I

    .line 85
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 86
    iget-object v5, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    invoke-static {v5, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;->access$6300(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;I)V

    .line 87
    iget v1, v1, Lcom/truecaller/messaging/data/types/VideoEntity;->x:I

    .line 88
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 89
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    invoke-static {v4, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;->access$6500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;I)V

    if-eqz v13, :cond_9

    .line 90
    invoke-static {v3, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 91
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 92
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    invoke-static {v4, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;->access$6700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;Lcom/google/protobuf/ByteString;)V

    .line 93
    :cond_9
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 95
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->access$21700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video;)V

    goto/16 :goto_6

    .line 96
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->e()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 97
    move-object v1, v8

    check-cast v1, Lcom/truecaller/messaging/data/types/AudioEntity;

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$a;

    move-result-object v3

    .line 99
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 100
    iget-object v5, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;

    invoke-static {v5, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;->access$13500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;Ljava/lang/String;)V

    .line 101
    iget-object v4, v1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    .line 102
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 103
    iget-object v5, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;

    invoke-static {v5, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;->access$13200(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;Ljava/lang/String;)V

    .line 104
    iget-wide v4, v1, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    long-to-int v4, v4

    .line 105
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 106
    iget-object v5, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;

    invoke-static {v5, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;->access$13800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;I)V

    .line 107
    iget v1, v1, Lcom/truecaller/messaging/data/types/AudioEntity;->v:I

    .line 108
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 109
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;

    invoke-static {v4, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;->access$14000(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;I)V

    .line 110
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 112
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->access$22000(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;)V

    goto/16 :goto_6

    .line 113
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->t()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard$a;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 116
    iget-object v3, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;

    invoke-static {v3, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;->access$3100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;Ljava/lang/String;)V

    .line 117
    iget-wide v3, v8, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    long-to-int v1, v3

    .line 118
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 119
    iget-object v3, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;

    invoke-static {v3, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;->access$3400(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;I)V

    .line 120
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    const-string v2, "InputMessageContent.VCar\u2026t())\n            .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 122
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->access$21100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard;)V

    goto/16 :goto_6

    .line 123
    :cond_c
    iget-boolean v1, v8, Lcom/truecaller/messaging/data/types/BinaryEntity;->t:Z

    if-eqz v1, :cond_e

    .line 124
    move-object v1, v8

    check-cast v1, Lcom/truecaller/messaging/data/types/DocumentEntity;

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/MediaHandles$Response;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v3, v1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    .line 126
    invoke-static {v3, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 127
    invoke-static {v11, v3, v4}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_5

    :cond_d
    move-object v12, v3

    .line 128
    :goto_5
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File$a;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 130
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;

    invoke-static {v4, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;->access$15300(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 132
    iget-object v2, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;

    invoke-static {v2, v12}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;->access$15000(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;Ljava/lang/String;)V

    .line 133
    iget-wide v4, v1, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    long-to-int v2, v4

    .line 134
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 135
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;

    invoke-static {v4, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;->access$15600(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;I)V

    .line 136
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/DocumentEntity;->v:Ljava/lang/String;

    .line 137
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 138
    iget-object v2, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;

    invoke-static {v2, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;->access$15800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    const-string v2, "InputMessageContent.File\u2026ame)\n            .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 141
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;

    invoke-static {v0, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;->access$22600(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File;)V

    goto :goto_6

    :cond_e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Trying to add unsupported entity "

    .line 142
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    :goto_6
    return-void

    .line 143
    :cond_f
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v4, v0, v4

    const-string v0, "Failed"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v8, v6

    move-object v6, v0

    .line 144
    :try_start_5
    invoke-virtual/range {v1 .. v6}, Le/a/a/k/a/k;->c(Lcom/truecaller/messaging/data/types/Entity;Ljava/lang/String;JLjava/lang/String;)V

    .line 145
    new-instance v0, Le/a/a/k/a/c2;

    iget-object v1, v7, Le/a/a/k/a/k;->f:Le/a/a/k/a/e2;

    invoke-virtual {v1, v8}, Le/a/a/k/a/e2;->a(Lu3/k0;)I

    move-result v1

    invoke-direct {v0, v1}, Le/a/a/k/a/c2;-><init>(I)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v8, v6

    :goto_7
    move-object v1, v0

    .line 146
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-static {v8, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 147
    :catch_0
    iget-boolean v0, v15, Lu3/p0/g/e;->m:Z

    if-eqz v0, :cond_10

    .line 148
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 149
    :cond_10
    new-instance v0, Le/a/a/k/a/c2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/a/a/k/a/c2;-><init>(I)V

    throw v0

    :cond_11
    return-void
.end method
