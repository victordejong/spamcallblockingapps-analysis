.class public final Le/a/a/d/j;
.super Le/a/a/d/p;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:I

.field public final f:Le/a/a/d/s;

.field public final g:Le/a/o5/f0;

.field public final h:Le/a/a/i0;

.field public final i:Le/a/q2/i0;


# direct methods
.method public constructor <init>(Le/a/a/d/s;Le/a/o5/f0;Le/a/u3/g;Le/a/a/i0;Le/a/q2/i0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "mode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "settings"

    invoke-static {p4, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "messageAnalytics"

    invoke-static {p5, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/a/d/p;-><init>()V

    iput-object p1, p0, Le/a/a/d/j;->f:Le/a/a/d/s;

    iput-object p2, p0, Le/a/a/d/j;->g:Le/a/o5/f0;

    iput-object p4, p0, Le/a/a/d/j;->h:Le/a/a/i0;

    iput-object p5, p0, Le/a/a/d/j;->i:Le/a/q2/i0;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    const-string p1, "one_to_one_type"

    .line 3
    iput-object p1, p0, Le/a/a/d/j;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/a/d/o;

    const-string v2, "presenterView"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    move/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "participants[adapterPosition]"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    .line 4
    new-instance v15, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v3, v15

    .line 5
    iget-object v4, v0, Le/a/a/d/j;->g:Le/a/o5/f0;

    iget-wide v5, v2, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    iget-object v7, v2, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-interface {v4, v5, v6, v7, v8}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v4

    .line 6
    invoke-static {v2}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v8}, Le/m/d/y/n;->t1(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v7

    .line 7
    iget-object v5, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move/from16 v16, v17

    move-object/from16 v21, v15

    move/from16 v15, v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xfff4

    .line 8
    invoke-direct/range {v3 .. v20}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    move-object/from16 v3, v21

    .line 9
    invoke-interface {v1, v3}, Le/a/a/d/o;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 10
    invoke-static {v2}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/a/d/o;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public Hj(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;)V"
        }
    .end annotation

    const-string v0, "participantsToAdd"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/q;

    if-eqz v0, :cond_9

    .line 3
    iget-object v1, p0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Ls1/u/i;->Z(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const p1, 0x7f120e37

    .line 5
    invoke-interface {v0, p1}, Le/a/a/d/q;->w2(I)V

    return-void

    .line 6
    :cond_1
    iget-object v2, p0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    .line 7
    iget v2, p0, Le/a/a/d/j;->e:I

    add-int/2addr v2, v3

    iget-object v4, p0, Le/a/a/d/j;->h:Le/a/a/i0;

    invoke-interface {v4}, Le/a/a/i0;->N0()I

    move-result v4

    if-le v2, v4, :cond_2

    const p1, 0x7f1203dd

    .line 8
    invoke-interface {v0, p1}, Le/a/a/d/q;->w2(I)V

    return-void

    .line 9
    :cond_2
    iget-object v2, p0, Le/a/a/d/j;->h:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->b0()I

    move-result v2

    if-le v3, v2, :cond_3

    const p1, 0x7f1203dc

    .line 10
    iget-object v1, p0, Le/a/a/d/j;->h:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->b0()I

    move-result v1

    invoke-interface {v0, p1, v1}, Le/a/a/d/q;->J1(II)V

    return-void

    .line 11
    :cond_3
    iget-object v2, p0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v1, p0, Le/a/a/d/j;->c:Ljava/lang/String;

    const-string v2, "one_to_one_type"

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    iget-object v1, p0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_8

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/messaging/Participant;

    .line 15
    invoke-virtual {v1}, Lcom/truecaller/data/entity/messaging/Participant;->i()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p0}, Le/a/a/d/j;->Sj()V

    goto :goto_2

    .line 17
    :cond_7
    invoke-virtual {p0}, Le/a/a/d/j;->Tj()V

    goto :goto_2

    .line 18
    :cond_8
    iget-object p1, p0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    invoke-interface {v0, p1}, Le/a/a/d/q;->St(Z)V

    .line 19
    iget-object p1, p0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-interface {v0, p1}, Le/a/a/d/q;->m3(Z)V

    .line 20
    :goto_2
    iget-object p1, p0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-interface {v0, p1}, Le/a/a/d/q;->An(I)V

    .line 21
    invoke-interface {v0}, Le/a/a/d/q;->l0()V

    .line 22
    invoke-interface {v0}, Le/a/a/d/q;->ux()V

    :cond_9
    return-void
.end method

.method public Ij()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/d/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public Jj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/d/j;->c:Ljava/lang/String;

    const-string v1, "im_group_type"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/a/d/j;->c:Ljava/lang/String;

    const-string v1, "mms_group_type"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public Kb()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public Kj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/a/d/j;->d:Z

    return v0
.end method

.method public Lj(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/a/a/d/j;->e:I

    return-void
.end method

.method public Mj(Lcom/truecaller/data/entity/messaging/Participant;)V
    .locals 1

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/q;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Le/a/a/d/q;->Tp()V

    .line 4
    iget-object v0, p0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-interface {p1, v0}, Le/a/a/d/q;->St(Z)V

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Le/a/a/d/q;->m3(Z)V

    .line 7
    :cond_0
    invoke-interface {p1}, Le/a/a/d/q;->ux()V

    :cond_1
    return-void
.end method

.method public Nj()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/d/j;->h:Le/a/a/i0;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/a/i0;->c4(Z)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/d/q;->uw()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/a/d/j;->i:Le/a/q2/i0;

    const-string v2, "im"

    invoke-interface {v0, v2}, Le/a/q2/i0;->r(Ljava/lang/String;)V

    return v1
.end method

.method public Oj()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/d/j;->Tj()V

    .line 2
    iget-object v0, p0, Le/a/a/d/j;->i:Le/a/q2/i0;

    const-string v1, "sms"

    invoke-interface {v0, v1}, Le/a/q2/i0;->r(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public Pj(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/d/j;->Hj(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/a/d/j;->d:Z

    return-void
.end method

.method public Qj(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/d/j;->c:Ljava/lang/String;

    const-string v1, "conversation_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Le/a/a/d/j;->d:Z

    const-string v1, "is_in_multi_pick_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    const-string v1, "group_participants"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final Rj()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/q;

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Le/a/a/d/q;->l0()V

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Le/a/a/d/q;->Nc(Z)V

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0, v2}, Le/a/a/d/q;->i2(Z)V

    .line 5
    iget-object v2, p0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-interface {v0, v2}, Le/a/a/d/q;->St(Z)V

    .line 6
    iget-object v2, p0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Le/a/a/d/q;->m3(Z)V

    .line 7
    iget-object v1, p0, Le/a/a/d/j;->f:Le/a/a/d/s;

    instance-of v1, v1, Le/a/a/d/s$d;

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Le/a/a/d/j;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x584f0d0b

    if-eq v2, v3, :cond_1

    const v3, -0x44aa3a1a

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "mms_group_type"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f1203d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a/d/q;->c2(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const-string v2, "im_group_type"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f1203d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a/d/q;->c2(Ljava/lang/Integer;)V

    .line 11
    :cond_2
    :goto_0
    invoke-interface {v0}, Le/a/a/d/q;->az()V

    :cond_3
    return-void
.end method

.method public final Sj()V
    .locals 1

    const-string v0, "im_group_type"

    .line 1
    iput-object v0, p0, Le/a/a/d/j;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Le/a/a/d/j;->Rj()V

    return-void
.end method

.method public final Tj()V
    .locals 1

    const-string v0, "mms_group_type"

    .line 1
    iput-object v0, p0, Le/a/a/d/j;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Le/a/a/d/j;->Rj()V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/a/d/q;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/a/d/j;->f:Le/a/a/d/s;

    instance-of p1, p1, Le/a/a/d/s$a;

    if-nez p1, :cond_2

    iget-object p1, p0, Le/a/a/d/j;->c:Ljava/lang/String;

    const-string v0, "im_group_type"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/a/d/j;->f:Le/a/a/d/s;

    instance-of v0, p1, Le/a/a/d/s$d;

    if-eqz v0, :cond_1

    check-cast p1, Le/a/a/d/s$d;

    .line 6
    iget-boolean p1, p1, Le/a/a/d/s$d;->a:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Le/a/a/d/j;->Sj()V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Le/a/a/d/j;->c:Ljava/lang/String;

    const-string v0, "mms_group_type"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Le/a/a/d/j;->Tj()V

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Le/a/a/d/j;->Sj()V

    :cond_3
    :goto_1
    return-void
.end method

.method public Za(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public gc(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public hh(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_5

    const-string v0, "group_participants"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le/a/a/d/j;->Hj(Ljava/util/List;)V

    :cond_0
    const-string v0, "conversation_mode"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "one_to_one_type"

    :goto_0
    iput-object v0, p0, Le/a/a/d/j;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x584f0d0b

    if-eq v1, v2, :cond_3

    const v2, -0x44aa3a1a

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "mms_group_type"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Le/a/a/d/j;->Tj()V

    goto :goto_1

    :cond_3
    const-string v1, "im_group_type"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Le/a/a/d/j;->Sj()V

    :cond_4
    :goto_1
    const-string v0, "is_in_multi_pick_mode"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Le/a/a/d/j;->d:Z

    :cond_5
    return-void
.end method

.method public o()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/d/j;->b:Ljava/util/ArrayList;

    return-object v0
.end method
