.class public final Le/a/a/k/a/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/o1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/b0/q/b;

.field public final c:Le/a/a/v0/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/q/b;Le/a/a/v0/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentStoreHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkMetaDataExtractor"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/p1;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/k/a/p1;->b:Le/a/b0/q/b;

    iput-object p3, p0, Le/a/a/k/a/p1;->c:Le/a/a/v0/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)Lcom/truecaller/messaging/data/types/LinkPreviewEntity;
    .locals 25

    const-string v0, "content"

    move-object/from16 v7, p1

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getMessageEntitiesList()Ljava/util/List;

    move-result-object v0

    const-string v1, "content.messageEntitiesList"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;

    .line 3
    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;->hasLinkPreview()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 4
    :goto_0
    move-object v0, v1

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;

    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;->getLinkPreview()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity$LinkPreview;

    move-result-object v1

    const-string v8, "it.linkPreview"

    invoke-static {v1, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity$LinkPreview;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    :goto_2
    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;->getLinkPreview()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity$LinkPreview;

    move-result-object v1

    invoke-static {v1, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity$LinkPreview;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    goto/16 :goto_6

    .line 6
    :cond_6
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content.text"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;->getOffset()I

    move-result v3

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;->getLength()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v15, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    new-instance v9, Ls1/z/c/c0;

    invoke-direct {v9}, Ls1/z/c/c0;-><init>()V

    iput-object v2, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 8
    new-instance v10, Ls1/z/c/y;

    invoke-direct {v10}, Ls1/z/c/y;-><init>()V

    iput-boolean v4, v10, Ls1/z/c/y;->a:Z

    .line 9
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;->getLinkPreview()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity$LinkPreview;

    move-result-object v1

    invoke-static {v1, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity$LinkPreview;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v2

    move-object/from16 v14, p0

    if-eqz v2, :cond_7

    .line 10
    iget-object v11, v14, Le/a/a/k/a/p1;->b:Le/a/b0/q/b;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    int-to-long v12, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    new-instance v22, Le/a/a/k/a/p1$a;

    move-object/from16 v1, v22

    move-object v3, v9

    move-object v4, v10

    move-object v5, v0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Le/a/a/k/a/p1$a;-><init>(Lcom/google/protobuf/ByteString;Ls1/z/c/c0;Ls1/z/c/y;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;Le/a/a/k/a/p1;Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V

    const/16 v23, 0x8

    const/16 v24, 0x0

    const-string v19, "application/vnd.truecaller.linkpreview"

    move-object/from16 v16, v11

    move-wide/from16 v17, v12

    invoke-static/range {v16 .. v24}, Le/a/n/g0;->L0(Le/a/b0/q/b;JLjava/lang/String;ZILs1/z/b/l;ILjava/lang/Object;)Ls1/k;

    move-result-object v1

    .line 11
    iget-object v1, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 12
    check-cast v1, Landroid/net/Uri;

    iput-object v1, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 13
    :cond_7
    new-instance v2, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    const-wide/16 v3, 0x0

    .line 14
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;->getLinkPreview()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity$LinkPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity$LinkPreview;->hasPlayable()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "application/vnd.truecaller.linkpreview.playable"

    :goto_4
    move-object v12, v1

    goto :goto_5

    .line 15
    :cond_8
    iget-boolean v1, v10, Ls1/z/c/y;->a:Z

    if-eqz v1, :cond_9

    const-string v1, "application/vnd.truecaller.linkpreview.media"

    goto :goto_4

    :cond_9
    const-string v1, "application/vnd.truecaller.linkpreview"

    goto :goto_4

    :goto_5
    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-wide/16 v16, 0x0

    .line 16
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;->getLinkPreview()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity$LinkPreview;

    move-result-object v6

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity$LinkPreview;->getTitle()Ljava/lang/String;

    move-result-object v6

    const-string v7, "it.linkPreview.title"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;->getLinkPreview()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity$LinkPreview;

    move-result-object v0

    invoke-static {v0, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity$LinkPreview;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v7, "it.linkPreview.description"

    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v7, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object/from16 v18, v7

    check-cast v18, Landroid/net/Uri;

    const/16 v22, 0x39

    move-object v9, v2

    move-wide v10, v3

    move v14, v1

    move-object v1, v15

    move v15, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    .line 19
    invoke-direct/range {v9 .. v22}, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;-><init>(JLjava/lang/String;IIIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :catch_0
    :cond_a
    :goto_6
    return-object v2
.end method

.method public b(Lcom/truecaller/messaging/data/types/Message;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "message"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v3, v0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string v4, "message.entities"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v3, v7

    instance-of v9, v8, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    if-eqz v9, :cond_0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v4}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    const-string v4, "message.buildMessageText()"

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_1c

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v3, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->A:Ljava/lang/String;

    invoke-static {v8, v9, v6, v6}, Ls1/f0/v;->D(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    move v9, v6

    move-object v0, v7

    move-object v3, v0

    goto/16 :goto_f

    .line 7
    :cond_2
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;

    move-result-object v10

    .line 8
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview$a;

    move-result-object v11

    .line 9
    iget-object v12, v3, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->y:Ljava/lang/String;

    .line 10
    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11
    iget-object v13, v11, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v13, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;

    invoke-static {v13, v12}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;->access$16500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;Ljava/lang/String;)V

    .line 12
    iget-object v12, v3, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->z:Ljava/lang/String;

    .line 13
    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14
    iget-object v13, v11, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v13, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;

    invoke-static {v13, v12}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;->access$16800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;Ljava/lang/String;)V

    .line 15
    iget-object v12, v3, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->x:Landroid/net/Uri;

    if-eqz v12, :cond_18

    invoke-static {v12}, Le/a/p5/s0/f;->n(Landroid/net/Uri;)Z

    move-result v13

    xor-int/2addr v13, v5

    if-eqz v13, :cond_3

    goto :goto_1

    :cond_3
    move-object v12, v7

    :goto_1
    if-eqz v12, :cond_18

    .line 16
    :try_start_0
    iget-object v13, v1, Le/a/a/k/a/p1;->a:Landroid/content/Context;

    invoke-static {v13}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v13

    .line 17
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-class v14, Ljava/io/File;

    invoke-virtual {v13, v14}, Le/a/z3/e;->a(Ljava/lang/Class;)Le/f/a/h;

    move-result-object v13

    .line 19
    sget-object v14, Le/f/a/r/h;->A:Le/f/a/r/h;

    if-nez v14, :cond_4

    .line 20
    new-instance v14, Le/f/a/r/h;

    invoke-direct {v14}, Le/f/a/r/h;-><init>()V

    invoke-virtual {v14, v5}, Le/f/a/r/a;->A(Z)Le/f/a/r/a;

    move-result-object v14

    check-cast v14, Le/f/a/r/h;

    invoke-virtual {v14}, Le/f/a/r/a;->b()Le/f/a/r/a;

    move-result-object v14

    check-cast v14, Le/f/a/r/h;

    sput-object v14, Le/f/a/r/h;->A:Le/f/a/r/h;

    .line 21
    :cond_4
    sget-object v14, Le/f/a/r/h;->A:Le/f/a/r/h;

    .line 22
    invoke-virtual {v13, v14}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object v13

    .line 23
    check-cast v13, Le/a/z3/d;

    .line 24
    iput-object v12, v13, Le/f/a/h;->J:Ljava/lang/Object;

    .line 25
    iput-boolean v5, v13, Le/f/a/h;->N:Z

    .line 26
    invoke-virtual {v13}, Le/f/a/h;->X()Le/f/a/r/c;

    move-result-object v12
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v12, Le/f/a/r/f;

    :try_start_1
    invoke-virtual {v12}, Le/f/a/r/f;->get()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_2

    :cond_5
    move-object v12, v7

    :goto_2
    check-cast v12, Ljava/io/File;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-object v12, v7

    :goto_3
    if-eqz v12, :cond_18

    .line 27
    iget-object v13, v3, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const-string v14, "application/vnd.truecaller.linkpreview"

    invoke-static {v13, v14}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    xor-int/2addr v13, v5

    .line 28
    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    const-string v14, "Uri.fromFile(originalFile)"

    invoke-static {v12, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v14, v1, Le/a/a/k/a/p1;->a:Landroid/content/Context;

    const/4 v15, 0x2

    invoke-static {v12, v14, v7, v15}, Le/a/p5/s0/f;->c(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_17

    .line 29
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v7, "file.path"

    invoke-static {v14, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v7, Ln3/q/a/a;

    invoke-direct {v7, v14}, Ln3/q/a/a;-><init>(Ljava/lang/String;)V

    const-string v14, "Orientation"

    invoke-virtual {v7, v14, v5}, Ln3/q/a/a;->e(Ljava/lang/String;I)I

    move-result v7

    const/4 v14, 0x3

    if-eq v7, v14, :cond_8

    const/4 v14, 0x6

    if-eq v7, v14, :cond_7

    const/16 v14, 0x8

    if-eq v7, v14, :cond_6

    move v7, v6

    goto :goto_4

    :cond_6
    const/16 v7, 0x10e

    goto :goto_4

    :cond_7
    const/16 v7, 0x5a

    goto :goto_4

    :cond_8
    const/16 v7, 0xb4

    :goto_4
    if-eqz v13, :cond_9

    const/16 v14, 0x21c

    goto :goto_5

    :cond_9
    const/16 v14, 0x70

    .line 31
    :goto_5
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 32
    invoke-static {v5, v7}, Le/a/e/a2;->Z(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 33
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-nez v13, :cond_b

    .line 34
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-eq v7, v13, :cond_b

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-gt v7, v14, :cond_a

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v7, v14, :cond_b

    .line 35
    :cond_a
    invoke-static {v5, v6, v6}, Le/a/e/a2;->b0(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_6

    .line 36
    :cond_b
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-gt v7, v14, :cond_c

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-le v7, v14, :cond_d

    .line 37
    :cond_c
    invoke-static {v5, v6, v6}, Le/a/e/a2;->m(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_d
    :goto_6
    if-eqz v5, :cond_15

    .line 38
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x32

    invoke-static {v5, v12, v6, v7}, Le/a/e/a2;->l(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    if-nez v6, :cond_e

    goto/16 :goto_b

    :cond_e
    const-string v5, "$this$readBytes"

    .line 39
    invoke-static {v12, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 41
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const v13, 0x7fffffff

    int-to-long v13, v13

    cmp-long v13, v6, v13

    const-string v14, "File "

    if-gtz v13, :cond_14

    long-to-int v6, v6

    .line 42
    :try_start_3
    new-array v7, v6, [B

    move v15, v6

    const/4 v13, 0x0

    :goto_7
    if-lez v15, :cond_10

    .line 43
    invoke-virtual {v5, v7, v13, v15}, Ljava/io/FileInputStream;->read([BII)I

    move-result v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-gez v17, :cond_f

    goto :goto_8

    :cond_f
    sub-int v15, v15, v17

    add-int v13, v13, v17

    goto :goto_7

    :cond_10
    :goto_8
    const-string v9, "java.util.Arrays.copyOf(this, newSize)"

    if-lez v15, :cond_11

    .line 44
    :try_start_4
    invoke-static {v7, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 45
    :cond_11
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v13

    const/4 v15, -0x1

    if-ne v13, v15, :cond_12

    :goto_9
    const/4 v0, 0x0

    const/4 v9, 0x0

    goto :goto_a

    .line 46
    :cond_12
    new-instance v15, Ls1/y/a;

    const/16 v0, 0x2001

    invoke-direct {v15, v0}, Ls1/y/a;-><init>(I)V

    .line 47
    invoke-virtual {v15, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x2

    const/4 v13, 0x0

    .line 48
    invoke-static {v5, v15, v13, v0}, Le/q/f/a/d/a;->U(Ljava/io/InputStream;Ljava/io/OutputStream;II)J

    .line 49
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, v6

    if-ltz v0, :cond_13

    .line 50
    invoke-virtual {v15}, Ls1/y/a;->b()[B

    move-result-object v13

    .line 51
    invoke-static {v7, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/4 v9, 0x0

    .line 53
    invoke-static {v13, v7, v6, v9, v0}, Ls1/u/i;->m([B[BIII)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    .line 54
    :goto_a
    invoke-static {v5, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 55
    invoke-static {v12}, Le/a/p5/s0/g;->i1(Ljava/io/File;)Z

    goto :goto_d

    .line 56
    :cond_13
    :try_start_5
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is too big to fit in memory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_14
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is too big ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytes) to fit in memory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 58
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v5, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_15
    :goto_b
    const/4 v0, 0x0

    const/4 v9, 0x0

    goto :goto_c

    :cond_16
    move v9, v6

    const/4 v0, 0x0

    goto :goto_c

    :cond_17
    move v9, v6

    move-object v0, v7

    :goto_c
    move-object v7, v0

    :goto_d
    if-eqz v7, :cond_19

    .line 59
    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v5

    goto :goto_e

    :cond_18
    move v9, v6

    move-object v0, v7

    :cond_19
    move-object v5, v0

    :goto_e
    if-eqz v5, :cond_1a

    .line 60
    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 61
    iget-object v6, v11, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;

    invoke-static {v6, v5}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;->access$17100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;Lcom/google/protobuf/ByteString;)V

    .line 62
    :cond_1a
    iget-object v5, v3, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const-string v6, "application/vnd.truecaller.linkpreview.playable"

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 63
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview$Playable;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview$Playable;

    move-result-object v5

    .line 64
    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 65
    iget-object v6, v11, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;

    invoke-static {v6, v5}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;->access$17300(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview$Playable;)V

    .line 66
    :cond_1b
    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;

    .line 67
    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 68
    iget-object v6, v10, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v6, v5}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->access$19100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;)V

    .line 69
    iget-object v3, v3, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->A:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;->a(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;

    .line 70
    invoke-virtual {v10, v8}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;->b(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;

    .line 71
    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    :goto_f
    if-eqz v3, :cond_1d

    .line 72
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v3

    goto :goto_10

    :cond_1c
    move v9, v6

    move-object v0, v7

    :cond_1d
    move-object v7, v0

    .line 73
    :goto_10
    iget-object v0, v1, Le/a/a/k/a/p1;->c:Le/a/a/v0/a;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Le/a/a/v0/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ls1/k;

    .line 76
    iget-object v5, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 77
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-eqz v7, :cond_20

    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->getOffset()I

    move-result v6

    if-eq v5, v6, :cond_1f

    goto :goto_12

    :cond_1f
    move v13, v9

    goto :goto_13

    :cond_20
    :goto_12
    const/4 v13, 0x1

    :goto_13
    if-eqz v13, :cond_1e

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 78
    :cond_21
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/k;

    .line 79
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;

    move-result-object v4

    .line 80
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;

    .line 81
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 82
    iget-object v6, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v6, v5}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->access$19100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview;)V

    .line 83
    iget-object v5, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 84
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;->a(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;

    .line 85
    iget-object v3, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 86
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;->b(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;

    .line 87
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    const-string v4, "InputMessageContent.Mess\u2026                 .build()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_22
    return-object v2
.end method
