.class public final Le/a/x2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/a/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/b0/a/b/b<",
        "Lcom/truecaller/messaging/data/types/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/o5/f0;


# direct methods
.method public constructor <init>(Le/a/o5/f0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/x2/b;->a:Le/a/o5/f0;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 0

    .line 1
    check-cast p1, Lcom/truecaller/messaging/data/types/Conversation;

    invoke-virtual {p0, p1}, Le/a/x2/b;->b(Lcom/truecaller/messaging/data/types/Conversation;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/messaging/data/types/Conversation;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 26

    move-object/from16 v0, p1

    const-string v1, "type"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v1}, Le/a/c/p/a;->p1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v1

    const-string v2, "participants"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1a

    .line 3
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v1, :cond_1

    iget v6, v1, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    iget-object v1, v1, Lcom/truecaller/data/entity/messaging/Participant;->u:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    invoke-static {v6, v1}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 4
    :goto_0
    iget-object v6, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v6}, Le/a/c/p/a;->p1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v6

    if-ne v6, v5, :cond_3

    .line 5
    iget-object v6, v0, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v6, :cond_2

    .line 6
    iget-object v6, v6, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 7
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v7, p0

    goto :goto_1

    :cond_2
    move-object/from16 v7, p0

    goto :goto_2

    :cond_3
    if-nez v6, :cond_19

    .line 8
    iget-object v6, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v6, :cond_2

    move-object/from16 v7, p0

    iget-object v8, v7, Le/a/x2/b;->a:Le/a/o5/f0;

    iget-wide v9, v6, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    iget-object v6, v6, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    invoke-interface {v8, v9, v10, v6, v5}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v6

    :goto_1
    move-object v9, v6

    goto :goto_3

    :goto_2
    move-object v9, v3

    .line 9
    :goto_3
    iget v6, v0, Lcom/truecaller/messaging/data/types/Conversation;->s:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_4

    move v13, v5

    goto :goto_4

    :cond_4
    move v13, v4

    .line 10
    :goto_4
    new-instance v6, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 11
    iget-object v8, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v8}, Le/a/c/p/a;->p1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v8

    if-ne v8, v5, :cond_5

    goto :goto_5

    :cond_5
    if-nez v8, :cond_18

    .line 12
    iget-object v8, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v8, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v8, :cond_6

    iget-object v8, v8, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 13
    invoke-static {v8, v4, v5}, Le/m/d/y/n;->t1(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v8

    move-object v12, v8

    goto :goto_6

    :cond_6
    :goto_5
    move-object v12, v3

    .line 14
    :goto_6
    iget-object v8, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v8, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    move-object v10, v2

    goto :goto_7

    :cond_7
    move-object v10, v3

    .line 15
    :goto_7
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v2, :cond_8

    .line 16
    iget-object v3, v2, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    :cond_8
    move-object v11, v3

    .line 17
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v2}, Le/a/c/p/a;->p1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v14

    .line 18
    iget v0, v0, Lcom/truecaller/messaging/data/types/Conversation;->c:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    move v15, v5

    goto :goto_8

    :cond_9
    move v15, v4

    :goto_8
    const/16 v0, 0x80

    if-nez v1, :cond_a

    goto :goto_9

    .line 19
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v5, :cond_d

    :goto_9
    if-nez v1, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_c

    goto :goto_b

    :cond_c
    :goto_a
    move/from16 v16, v4

    goto :goto_c

    :cond_d
    :goto_b
    move/from16 v16, v5

    :goto_c
    const/4 v2, 0x4

    if-nez v1, :cond_e

    goto :goto_d

    .line 20
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_f

    move/from16 v17, v5

    goto :goto_e

    :cond_f
    :goto_d
    move/from16 v17, v4

    :goto_e
    const/16 v2, 0x20

    if-nez v1, :cond_10

    goto :goto_f

    .line 21
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_11

    move/from16 v18, v5

    goto :goto_10

    :cond_11
    :goto_f
    move/from16 v18, v4

    :goto_10
    if-nez v1, :cond_12

    goto :goto_11

    .line 22
    :cond_12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_13

    move/from16 v19, v5

    goto :goto_12

    :cond_13
    :goto_11
    move/from16 v19, v4

    :goto_12
    const/16 v0, 0x100

    if-nez v1, :cond_14

    goto :goto_13

    .line 23
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_15

    move/from16 v20, v5

    goto :goto_14

    :cond_15
    :goto_13
    move/from16 v20, v4

    :goto_14
    const/16 v0, 0x10

    if-nez v1, :cond_16

    goto :goto_15

    .line 24
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_17

    move/from16 v21, v5

    goto :goto_16

    :cond_17
    :goto_15
    move/from16 v21, v4

    :goto_16
    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v25, 0xc000

    move-object v8, v6

    .line 25
    invoke-direct/range {v8 .. v25}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    return-object v6

    .line 26
    :cond_18
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_19
    move-object/from16 v7, p0

    .line 27
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_1a
    move-object/from16 v7, p0

    .line 28
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method
