.class public final Le/a/a/c/k8/a;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/k8/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/c/k8/k;",
        ">;",
        "Le/a/a/c/k8/j;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/c/k8/i;

.field public final c:Le/a/a/c/k8/h;

.field public final d:Le/a/a/c/k8/l;

.field public final e:Le/a/a/i1/b;

.field public final f:Le/a/p5/h0;

.field public final g:Le/a/a/k/t;

.field public final h:Le/a/a/u;

.field public final i:Z


# direct methods
.method public constructor <init>(Le/a/a/c/k8/i;Le/a/a/c/k8/h;Le/a/a/c/k8/l;Le/a/a/i1/b;Le/a/p5/h0;Le/a/u3/g;Le/a/a/k/t;Le/a/a/u;Z)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemAction"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionModeHandler"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "transportManager"

    invoke-static {p7, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "inboxAvatarPresenterFactory"

    invoke-static {p8, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/c/k8/a;->b:Le/a/a/c/k8/i;

    iput-object p2, p0, Le/a/a/c/k8/a;->c:Le/a/a/c/k8/h;

    iput-object p3, p0, Le/a/a/c/k8/a;->d:Le/a/a/c/k8/l;

    iput-object p4, p0, Le/a/a/c/k8/a;->e:Le/a/a/i1/b;

    iput-object p5, p0, Le/a/a/c/k8/a;->f:Le/a/p5/h0;

    iput-object p7, p0, Le/a/a/c/k8/a;->g:Le/a/a/k/t;

    iput-object p8, p0, Le/a/a/c/k8/a;->h:Le/a/a/u;

    iput-boolean p9, p0, Le/a/a/c/k8/a;->i:Z

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 11

    .line 1
    check-cast p1, Le/a/a/c/k8/k;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/c/k8/a;->b:Le/a/a/c/k8/i;

    invoke-interface {v0}, Le/a/a/c/k8/i;->N()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/messaging/data/types/Conversation;

    .line 4
    iget-object v0, p0, Le/a/a/c/k8/a;->e:Le/a/a/i1/b;

    invoke-interface {v0, p2}, Le/a/a/i1/b;->n(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/c/k8/k;->setTitle(Ljava/lang/String;)V

    .line 5
    iget-boolean v0, p0, Le/a/o2/c;->a:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Le/a/a/c/k8/a;->c:Le/a/a/c/k8/h;

    invoke-interface {v0, p2}, Le/a/a/c/k8/h;->F1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p1, v0}, Le/a/a/c/k8/k;->R(Z)V

    .line 7
    iget-object v0, p0, Le/a/a/c/k8/a;->e:Le/a/a/i1/b;

    invoke-interface {v0, p2}, Le/a/a/i1/b;->m(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/c/k8/k;->f(Ljava/lang/String;)V

    .line 8
    invoke-static {p2}, Le/a/c/p/a;->C1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v0

    iget v3, p2, Lcom/truecaller/messaging/data/types/Conversation;->l:I

    invoke-interface {p1, v0, v3}, Le/a/a/c/k8/k;->S(ZI)V

    .line 9
    iget-object v0, p0, Le/a/a/c/k8/a;->h:Le/a/a/u;

    invoke-interface {v0, p1}, Le/a/a/u;->b(Le/a/a/u$a;)Le/a/b0/a/b/a;

    move-result-object v0

    .line 10
    iget v3, p2, Lcom/truecaller/messaging/data/types/Conversation;->s:I

    invoke-static {p2, v3}, Le/m/d/y/n;->r(Lcom/truecaller/messaging/data/types/Conversation;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v0, v3, v2, v5, v4}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 11
    invoke-interface {p1, v0}, Le/a/a/c/k8/k;->i(Le/a/b0/a/b/a;)V

    .line 12
    iget v0, p2, Lcom/truecaller/messaging/data/types/Conversation;->s:I

    .line 13
    iget-object v3, p0, Le/a/a/c/k8/a;->e:Le/a/a/i1/b;

    iget-boolean v4, p0, Le/a/a/c/k8/a;->i:Z

    invoke-interface {v3, v0, v4}, Le/a/a/i1/b;->f(IZ)I

    move-result v3

    .line 14
    iget-object v4, p0, Le/a/a/c/k8/a;->e:Le/a/a/i1/b;

    iget-boolean v6, p0, Le/a/a/c/k8/a;->i:Z

    invoke-interface {v4, v0, v6}, Le/a/a/i1/b;->j(IZ)I

    move-result v0

    .line 15
    invoke-interface {p1, v3, v0}, Le/a/a/c/k8/k;->H4(II)V

    .line 16
    iget-object v0, p0, Le/a/a/c/k8/a;->e:Le/a/a/i1/b;

    .line 17
    sget-object v8, Lcom/truecaller/messaging/data/types/InboxTab;->Companion:Lcom/truecaller/messaging/data/types/InboxTab$a;

    iget v3, p2, Lcom/truecaller/messaging/data/types/Conversation;->s:I

    invoke-virtual {v8, v3}, Lcom/truecaller/messaging/data/types/InboxTab$a;->a(I)Lcom/truecaller/messaging/data/types/InboxTab;

    move-result-object v3

    .line 18
    invoke-interface {v0, p2, v3}, Le/a/a/i1/b;->D(Lcom/truecaller/messaging/data/types/Conversation;Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v0

    .line 19
    iget v3, p2, Lcom/truecaller/messaging/data/types/Conversation;->y:I

    .line 20
    iget v4, p2, Lcom/truecaller/messaging/data/types/Conversation;->e:I

    .line 21
    iget-object v6, p0, Le/a/a/c/k8/a;->e:Le/a/a/i1/b;

    .line 22
    iget-object v7, p2, Lcom/truecaller/messaging/data/types/Conversation;->j:Ljava/lang/String;

    .line 23
    iget v9, p2, Lcom/truecaller/messaging/data/types/Conversation;->f:I

    .line 24
    iget-object v10, p2, Lcom/truecaller/messaging/data/types/Conversation;->g:Ljava/lang/String;

    .line 25
    invoke-interface {v6, v7, v9, v10}, Le/a/a/i1/b;->t(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-static {p2}, Le/a/c/p/a;->q1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 27
    iget-object v0, p0, Le/a/a/c/k8/a;->f:Le/a/p5/h0;

    const v1, 0x7f120d62

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "resourceProvider.getStri\u2026ging_im_group_invitation)"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v5, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->BLUE:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    .line 29
    iget-object v0, p0, Le/a/a/c/k8/a;->f:Le/a/p5/h0;

    const v2, 0x7f08065b

    invoke-interface {v0, v2}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 30
    invoke-static {p2}, Le/a/c/p/a;->C1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v2, v5

    .line 31
    invoke-interface/range {v0 .. v7}, Le/a/a/c/k8/k;->p1(Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZZ)V

    goto/16 :goto_5

    .line 32
    :cond_1
    invoke-static {p2}, Le/a/c/p/a;->k1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 33
    iget-object v0, p0, Le/a/a/c/k8/a;->g:Le/a/a/k/t;

    .line 34
    iget v3, p2, Lcom/truecaller/messaging/data/types/Conversation;->f:I

    if-lez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 35
    :goto_1
    iget-object v4, p2, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 36
    iget v7, p2, Lcom/truecaller/messaging/data/types/Conversation;->u:I

    if-nez v7, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    move v7, v2

    .line 37
    :goto_2
    invoke-interface {v0, v3, v4, v7}, Le/a/a/k/t;->n(Z[Lcom/truecaller/data/entity/messaging/Participant;Z)I

    move-result v0

    .line 38
    iget-object v3, p0, Le/a/a/c/k8/a;->f:Le/a/p5/h0;

    const v4, 0x7f120390

    new-array v7, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resourceProvider.getString(R.string.MessageDraft)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->BLUE:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    .line 40
    iget-object v7, p0, Le/a/a/c/k8/a;->f:Le/a/p5/h0;

    const v9, 0x7f080659

    invoke-interface {v7, v9}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v9, "resourceProvider.getDraw\u2026rawable.ic_snippet_draft)"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v0, v5, :cond_4

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, v2

    :goto_3
    move-object v0, p1

    move-object v1, v3

    move-object v2, v6

    move-object v3, v4

    move-object v4, v7

    .line 41
    invoke-interface/range {v0 .. v5}, Le/a/a/c/k8/k;->E(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_4

    :cond_6
    move-object v1, v6

    .line 42
    :goto_4
    iget-object v2, p0, Le/a/a/c/k8/a;->e:Le/a/a/i1/b;

    invoke-interface {v2, v0, v3}, Le/a/a/i1/b;->l(Ljava/lang/String;I)Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    move-result-object v2

    .line 43
    iget-object v5, p0, Le/a/a/c/k8/a;->e:Le/a/a/i1/b;

    invoke-interface {v5, p2}, Le/a/a/i1/b;->k(Lcom/truecaller/messaging/data/types/Conversation;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 44
    iget-object v6, p0, Le/a/a/c/k8/a;->e:Le/a/a/i1/b;

    iget v7, p2, Lcom/truecaller/messaging/data/types/Conversation;->f:I

    iget-object v9, p2, Lcom/truecaller/messaging/data/types/Conversation;->g:Ljava/lang/String;

    invoke-interface {v6, v7, v9}, Le/a/a/i1/b;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 45
    iget-object v7, p0, Le/a/a/c/k8/a;->e:Le/a/a/i1/b;

    invoke-interface {v7, v0, v3, v4}, Le/a/a/i1/b;->r(Ljava/lang/String;II)Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    move-result-object v7

    .line 46
    invoke-static {p2}, Le/a/c/p/a;->C1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v9

    .line 47
    iget-boolean v10, p2, Lcom/truecaller/messaging/data/types/Conversation;->k:Z

    move-object v0, p1

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v9

    move v7, v10

    .line 48
    invoke-interface/range {v0 .. v7}, Le/a/a/c/k8/k;->p1(Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZZ)V

    .line 49
    :goto_5
    iget-object v0, p0, Le/a/a/c/k8/a;->h:Le/a/a/u;

    invoke-interface {v0, p1}, Le/a/a/u;->a(Le/a/a/u$a;)Le/a/l4/d;

    move-result-object v0

    .line 50
    iget v1, p2, Lcom/truecaller/messaging/data/types/Conversation;->s:I

    invoke-virtual {v8, v1}, Lcom/truecaller/messaging/data/types/InboxTab$a;->a(I)Lcom/truecaller/messaging/data/types/InboxTab;

    move-result-object v1

    invoke-static {p2, v1}, Le/a/c/p/a;->l0(Lcom/truecaller/messaging/data/types/Conversation;Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Le/a/l4/d;->Kj(Ljava/lang/String;)V

    .line 51
    invoke-interface {p1, v0}, Le/a/a/c/k8/k;->e(Le/a/l4/d;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/k8/a;->b:Le/a/a/c/k8/i;

    invoke-interface {v0}, Le/a/a/c/k8/i;->N()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/k8/a;->b:Le/a/a/c/k8/i;

    invoke-interface {v0}, Le/a/a/c/k8/i;->N()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/data/types/Conversation;

    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k8/a;->b:Le/a/a/c/k8/i;

    invoke-interface {v0}, Le/a/a/c/k8/i;->N()Ljava/util/List;

    move-result-object v0

    .line 2
    iget v1, p1, Le/a/o2/h;->b:I

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Conversation;

    .line 4
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x67eccfc0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const v2, -0x4e5b1355    # -4.7999342E-9f

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "ItemEvent.LONG_CLICKED"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 7
    iget-boolean p1, p0, Le/a/o2/c;->a:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Le/a/a/c/k8/a;->d:Le/a/a/c/k8/l;

    invoke-interface {p1}, Le/a/a/c/k8/l;->P()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Le/a/a/c/k8/a;->c:Le/a/a/c/k8/h;

    invoke-interface {p1, v0}, Le/a/a/c/k8/h;->J(Lcom/truecaller/messaging/data/types/Conversation;)V

    goto :goto_1

    :cond_2
    const-string v1, "ItemEvent.CLICKED"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 11
    iget-boolean p1, p0, Le/a/o2/c;->a:Z

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Le/a/a/c/k8/a;->c:Le/a/a/c/k8/h;

    invoke-interface {p1, v0}, Le/a/a/c/k8/h;->J(Lcom/truecaller/messaging/data/types/Conversation;)V

    :cond_3
    :goto_0
    move v3, v4

    goto :goto_1

    .line 13
    :cond_4
    iget-object p1, v0, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz p1, :cond_5

    invoke-static {p1}, Le/a/c/p/a;->t1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z

    move-result p1

    if-ne p1, v3, :cond_5

    .line 14
    iget-object p1, v0, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz p1, :cond_6

    .line 15
    iget-object v0, p0, Le/a/a/c/k8/a;->c:Le/a/a/c/k8/h;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/a/c/k8/h;->I(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V

    goto :goto_1

    .line 16
    :cond_5
    iget-object p1, p0, Le/a/a/c/k8/a;->c:Le/a/a/c/k8/h;

    invoke-interface {p1, v0}, Le/a/a/c/k8/h;->ij(Lcom/truecaller/messaging/data/types/Conversation;)V

    :cond_6
    :goto_1
    move v4, v3

    :cond_7
    :goto_2
    return v4
.end method
