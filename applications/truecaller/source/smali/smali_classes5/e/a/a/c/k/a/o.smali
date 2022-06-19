.class public final Le/a/a/c/k/a/o;
.super Le/a/a/c/k/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/k/a/n;


# instance fields
.field public final h:Le/a/o5/b0;

.field public final i:Le/a/o5/f0;


# direct methods
.method public constructor <init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/c/w3;Le/a/a/k/t;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/a/c/t7;Le/a/o5/b0;Le/a/u3/g;Le/a/o5/f0;)V
    .locals 12
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p8

    move-object/from16 v11, p10

    const-string v0, "conversationState"

    move-object v1, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    move-object v2, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    move-object v5, p3

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportManager"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionModeListener"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewProvider"

    move-object/from16 v4, p7

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    move-object/from16 v8, p9

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v8}, Le/a/a/c/k/a/a;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/k/t;Le/a/a/c/t7;Le/a/a/c/w3;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/u3/g;)V

    iput-object v10, v9, Le/a/a/c/k/a/o;->h:Le/a/o5/b0;

    iput-object v11, v9, Le/a/a/c/k/a/o;->i:Le/a/o5/f0;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Le/a/a/c/a7;

    const-string v3, "view"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {v0, v2, v1}, Le/a/a/c/k/a/a;->t(Le/a/a/c/a7;I)V

    .line 4
    iget-object v3, v0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    .line 5
    invoke-interface {v3, v1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.truecaller.messaging.data.types.Message"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    .line 6
    new-instance v4, Le/a/a/c/c3$b;

    invoke-direct {v4}, Le/a/a/c/c3$b;-><init>()V

    .line 7
    iget-object v5, v0, Le/a/a/c/k/a/a;->d:Le/a/a/c/t7;

    .line 8
    iput-object v5, v4, Le/a/a/c/c3$b;->a:Le/a/a/c/t7;

    .line 9
    iget-object v5, v0, Le/a/a/c/k/a/a;->b:Le/a/a/c/l5;

    .line 10
    invoke-interface {v5, v3}, Le/a/a/c/l5;->N(Lcom/truecaller/messaging/data/types/Message;)I

    move-result v5

    .line 11
    iput v5, v4, Le/a/a/c/c3$b;->e:I

    .line 12
    iget-object v5, v0, Le/a/a/c/k/a/o;->h:Le/a/o5/b0;

    iget-object v6, v3, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string v7, "item.date"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-wide v6, v6, Lw3/b/a/e0/e;->a:J

    .line 14
    invoke-interface {v5, v6, v7}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object v5

    .line 15
    iput-object v5, v4, Le/a/a/c/c3$b;->l:Ljava/lang/String;

    .line 16
    iget-object v5, v0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    .line 17
    invoke-interface {v5}, Le/a/a/c/m5;->q()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    .line 18
    iget-object v5, v3, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v8, "item.participant"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-interface {v2, v5}, Le/a/a/c/a7;->C0(Ljava/lang/String;)V

    .line 20
    iget-object v8, v0, Le/a/a/c/k/a/a;->b:Le/a/a/c/l5;

    .line 21
    iget-object v9, v3, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v9, v9, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-interface {v8, v9}, Le/a/a/c/l5;->h(I)I

    move-result v8

    invoke-interface {v2, v8}, Le/a/a/c/a7;->a2(I)V

    .line 22
    new-instance v8, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v9, v8

    .line 23
    iget-object v10, v0, Le/a/a/c/k/a/o;->i:Le/a/o5/f0;

    iget-object v11, v3, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-wide v12, v11, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    iget-object v11, v11, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    invoke-interface {v10, v12, v13, v11, v7}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v10

    .line 24
    invoke-static {v5, v6}, Le/m/d/y/n;->s1(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    const/4 v12, 0x0

    .line 25
    iget-object v5, v3, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v11, v5, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0xfff4

    .line 26
    invoke-direct/range {v9 .. v26}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 27
    invoke-interface {v2, v8}, Le/a/a/c/a7;->k2(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 28
    invoke-interface {v2, v7}, Le/a/a/c/a7;->a1(Z)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {v2, v6}, Le/a/a/c/a7;->a1(Z)V

    .line 30
    :goto_0
    invoke-interface {v2, v6}, Le/a/a/c/a7;->T1(Z)V

    .line 31
    iget-object v5, v3, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    const-string v8, "item.getTransportInfo<MmsTransportInfo>()"

    .line 32
    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 33
    iget-object v8, v0, Le/a/a/c/k/a/a;->c:Le/a/a/k/t;

    .line 34
    invoke-interface {v8, v3}, Le/a/a/k/t;->c(Lcom/truecaller/messaging/data/types/Message;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_1
    const/4 v10, 0x3

    if-ne v8, v10, :cond_2

    move v8, v7

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    xor-int/lit8 v10, v9, 0x1

    .line 35
    iget-object v11, v0, Le/a/a/c/k/a/a;->b:Le/a/a/c/l5;

    .line 36
    invoke-interface {v11, v3}, Le/a/a/c/l5;->m(Lcom/truecaller/messaging/data/types/Message;)Ls1/k;

    move-result-object v11

    .line 37
    iget-object v12, v0, Le/a/a/c/k/a/a;->b:Le/a/a/c/l5;

    .line 38
    invoke-interface {v12}, Le/a/a/c/l5;->D()I

    move-result v12

    .line 39
    iput v12, v4, Le/a/a/c/c3$b;->f:I

    .line 40
    iget-object v12, v0, Le/a/a/c/k/a/a;->b:Le/a/a/c/l5;

    .line 41
    invoke-interface {v12}, Le/a/a/c/l5;->l()I

    move-result v12

    .line 42
    iput v12, v4, Le/a/a/c/c3$b;->u:I

    .line 43
    iget-object v12, v0, Le/a/a/c/k/a/a;->b:Le/a/a/c/l5;

    .line 44
    invoke-interface {v12}, Le/a/a/c/l5;->q()I

    move-result v12

    .line 45
    iput v12, v4, Le/a/a/c/c3$b;->v:I

    .line 46
    iput-boolean v6, v4, Le/a/a/c/c3$b;->n:Z

    .line 47
    iget-object v12, v11, Ls1/k;->a:Ljava/lang/Object;

    .line 48
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 49
    iput v12, v4, Le/a/a/c/c3$b;->o:I

    .line 50
    iget-object v11, v11, Ls1/k;->b:Ljava/lang/Object;

    .line 51
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 52
    iput v11, v4, Le/a/a/c/c3$b;->p:I

    .line 53
    iput-object v3, v4, Le/a/a/c/c3$b;->c:Lcom/truecaller/messaging/data/types/Message;

    .line 54
    iget-object v11, v0, Le/a/a/c/k/a/a;->b:Le/a/a/c/l5;

    .line 55
    iget-object v12, v5, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->p:Lw3/b/a/b;

    const-string v13, "info.expiry"

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Le/a/a/c/l5;->i(Lw3/b/a/b;)Ljava/lang/String;

    move-result-object v11

    .line 56
    iput-object v11, v4, Le/a/a/c/c3$b;->z:Ljava/lang/String;

    .line 57
    iget-object v11, v0, Le/a/a/c/k/a/a;->b:Le/a/a/c/l5;

    .line 58
    iget v5, v5, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->x:I

    int-to-long v12, v5

    invoke-interface {v11, v12, v13}, Le/a/a/c/l5;->F(J)Ljava/lang/String;

    move-result-object v5

    .line 59
    iput-object v5, v4, Le/a/a/c/c3$b;->B:Ljava/lang/String;

    .line 60
    iput-boolean v8, v4, Le/a/a/c/c3$b;->r:Z

    .line 61
    iput-boolean v10, v4, Le/a/a/c/c3$b;->t:Z

    .line 62
    iput-boolean v9, v4, Le/a/a/c/c3$b;->q:Z

    .line 63
    sget-object v5, Lcom/truecaller/messaging/conversation/AttachmentType;->PENDING_MMS:Lcom/truecaller/messaging/conversation/AttachmentType;

    .line 64
    iput-object v5, v4, Le/a/a/c/c3$b;->b:Lcom/truecaller/messaging/conversation/AttachmentType;

    .line 65
    iget-object v5, v0, Le/a/a/c/k/a/a;->b:Le/a/a/c/l5;

    .line 66
    invoke-interface {v5, v3}, Le/a/a/c/l5;->o(Lcom/truecaller/messaging/data/types/Message;)I

    move-result v5

    .line 67
    iput v5, v4, Le/a/a/c/c3$b;->G:I

    .line 68
    iget-object v5, v0, Le/a/a/c/k/a/a;->b:Le/a/a/c/l5;

    .line 69
    invoke-interface {v5}, Le/a/a/c/l5;->P()I

    move-result v5

    .line 70
    iput v5, v4, Le/a/a/c/c3$b;->m:I

    .line 71
    invoke-virtual {v4}, Le/a/a/c/c3$b;->a()Le/a/a/c/c3;

    .line 72
    invoke-interface {v2, v6}, Le/a/a/c/a7;->o4(Z)V

    .line 73
    invoke-virtual {v4}, Le/a/a/c/c3$b;->a()Le/a/a/c/c3;

    move-result-object v5

    const-string v6, "params.build()"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Le/a/a/c/k/a/a;->s(I)Z

    move-result v8

    invoke-interface {v2, v5, v8}, Le/a/a/c/a7;->I2(Le/a/a/c/c3;Z)V

    .line 74
    invoke-virtual {v0, v3, v1}, Le/a/a/c/k/a/a;->u(Lcom/truecaller/messaging/data/types/Message;I)Z

    move-result v1

    invoke-interface {v2, v1}, Le/a/a/c/a7;->C3(Z)V

    .line 75
    invoke-virtual {v4}, Le/a/a/c/c3$b;->a()Le/a/a/c/c3;

    move-result-object v1

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v3, v0, Le/a/a/c/k/a/a;->b:Le/a/a/c/l5;

    .line 77
    invoke-interface {v3}, Le/a/a/c/l5;->D()I

    move-result v3

    .line 78
    iget-object v4, v0, Le/a/a/c/k/a/a;->b:Le/a/a/c/l5;

    .line 79
    invoke-interface {v4, v7}, Le/a/a/c/l5;->K(I)I

    move-result v4

    .line 80
    invoke-interface {v2, v1, v3, v4}, Le/a/a/c/a7;->T3(Le/a/a/c/c3;II)V

    return-void
.end method

.method public m(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    .line 2
    invoke-interface {v0, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
