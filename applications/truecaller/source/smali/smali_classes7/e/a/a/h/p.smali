.class public final Le/a/a/h/p;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/a/h/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/h/o;",
        ">;",
        "Le/a/a/h/n;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/h/l;

.field public final c:Le/a/o5/f0;

.field public final d:Le/a/a/h/m;

.field public final e:Le/a/a/k/a/a/q;

.field public final f:Le/a/a/i0;

.field public final g:Le/a/b0/o/a;

.field public final h:Le/a/b0/e/r/a;

.field public final i:Le/a/p5/c0;

.field public final j:Le/a/a/i1/f;


# direct methods
.method public constructor <init>(Le/a/a/h/l;Le/a/o5/f0;Le/a/a/h/m;Le/a/a/k/a/a/q;Le/a/a/i0;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/p5/c0;Le/a/a/i1/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menuListener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingBulkSearcher"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/h/p;->b:Le/a/a/h/l;

    iput-object p2, p0, Le/a/a/h/p;->c:Le/a/o5/f0;

    iput-object p3, p0, Le/a/a/h/p;->d:Le/a/a/h/m;

    iput-object p4, p0, Le/a/a/h/p;->e:Le/a/a/k/a/a/q;

    iput-object p5, p0, Le/a/a/h/p;->f:Le/a/a/i0;

    iput-object p6, p0, Le/a/a/h/p;->g:Le/a/b0/o/a;

    iput-object p7, p0, Le/a/a/h/p;->h:Le/a/b0/e/r/a;

    iput-object p8, p0, Le/a/a/h/p;->i:Le/a/p5/c0;

    iput-object p9, p0, Le/a/a/h/p;->j:Le/a/a/i1/f;

    return-void
.end method


# virtual methods
.method public final A(I)Le/a/k3/l/k/a;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/h/p;->b:Le/a/a/h/l;

    invoke-interface {v1}, Le/a/a/h/l;->f()Le/a/a/k/a/a/o;

    move-result-object v1

    if-eqz v1, :cond_0

    move/from16 v2, p1

    .line 2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3
    invoke-interface {v1}, Le/a/a/k/a/a/o;->i1()Le/a/k3/l/k/a;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 4
    iget-object v2, v1, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    .line 5
    iget-object v3, v0, Le/a/a/h/p;->f:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v2, v0, Le/a/a/h/p;->i:Le/a/p5/c0;

    const v3, 0x7f120437

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 7
    iget-object v2, v0, Le/a/a/h/p;->g:Le/a/b0/o/a;

    const-string v3, "profileAvatar"

    invoke-interface {v2, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 8
    iget-object v2, v0, Le/a/a/h/p;->h:Le/a/b0/e/r/a;

    const-string v3, "profileNumber"

    invoke-interface {v2, v3}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9
    iget-object v6, v1, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    iget v7, v1, Le/a/k3/l/k/a;->b:I

    iget-object v9, v1, Le/a/k3/l/k/a;->d:Ljava/lang/String;

    iget-object v11, v1, Le/a/k3/l/k/a;->f:Ljava/lang/String;

    iget-wide v13, v1, Le/a/k3/l/k/a;->h:J

    iget-object v15, v1, Le/a/k3/l/k/a;->i:Ljava/lang/String;

    iget v2, v1, Le/a/k3/l/k/a;->j:I

    iget-wide v3, v1, Le/a/k3/l/k/a;->k:J

    iget-object v1, v1, Le/a/k3/l/k/a;->l:Ljava/lang/Long;

    const-string v5, "imPeerId"

    .line 10
    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v20, Le/a/k3/l/k/a;

    move-object/from16 v5, v20

    move/from16 v16, v2

    move-wide/from16 v17, v3

    move-object/from16 v19, v1

    invoke-direct/range {v5 .. v19}, Le/a/k3/l/k/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJLjava/lang/Long;)V

    return-object v20

    :cond_2
    :goto_1
    return-object v1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Le/a/a/h/o;

    const-string v3, "itemView"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v3, v0, Le/a/a/h/p;->b:Le/a/a/h/l;

    invoke-interface {v3}, Le/a/a/h/l;->h()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_b

    .line 4
    invoke-virtual {v0, v1}, Le/a/a/h/p;->A(I)Le/a/k3/l/k/a;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 5
    iget-object v3, v0, Le/a/a/h/p;->e:Le/a/a/k/a/a/q;

    .line 6
    iget v7, v1, Le/a/k3/l/k/a;->b:I

    .line 7
    invoke-interface {v3, v7}, Le/a/a/k/a/a/q;->c(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-interface {v2, v3}, Le/a/a/h/o;->L0(Ljava/lang/String;)V

    .line 8
    iget v3, v1, Le/a/k3/l/k/a;->b:I

    const/16 v7, 0x8

    and-int/2addr v3, v7

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v6

    .line 9
    :goto_1
    invoke-interface {v2, v3}, Le/a/a/h/o;->s2(Z)V

    .line 10
    new-instance v3, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 11
    iget-object v8, v0, Le/a/a/h/p;->c:Le/a/o5/f0;

    .line 12
    iget-wide v9, v1, Le/a/k3/l/k/a;->h:J

    .line 13
    iget-object v11, v1, Le/a/k3/l/k/a;->g:Ljava/lang/String;

    .line 14
    invoke-interface {v8, v9, v10, v11, v5}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v9

    .line 15
    iget-object v8, v1, Le/a/k3/l/k/a;->e:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 16
    invoke-static {v8}, Le/a/m0/a1$k;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    move-object v12, v4

    const/4 v11, 0x0

    .line 17
    iget-object v10, v1, Le/a/k3/l/k/a;->c:Ljava/lang/String;

    const/4 v13, 0x0

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

    const v25, 0xfff4

    move-object v8, v3

    .line 18
    invoke-direct/range {v8 .. v25}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 19
    invoke-interface {v2, v3}, Le/a/a/h/o;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 20
    iget-object v3, v1, Le/a/k3/l/k/a;->e:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto :goto_2

    .line 21
    :cond_3
    iget-object v3, v1, Le/a/k3/l/k/a;->c:Ljava/lang/String;

    :goto_2
    if-eqz v3, :cond_4

    goto :goto_3

    .line 22
    :cond_4
    iget-object v3, v0, Le/a/a/h/p;->e:Le/a/a/k/a/a/q;

    .line 23
    iget-object v4, v1, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    .line 24
    invoke-interface {v3, v4}, Le/a/a/k/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-interface {v2, v3}, Le/a/a/h/o;->setName(Ljava/lang/String;)V

    .line 25
    iget-object v3, v0, Le/a/a/h/p;->b:Le/a/a/h/l;

    invoke-interface {v3}, Le/a/a/h/l;->h()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 26
    iget-object v4, v1, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    .line 27
    iget-object v8, v0, Le/a/a/h/p;->f:Le/a/a/i0;

    invoke-interface {v8}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 28
    iget-object v8, v0, Le/a/a/h/p;->e:Le/a/a/k/a/a/q;

    .line 29
    iget-object v9, v3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->g:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 30
    sget-object v10, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->KICK_OUT:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    invoke-interface {v8, v9, v10, v1}, Le/a/a/k/a/a/q;->f(Lcom/truecaller/messaging/data/types/ImGroupPermissions;Lcom/truecaller/api/services/messenger/v1/models/GroupAction;Le/a/k3/l/k/a;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v5

    goto :goto_4

    :cond_5
    move v8, v6

    :goto_4
    if-nez v4, :cond_6

    .line 31
    iget-object v9, v0, Le/a/a/h/p;->e:Le/a/a/k/a/a/q;

    .line 32
    iget-object v10, v3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->g:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 33
    iget v11, v1, Le/a/k3/l/k/a;->b:I

    const/high16 v12, 0x20000000

    .line 34
    invoke-interface {v9, v10, v11, v12}, Le/a/a/k/a/a/q;->a(Lcom/truecaller/messaging/data/types/ImGroupPermissions;II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 35
    sget-object v9, Lcom/truecaller/api/services/messenger/v1/models/Role;->USER:Lcom/truecaller/api/services/messenger/v1/models/Role;

    invoke-static {v1, v9}, Le/a/c/p/a;->c1(Le/a/k3/l/k/a;Lcom/truecaller/api/services/messenger/v1/models/Role;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v5

    goto :goto_5

    :cond_6
    move v9, v6

    :goto_5
    if-nez v4, :cond_7

    .line 36
    iget-object v10, v0, Le/a/a/h/p;->e:Le/a/a/k/a/a/q;

    .line 37
    iget-object v3, v3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->g:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 38
    iget v11, v1, Le/a/k3/l/k/a;->b:I

    .line 39
    invoke-interface {v10, v3, v11, v7}, Le/a/a/k/a/a/q;->a(Lcom/truecaller/messaging/data/types/ImGroupPermissions;II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 40
    sget-object v3, Lcom/truecaller/api/services/messenger/v1/models/Role;->ADMIN:Lcom/truecaller/api/services/messenger/v1/models/Role;

    invoke-static {v1, v3}, Le/a/c/p/a;->c1(Le/a/k3/l/k/a;Lcom/truecaller/api/services/messenger/v1/models/Role;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    goto :goto_6

    :cond_7
    move v3, v6

    .line 41
    :goto_6
    iget-object v7, v1, Le/a/k3/l/k/a;->i:Ljava/lang/String;

    if-nez v7, :cond_8

    .line 42
    iget-object v7, v1, Le/a/k3/l/k/a;->c:Ljava/lang/String;

    if-eqz v7, :cond_9

    :cond_8
    move v6, v5

    .line 43
    :cond_9
    invoke-interface {v2, v8, v9, v3, v6}, Le/a/a/h/o;->y1(ZZZZ)V

    xor-int/lit8 v3, v4, 0x1

    .line 44
    invoke-interface {v2, v3}, Le/a/a/h/o;->y2(Z)V

    .line 45
    :cond_a
    iget-object v2, v0, Le/a/a/h/p;->j:Le/a/a/i1/f;

    invoke-interface {v2, v1}, Le/a/a/i1/f;->b(Le/a/k3/l/k/a;)V

    goto/16 :goto_8

    .line 46
    :cond_b
    iget-object v3, v0, Le/a/a/h/p;->b:Le/a/a/h/l;

    invoke-interface {v3}, Le/a/a/h/l;->o()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 47
    iget-object v3, v0, Le/a/a/h/p;->b:Le/a/a/h/l;

    invoke-interface {v3}, Le/a/a/h/l;->o()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-static {v3, v1}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v1, :cond_e

    .line 48
    invoke-interface {v2, v6}, Le/a/a/h/o;->s2(Z)V

    .line 49
    iget-object v3, v1, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    iget-object v7, v0, Le/a/a/h/p;->f:Le/a/a/i0;

    invoke-interface {v7}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 50
    new-instance v11, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 51
    iget-object v7, v0, Le/a/a/h/p;->c:Le/a/o5/f0;

    iget-wide v8, v1, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    iget-object v10, v1, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    invoke-interface {v7, v8, v9, v10, v5}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v8

    .line 52
    iget-object v7, v1, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    if-eqz v7, :cond_c

    invoke-static {v7}, Le/a/m0/a1$k;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_c
    const/4 v10, 0x0

    .line 53
    iget-object v9, v1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

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

    const v24, 0xfff4

    move-object v7, v11

    move-object v5, v11

    move-object v11, v4

    .line 54
    invoke-direct/range {v7 .. v24}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 55
    invoke-interface {v2, v5}, Le/a/a/h/o;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 56
    iget-object v4, v1, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    if-eqz v4, :cond_d

    goto :goto_7

    :cond_d
    iget-object v4, v1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    :goto_7
    const-string v5, "participant.name ?: participant.normalizedAddress"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Le/a/a/h/o;->setName(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 57
    invoke-interface {v2, v6, v6, v6, v4}, Le/a/a/h/o;->y1(ZZZZ)V

    xor-int/2addr v3, v4

    .line 58
    invoke-interface {v2, v3}, Le/a/a/h/o;->y2(Z)V

    .line 59
    iget-object v2, v0, Le/a/a/h/p;->j:Le/a/a/i1/f;

    invoke-interface {v2, v1}, Le/a/a/i1/f;->a(Lcom/truecaller/data/entity/messaging/Participant;)V

    :cond_e
    :goto_8
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h/p;->b:Le/a/a/h/l;

    invoke-interface {v0}, Le/a/a/h/l;->o()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/h/p;->b:Le/a/a/h/l;

    invoke-interface {v0}, Le/a/a/h/l;->f()Le/a/a/k/a/a/o;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/a/h/p;->b:Le/a/a/h/l;

    invoke-interface {v0}, Le/a/a/h/l;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h/p;->b:Le/a/a/h/l;

    invoke-interface {v0}, Le/a/a/h/l;->o()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Le/a/a/h/p;->A(I)Le/a/k3/l/k/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    int-to-long v0, p1

    goto :goto_2

    .line 5
    :cond_2
    iget-object v0, p0, Le/a/a/h/p;->b:Le/a/a/h/l;

    invoke-interface {v0}, Le/a/a/h/l;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0, p1}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p1, :cond_3

    iget-wide v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->a:J

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/h/p;->b:Le/a/a/h/l;

    invoke-interface {v0}, Le/a/a/h/l;->o()Ljava/util/List;

    move-result-object v0

    const-string v1, "ItemEvent.ImGroupParticipantItemMvp.VIEW_PROFILE"

    const-string v2, "ItemEvent.ImGroupParticipantItemMvp.MESSAGE"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 2
    iget v0, p1, Le/a/o2/h;->b:I

    .line 3
    invoke-virtual {p0, v0}, Le/a/a/h/p;->A(I)Le/a/k3/l/k/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "ItemEvent.ImGroupParticipantItemMvp.DISMISS_ADMIN"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/a/h/p;->d:Le/a/a/h/m;

    invoke-interface {p1, v0}, Le/a/a/h/m;->e7(Le/a/k3/l/k/a;)V

    goto/16 :goto_1

    .line 7
    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/a/h/p;->d:Le/a/a/h/m;

    invoke-interface {p1, v0}, Le/a/a/h/m;->o4(Le/a/k3/l/k/a;)V

    goto :goto_1

    .line 8
    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/a/h/p;->d:Le/a/a/h/m;

    invoke-interface {p1, v0}, Le/a/a/h/m;->x8(Le/a/k3/l/k/a;)V

    goto :goto_1

    :sswitch_3
    const-string v1, "ItemEvent.ImGroupParticipantItemMvp.MAKE_ADMIN"

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/a/h/p;->d:Le/a/a/h/m;

    invoke-interface {p1, v0}, Le/a/a/h/m;->r9(Le/a/k3/l/k/a;)V

    goto :goto_1

    :sswitch_4
    const-string v1, "ItemEvent.ImGroupParticipantItemMvp.REMOVE"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/a/h/p;->d:Le/a/a/h/m;

    invoke-interface {p1, v0}, Le/a/a/h/m;->w9(Le/a/k3/l/k/a;)V

    goto :goto_1

    :cond_0
    :goto_0
    return v3

    .line 11
    :cond_1
    iget-object v0, p0, Le/a/a/h/p;->b:Le/a/a/h/l;

    invoke-interface {v0}, Le/a/a/h/l;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    iget v4, p1, Le/a/o2/h;->b:I

    .line 13
    invoke-static {v0, v4}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v0, :cond_4

    .line 14
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x3012130e

    if-eq v4, v5, :cond_3

    const v2, 0x40295328

    if-eq v4, v2, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/a/a/h/p;->d:Le/a/a/h/m;

    invoke-interface {p1, v0}, Le/a/a/h/m;->kf(Lcom/truecaller/data/entity/messaging/Participant;)V

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/a/a/h/p;->d:Le/a/a/h/m;

    invoke-interface {p1, v0}, Le/a/a/h/m;->a8(Lcom/truecaller/data/entity/messaging/Participant;)V

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a0e9b83 -> :sswitch_4
        -0x3a7d6ae9 -> :sswitch_3
        0x3012130e -> :sswitch_2
        0x40295328 -> :sswitch_1
        0x631b0301 -> :sswitch_0
    .end sparse-switch
.end method
