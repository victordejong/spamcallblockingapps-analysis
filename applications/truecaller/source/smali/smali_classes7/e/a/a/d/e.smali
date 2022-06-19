.class public final Le/a/a/d/e;
.super Le/a/a/d/n;
.source "SourceFile"


# instance fields
.field public b:Le/a/a/d/u;

.field public c:Le/a/a/g/j0/a0;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation
.end field

.field public g:Le/a/a/g/l0/f;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Z

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/k3/l/k/a;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/a/g/l0/f;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/a/g/l0/f;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Le/a/o5/f0;

.field public final t:Le/a/k3/l/f;

.field public final u:Le/a/a/d/s;

.field public final v:Le/a/a/i0;

.field public final w:Le/a/b0/q/l0;


# direct methods
.method public constructor <init>(Le/a/o5/f0;Le/a/k3/l/f;Le/a/a/d/s;Le/a/p5/c0;Le/a/a/i0;Le/a/b0/q/l0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/a/d/n;-><init>()V

    iput-object p1, p0, Le/a/a/d/e;->s:Le/a/o5/f0;

    iput-object p2, p0, Le/a/a/d/e;->t:Le/a/k3/l/f;

    iput-object p3, p0, Le/a/a/d/e;->u:Le/a/a/d/s;

    iput-object p5, p0, Le/a/a/d/e;->v:Le/a/a/i0;

    iput-object p6, p0, Le/a/a/d/e;->w:Le/a/b0/q/l0;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/a/d/e;->f:Ljava/util/List;

    const-string p1, ""

    .line 3
    iput-object p1, p0, Le/a/a/d/e;->h:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Le/a/a/d/e;->i:Ljava/lang/String;

    .line 5
    sget-object p1, Ls1/u/t;->a:Ls1/u/t;

    iput-object p1, p0, Le/a/a/d/e;->l:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/d/e;->m:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/d/e;->n:Ljava/util/List;

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const p3, 0x7f1203e3

    .line 8
    invoke-interface {p4, p3, p2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "resourceProvider.getStri\u2026tionSectionOtherContacts)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/a/a/d/e;->o:Ljava/lang/String;

    new-array p2, p1, [Ljava/lang/Object;

    const p3, 0x7f1203e2

    .line 9
    invoke-interface {p4, p3, p2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "resourceProvider.getStri\u2026rsationSectionImContacts)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/a/a/d/e;->p:Ljava/lang/String;

    new-array p2, p1, [Ljava/lang/Object;

    const p3, 0x7f1203e5

    .line 10
    invoke-interface {p4, p3, p2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "resourceProvider.getStri\u2026SectionRecentlyContacted)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/a/a/d/e;->q:Ljava/lang/String;

    new-array p1, p1, [Ljava/lang/Object;

    const p2, 0x7f1203e4

    .line 11
    invoke-interface {p4, p2, p1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resourceProvider.getStri\u2026ectionOtherConversations)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/a/d/e;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/a/g/l0/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/d/e;->n:Ljava/util/List;

    return-object v0
.end method

.method public B(Le/a/a/d/u;)V
    .locals 1

    const-string v0, "router"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/a/d/e;->b:Le/a/a/d/u;

    return-void
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/a/d/e;->b:Le/a/a/d/u;

    return-void
.end method

.method public E(Le/a/a/g/j0/a0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/d/e;->c:Le/a/a/g/j0/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2
    :cond_0
    iput-object p1, p0, Le/a/a/d/e;->c:Le/a/a/g/j0/a0;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Le/a/a/g/j0/a0;->getGroupId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Le/a/a/d/e;->d:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Le/a/a/g/j0/a0;->getGroupId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Le/a/a/d/e;->e:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, Le/a/a/d/e;->g:Le/a/a/g/l0/f;

    const-string p1, ""

    .line 6
    iput-object p1, p0, Le/a/a/d/e;->h:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Le/a/a/d/e;->i:Ljava/lang/String;

    return-void
.end method

.method public F(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/k3/l/k/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "participants"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/a/d/e;->l:Ljava/util/Map;

    return-void
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 22

    move-object/from16 v7, p0

    move/from16 v8, p2

    .line 1
    move-object/from16 v9, p1

    check-cast v9, Le/a/a/d/l;

    const-string v0, "presenterView"

    .line 2
    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v7, Le/a/a/d/e;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lez v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v7, Le/a/a/d/e;->i:Ljava/lang/String;

    const-string v1, "searchQuery"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, v9, Le/a/a/d/l;->c:Landroid/widget/TextView;

    iget-object v2, v9, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v11

    const v0, 0x7f1203df

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, v9, Le/a/a/d/l;->c:Landroid/widget/TextView;

    invoke-static {v0, v10}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 8
    iget-object v0, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-static {v0, v11}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 9
    iget-object v0, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setEnabled(Z)V

    goto/16 :goto_1e

    .line 10
    :cond_1
    iget-object v0, v9, Le/a/a/d/l;->c:Landroid/widget/TextView;

    invoke-static {v0, v11}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 11
    iget-object v0, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-static {v0, v10}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 12
    iget-object v0, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 13
    iget-object v0, v7, Le/a/a/d/e;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v10

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_1
    const/4 v12, 0x0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, v7, Le/a/a/d/e;->h:Ljava/lang/String;

    invoke-virtual {v9, v0}, Le/a/a/d/l;->setName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v9, v12}, Le/a/a/d/l;->v4(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 16
    iget-object v4, v7, Le/a/a/d/e;->h:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Le/a/a/d/e;->T(Le/a/a/d/r;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 17
    iget-boolean v0, v7, Le/a/a/d/e;->j:Z

    .line 18
    iget-object v1, v9, Le/a/a/d/l;->a:Le/a/b0/a/b/a;

    .line 19
    invoke-virtual {v1, v0}, Le/a/b0/a/b/a;->pk(Z)V

    .line 20
    iget-object v0, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-virtual {v0, v11}, Lcom/truecaller/common/ui/listitem/ListItemX;->y1(Z)V

    .line 21
    iget-object v0, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 22
    iget-object v0, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 23
    iget-object v0, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setActivated(Z)V

    .line 24
    iget-object v0, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-virtual {v0}, Lcom/truecaller/messaging/newconversation/ForwardListItemX;->getChatSwitchView()Lcom/truecaller/messaging/views/ChatSwitchView;

    move-result-object v0

    invoke-static {v0, v11}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 25
    iput-object v12, v9, Le/a/a/d/l;->d:Ljava/lang/String;

    goto/16 :goto_1e

    .line 26
    :cond_3
    invoke-virtual {v7, v8}, Le/a/a/d/e;->O(I)Le/a/a/g/l0/f;

    move-result-object v13

    if-eqz v13, :cond_35

    .line 27
    iget-object v0, v7, Le/a/a/d/e;->l:Ljava/util/Map;

    .line 28
    iget-object v1, v13, Le/a/a/g/l0/f;->n:Ljava/lang/String;

    .line 29
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Le/a/k3/l/k/a;

    .line 30
    iget-object v0, v13, Le/a/a/g/l0/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 31
    iget-object v0, v13, Le/a/a/g/l0/f;->m:Ljava/util/List;

    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v10, :cond_4

    move v0, v10

    goto :goto_2

    :cond_4
    move v0, v11

    :goto_2
    const/4 v15, 0x2

    if-eqz v0, :cond_5

    .line 33
    invoke-virtual {v9, v12}, Le/a/a/d/l;->v4(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v13}, Le/a/a/g/l0/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Le/a/a/d/l;->setName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v9, v11}, Le/a/a/d/l;->O4(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 36
    invoke-virtual {v13}, Le/a/a/g/l0/f;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Le/a/a/d/e;->T(Le/a/a/d/r;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_10

    .line 37
    :cond_5
    iget-object v0, v13, Le/a/a/g/l0/f;->s:Ljava/lang/String;

    if-eqz v0, :cond_6

    move v0, v10

    goto :goto_3

    :cond_6
    move v0, v11

    :goto_3
    const-string v1, ""

    if-eqz v0, :cond_9

    .line 38
    invoke-virtual {v9, v12}, Le/a/a/d/l;->v4(Ljava/lang/String;)V

    .line 39
    iget-object v0, v13, Le/a/a/g/l0/f;->t:Ljava/lang/String;

    if-eqz v0, :cond_7

    move-object v1, v0

    .line 40
    :cond_7
    invoke-virtual {v9, v1}, Le/a/a/d/l;->setName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v9, v11}, Le/a/a/d/l;->O4(Z)V

    .line 42
    iget-object v0, v13, Le/a/a/g/l0/f;->u:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 43
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    :cond_8
    move-object v2, v12

    :goto_4
    const/4 v3, 0x0

    invoke-virtual {v13}, Le/a/a/g/l0/f;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 44
    iget-object v6, v13, Le/a/a/g/l0/f;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v9

    .line 45
    invoke-virtual/range {v0 .. v6}, Le/a/a/d/e;->T(Le/a/a/d/r;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_10

    .line 46
    :cond_9
    iget-object v0, v13, Le/a/a/g/l0/f;->d:Ljava/util/List;

    .line 47
    invoke-static {v0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    move v2, v10

    goto :goto_5

    :cond_a
    move v2, v11

    :goto_5
    if-nez v2, :cond_b

    goto :goto_6

    :cond_b
    move-object v0, v12

    .line 48
    :goto_6
    iget-object v2, v13, Le/a/a/g/l0/f;->m:Ljava/util/List;

    .line 49
    invoke-static {v2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/Number;

    if-eqz v0, :cond_c

    move-object v3, v0

    goto :goto_7

    .line 50
    :cond_c
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-virtual {v9, v3}, Le/a/a/d/l;->setName(Ljava/lang/String;)V

    if-eqz v0, :cond_d

    .line 51
    iget-wide v3, v13, Le/a/a/g/l0/f;->o:J

    .line 52
    iget-object v5, v7, Le/a/a/d/e;->w:Le/a/b0/q/l0;

    const-wide/16 v16, 0x3e8

    mul-long v17, v3, v16

    iget-object v3, v7, Le/a/a/d/e;->v:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->F()I

    move-result v3

    int-to-long v3, v3

    sget-object v21, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v16, v5

    move-wide/from16 v19, v3

    invoke-virtual/range {v16 .. v21}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    xor-int/2addr v3, v10

    if-eqz v3, :cond_d

    .line 53
    invoke-virtual {v9, v10}, Le/a/a/d/l;->O4(Z)V

    goto :goto_9

    .line 54
    :cond_d
    iget-object v3, v7, Le/a/a/d/e;->g:Le/a/a/g/l0/f;

    if-eqz v3, :cond_e

    .line 55
    iget-object v3, v3, Le/a/a/g/l0/f;->d:Ljava/util/List;

    if-eqz v3, :cond_e

    .line 56
    invoke-static {v3}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    move v3, v10

    goto :goto_8

    :cond_e
    move v3, v11

    :goto_8
    invoke-virtual {v9, v3}, Le/a/a/d/l;->Q4(Z)V

    :goto_9
    if-eqz v14, :cond_11

    .line 57
    sget-object v1, Lcom/truecaller/api/services/messenger/v1/models/Role;->INVITEE:Lcom/truecaller/api/services/messenger/v1/models/Role;

    invoke-static {v14, v1}, Le/a/c/p/a;->c1(Le/a/k3/l/k/a;Lcom/truecaller/api/services/messenger/v1/models/Role;)Z

    move-result v1

    if-ne v1, v10, :cond_f

    const v1, 0x7f1203d9

    goto :goto_a

    :cond_f
    if-nez v1, :cond_10

    const v1, 0x7f1203da

    .line 58
    :goto_a
    invoke-virtual {v9, v1}, Le/a/a/d/l;->P4(I)V

    goto :goto_d

    .line 59
    :cond_10
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 60
    :cond_11
    iget-object v3, v13, Le/a/a/g/l0/f;->k:Ljava/util/List;

    .line 61
    invoke-static {v3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    .line 62
    invoke-virtual {v9, v12}, Le/a/a/d/l;->v4(Ljava/lang/String;)V

    goto :goto_d

    .line 63
    :cond_12
    iget-object v3, v7, Le/a/a/d/e;->t:Le/a/k3/l/f;

    invoke-interface {v3, v2}, Le/a/k3/l/f;->c(Lcom/truecaller/data/entity/Number;)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_13

    move v4, v10

    goto :goto_b

    :cond_13
    move v4, v11

    :goto_b
    if-eqz v4, :cond_14

    new-array v1, v15, [Ljava/lang/Object;

    aput-object v3, v1, v11

    .line 65
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    const-string v3, "%s, \u202a%s\u202c"

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v1, v15, v3, v4}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 66
    :cond_14
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    move-object v1, v3

    :cond_15
    const-string v3, "numberForDisplay ?: \"\""

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    :goto_c
    invoke-virtual {v9, v1}, Le/a/a/d/l;->v4(Ljava/lang/String;)V

    .line 68
    :goto_d
    iget-object v1, v7, Le/a/a/d/e;->s:Le/a/o5/f0;

    .line 69
    iget-object v3, v13, Le/a/a/g/l0/f;->e:Ljava/util/List;

    .line 70
    invoke-static {v3}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_e

    :cond_16
    const-wide/16 v3, -0x1

    .line 71
    :goto_e
    iget-object v5, v13, Le/a/a/g/l0/f;->l:Ljava/lang/String;

    .line 72
    invoke-interface {v1, v3, v4, v5, v10}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v3

    .line 73
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_17

    goto :goto_f

    .line 74
    :cond_17
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v0

    :goto_f
    move-object v5, v0

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object/from16 v6, v16

    .line 75
    invoke-virtual/range {v0 .. v6}, Le/a/a/d/e;->T(Le/a/a/d/r;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 76
    :goto_10
    invoke-virtual {v9, v11}, Le/a/a/d/l;->h(Z)V

    if-eqz v14, :cond_18

    move v0, v10

    goto :goto_11

    :cond_18
    move v0, v11

    .line 77
    :goto_11
    invoke-virtual {v9, v0}, Le/a/a/d/l;->N4(Z)V

    if-nez v14, :cond_19

    move v0, v10

    goto :goto_12

    :cond_19
    move v0, v11

    .line 78
    :goto_12
    invoke-virtual {v9, v0}, Le/a/a/d/l;->setEnabled(Z)V

    .line 79
    iget-boolean v0, v13, Le/a/a/g/l0/f;->c:Z

    .line 80
    iget-object v1, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    .line 81
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 82
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v3, 0x7f0804d3

    .line 83
    invoke-static {v2, v3}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_1a

    goto :goto_13

    :cond_1a
    move-object v2, v12

    .line 84
    :goto_13
    invoke-virtual {v1, v2}, Lcom/truecaller/common/ui/listitem/ListItemX;->setTitleExtraIcon(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, v7, Le/a/a/d/e;->g:Le/a/a/g/l0/f;

    if-eqz v0, :cond_1c

    iget-object v0, v7, Le/a/a/d/e;->u:Le/a/a/d/s;

    instance-of v1, v0, Le/a/a/d/s$c;

    if-nez v1, :cond_1b

    instance-of v0, v0, Le/a/a/d/s$b;

    if-eqz v0, :cond_1c

    .line 86
    :cond_1b
    iget-object v0, v7, Le/a/a/d/e;->o:Ljava/lang/String;

    goto/16 :goto_19

    .line 87
    :cond_1c
    iget-object v0, v7, Le/a/a/d/e;->d:Ljava/lang/Integer;

    if-nez v0, :cond_1d

    goto/16 :goto_18

    .line 88
    :cond_1d
    iget-object v0, v7, Le/a/a/d/e;->c:Le/a/a/g/j0/a0;

    if-eqz v0, :cond_2b

    .line 89
    invoke-interface {v0, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 90
    invoke-interface {v0}, Le/a/a/g/j0/a0;->getGroupId()I

    move-result v1

    .line 91
    iget-object v2, v7, Le/a/a/d/e;->d:Ljava/lang/Integer;

    const/4 v3, 0x4

    if-nez v2, :cond_1e

    goto :goto_14

    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_20

    iget-object v2, v7, Le/a/a/d/e;->e:Ljava/lang/Integer;

    if-nez v2, :cond_1f

    goto :goto_14

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_20

    if-ne v1, v3, :cond_20

    goto :goto_18

    .line 92
    :cond_20
    :goto_14
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Le/a/a/g/j0/a0;->getGroupId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_15

    :cond_21
    move-object v0, v12

    :goto_15
    if-nez v0, :cond_22

    goto :goto_16

    .line 93
    :cond_22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_23

    goto :goto_18

    .line 94
    :cond_23
    :goto_16
    iget-object v0, v7, Le/a/a/d/e;->u:Le/a/a/d/s;

    .line 95
    instance-of v2, v0, Le/a/a/d/s$c;

    const-string v4, "Unknown section "

    if-eqz v2, :cond_24

    goto :goto_17

    :cond_24
    instance-of v0, v0, Le/a/a/d/s$b;

    if-eqz v0, :cond_28

    :goto_17
    if-eqz v1, :cond_27

    if-eq v1, v10, :cond_26

    if-ne v1, v3, :cond_25

    .line 96
    iget-object v0, v7, Le/a/a/d/e;->o:Ljava/lang/String;

    goto :goto_19

    .line 97
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v4, v1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_26
    iget-object v0, v7, Le/a/a/d/e;->r:Ljava/lang/String;

    goto :goto_19

    .line 99
    :cond_27
    iget-object v0, v7, Le/a/a/d/e;->q:Ljava/lang/String;

    goto :goto_19

    :cond_28
    if-eq v1, v15, :cond_2a

    if-ne v1, v3, :cond_29

    .line 100
    iget-object v0, v7, Le/a/a/d/e;->o:Ljava/lang/String;

    goto :goto_19

    .line 101
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v4, v1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2a
    iget-object v0, v7, Le/a/a/d/e;->p:Ljava/lang/String;

    goto :goto_19

    :cond_2b
    :goto_18
    move-object v0, v12

    .line 103
    :goto_19
    iput-object v0, v9, Le/a/a/d/l;->d:Ljava/lang/String;

    .line 104
    iget-object v0, v7, Le/a/a/d/e;->n:Ljava/util/List;

    .line 105
    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {v7, v13}, Le/a/a/d/e;->R(Le/a/a/g/l0/f;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_1a

    :cond_2c
    move v0, v11

    goto :goto_1b

    :cond_2d
    :goto_1a
    move v0, v10

    .line 106
    :goto_1b
    iget-object v1, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setActivated(Z)V

    .line 107
    invoke-virtual {v7, v13}, Le/a/a/d/e;->R(Le/a/a/g/l0/f;)Z

    move-result v0

    .line 108
    iget-object v1, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 109
    iget-object v0, v7, Le/a/a/d/e;->u:Le/a/a/d/s;

    instance-of v1, v0, Le/a/a/d/s$c;

    if-nez v1, :cond_2e

    instance-of v0, v0, Le/a/a/d/s$b;

    if-eqz v0, :cond_2f

    .line 110
    :cond_2e
    iget-object v0, v7, Le/a/a/d/e;->n:Ljava/util/List;

    .line 111
    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {v7, v13}, Le/a/a/d/e;->R(Le/a/a/g/l0/f;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_1c

    :cond_2f
    move v10, v11

    .line 112
    :cond_30
    :goto_1c
    iget-object v0, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-virtual {v0}, Lcom/truecaller/messaging/newconversation/ForwardListItemX;->getChatSwitchView()Lcom/truecaller/messaging/views/ChatSwitchView;

    move-result-object v0

    invoke-static {v0, v10}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 113
    iget-object v0, v7, Le/a/a/d/e;->n:Ljava/util/List;

    .line 114
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/a/g/l0/f;

    invoke-static {v2, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    move-object v12, v1

    :cond_32
    check-cast v12, Le/a/a/g/l0/f;

    if-eqz v12, :cond_33

    .line 115
    invoke-virtual {v7, v12}, Le/a/a/d/e;->P(Le/a/a/g/l0/f;)Lcom/truecaller/messaging/views/Switch;

    move-result-object v0

    if-eqz v0, :cond_33

    goto :goto_1d

    :cond_33
    invoke-virtual {v7, v13}, Le/a/a/d/e;->P(Le/a/a/g/l0/f;)Lcom/truecaller/messaging/views/Switch;

    move-result-object v0

    :goto_1d
    const-string v1, "selected"

    .line 116
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v1, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-virtual {v1}, Lcom/truecaller/messaging/newconversation/ForwardListItemX;->getChatSwitchView()Lcom/truecaller/messaging/views/ChatSwitchView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/truecaller/messaging/views/ChatSwitchView;->setSelected(Lcom/truecaller/messaging/views/Switch;)V

    .line 118
    invoke-virtual {v7, v13}, Le/a/a/d/e;->S(Le/a/a/g/l0/f;)Z

    move-result v0

    .line 119
    iget-object v1, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-virtual {v1}, Lcom/truecaller/messaging/newconversation/ForwardListItemX;->getChatSwitchView()Lcom/truecaller/messaging/views/ChatSwitchView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/truecaller/messaging/views/ChatSwitchView;->setSmsSwitchVisible(Z)V

    .line 120
    invoke-virtual {v7, v13}, Le/a/a/d/e;->Q(Le/a/a/g/l0/f;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 121
    iget-object v0, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-virtual {v0}, Lcom/truecaller/messaging/newconversation/ForwardListItemX;->getChatSwitchView()Lcom/truecaller/messaging/views/ChatSwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/messaging/views/ChatSwitchView;->r1()V

    .line 122
    :cond_34
    iget-boolean v0, v13, Le/a/a/g/l0/f;->a:Z

    .line 123
    iget-object v1, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-virtual {v1}, Lcom/truecaller/messaging/newconversation/ForwardListItemX;->getChatSwitchView()Lcom/truecaller/messaging/views/ChatSwitchView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/truecaller/messaging/views/ChatSwitchView;->setChatSwitchVisible(Z)V

    .line 124
    iget-object v0, v9, Le/a/a/d/l;->b:Lcom/truecaller/messaging/newconversation/ForwardListItemX;

    invoke-virtual {v0}, Lcom/truecaller/messaging/newconversation/ForwardListItemX;->getChatSwitchView()Lcom/truecaller/messaging/views/ChatSwitchView;

    move-result-object v0

    new-instance v1, Le/a/a/d/k;

    invoke-direct {v1, v9}, Le/a/a/d/k;-><init>(Le/a/a/d/l;)V

    .line 125
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "onSelected"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object v1, v0, Lcom/truecaller/messaging/views/ChatSwitchView;->x:Ls1/z/b/l;

    :cond_35
    :goto_1e
    return-void
.end method

.method public H(Lcom/truecaller/data/entity/Contact;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "contact"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1
    invoke-virtual {v0, v3}, Le/a/a/d/e;->E(Le/a/a/g/j0/a0;)V

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Le/a/a/g/l0/f;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->b0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v3, 0x0

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object v15

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v4

    const-string v5, "contact.numbers"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->A()Ljava/lang/String;

    move-result-object v17

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Contact;->B0()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x3

    .line 15
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 16
    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v27, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x4

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v1, v4

    move-object v4, v2

    move-object/from16 v16, v1

    .line 17
    invoke-direct/range {v4 .. v27}, Le/a/a/g/l0/f;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    iput-object v2, v0, Le/a/a/d/e;->g:Le/a/a/g/l0/f;

    const-string v1, ""

    .line 19
    iput-object v1, v0, Le/a/a/d/e;->h:Ljava/lang/String;

    .line 20
    iput-object v1, v0, Le/a/a/d/e;->i:Ljava/lang/String;

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/a/a/d/e;->E(Le/a/a/g/j0/a0;)V

    const-string v1, ""

    .line 2
    iput-object v1, p0, Le/a/a/d/e;->h:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Le/a/a/d/e;->g:Le/a/a/g/l0/f;

    .line 4
    iput-object p1, p0, Le/a/a/d/e;->i:Ljava/lang/String;

    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/a/a/d/e;->E(Le/a/a/g/j0/a0;)V

    .line 2
    iput-object p1, p0, Le/a/a/d/e;->h:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Le/a/a/d/e;->g:Le/a/a/g/l0/f;

    const-string p1, ""

    .line 4
    iput-object p1, p0, Le/a/a/d/e;->i:Ljava/lang/String;

    return-void
.end method

.method public L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/a/d/e;->k:Z

    return-void
.end method

.method public M(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/a/d/e;->j:Z

    return-void
.end method

.method public N(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;)V"
        }
    .end annotation

    const-string v0, "participants"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/a/d/e;->f:Ljava/util/List;

    return-void
.end method

.method public final O(I)Le/a/a/g/l0/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/d/e;->c:Le/a/a/g/j0/a0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/a/g/j0/a0;->N0()Le/a/a/g/l0/f;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/a/d/e;->c:Le/a/a/g/j0/a0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sub-int/2addr p1, v0

    .line 5
    iget-object v0, p0, Le/a/a/d/e;->g:Le/a/a/g/l0/f;

    if-nez v0, :cond_2

    iget-object v0, p0, Le/a/a/d/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/a/d/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 6
    iget-object v0, p0, Le/a/a/d/e;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/l0/f;

    return-object p1

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/a/d/e;->g:Le/a/a/g/l0/f;

    return-object p1
.end method

.method public final P(Le/a/a/g/l0/f;)Lcom/truecaller/messaging/views/Switch;
    .locals 2

    .line 1
    iget v0, p1, Le/a/a/g/l0/f;->v:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 2
    iget-boolean v0, p1, Le/a/a/g/l0/f;->a:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/truecaller/messaging/views/Switch;->CHAT:Lcom/truecaller/messaging/views/Switch;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Le/a/a/d/e;->Q(Le/a/a/g/l0/f;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/truecaller/messaging/views/Switch;->MMS:Lcom/truecaller/messaging/views/Switch;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/truecaller/messaging/views/Switch;->SMS:Lcom/truecaller/messaging/views/Switch;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p1, Lcom/truecaller/messaging/views/Switch;->CHAT:Lcom/truecaller/messaging/views/Switch;

    goto :goto_0

    .line 5
    :cond_3
    sget-object p1, Lcom/truecaller/messaging/views/Switch;->MMS:Lcom/truecaller/messaging/views/Switch;

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {p0, p1}, Le/a/a/d/e;->Q(Le/a/a/g/l0/f;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/truecaller/messaging/views/Switch;->MMS:Lcom/truecaller/messaging/views/Switch;

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/truecaller/messaging/views/Switch;->SMS:Lcom/truecaller/messaging/views/Switch;

    :goto_0
    return-object p1
.end method

.method public final Q(Le/a/a/g/l0/f;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/d/e;->S(Le/a/a/g/l0/f;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/a/d/e;->u:Le/a/a/d/s;

    invoke-static {v0}, Le/a/c/p/a;->u1(Le/a/a/d/s;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p1, Le/a/a/g/l0/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Le/a/a/g/l0/f;->m:Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public final R(Le/a/a/g/l0/f;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Le/a/a/g/l0/f;->m:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3
    iget-object p1, p1, Le/a/a/g/l0/f;->m:Ljava/util/List;

    .line 4
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/Number;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/a/d/e;->f:Ljava/util/List;

    .line 6
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    .line 8
    iget-object v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {v2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final S(Le/a/a/g/l0/f;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Le/a/a/g/l0/f;->s:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 2
    iget-object v0, p1, Le/a/a/g/l0/f;->k:Ljava/util/List;

    .line 3
    invoke-static {v0}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p1, Le/a/a/g/l0/f;->k:Ljava/util/List;

    .line 5
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public final T(Le/a/a/d/r;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 19

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v6, p5

    move-object/from16 v3, p6

    .line 1
    new-instance v15, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v0, v15

    invoke-static/range {p4 .. p5}, Le/m/d/y/n;->s1(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    const/16 v16, 0x0

    const v17, 0xffd0

    invoke-direct/range {v0 .. v17}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    .line 2
    invoke-interface {v0, v1}, Le/a/a/d/r;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    return-void
.end method

.method public getItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/d/e;->g:Le/a/a/g/l0/f;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Le/a/a/d/e;->h:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_6

    iget-object v0, p0, Le/a/a/d/e;->i:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_3

    .line 2
    :cond_2
    iget-boolean v0, p0, Le/a/a/d/e;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/a/a/d/e;->c:Le/a/a/g/j0/a0;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Le/a/a/d/e;->c:Le/a/a/g/j0/a0;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    :cond_4
    iget-object v0, p0, Le/a/a/d/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    :goto_2
    return v2

    :cond_6
    :goto_3
    return v1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Le/a/o2/h;->b:I

    .line 2
    invoke-virtual {p0, v0}, Le/a/a/d/e;->O(I)Le/a/a/g/l0/f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 3
    iget-object v2, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x67eccfc0

    const/4 v5, 0x1

    if-eq v3, v4, :cond_6

    const v4, -0x80836df

    if-eq v3, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v3, "ItemEvent.CHANGE_TRANSPORT"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6
    iget-object v2, p0, Le/a/a/d/e;->n:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/a/g/l0/f;

    invoke-static {v4, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Le/a/a/g/l0/f;

    if-eqz v3, :cond_5

    .line 8
    iget-object p1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type com.truecaller.messaging.views.Switch"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/messaging/views/Switch;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v5

    goto :goto_1

    :cond_4
    move v1, v0

    .line 11
    :goto_1
    iput v1, v3, Le/a/a/g/l0/f;->v:I

    .line 12
    :cond_5
    iget-object p1, p0, Le/a/a/d/e;->b:Le/a/a/d/u;

    if-eqz p1, :cond_c

    .line 13
    iget-object v0, p0, Le/a/a/d/e;->n:Ljava/util/List;

    .line 14
    invoke-interface {p1, v0}, Le/a/a/d/u;->s3(Ljava/util/List;)V

    goto :goto_4

    :cond_6
    const-string v3, "ItemEvent.CLICKED"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 16
    iget-object v2, p0, Le/a/a/d/e;->u:Le/a/a/d/s;

    instance-of v3, v2, Le/a/a/d/s$c;

    if-nez v3, :cond_9

    instance-of v2, v2, Le/a/a/d/s$b;

    if-eqz v2, :cond_7

    goto :goto_2

    .line 17
    :cond_7
    iget-object v0, p0, Le/a/a/d/e;->b:Le/a/a/d/u;

    if-eqz v0, :cond_8

    .line 18
    iget p1, p1, Le/a/o2/h;->b:I

    .line 19
    invoke-virtual {p0, p1}, Le/a/a/d/e;->O(I)Le/a/a/g/l0/f;

    move-result-object p1

    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/a/d/u;->Rb(Ljava/util/List;)V

    goto :goto_4

    :cond_8
    return v1

    .line 20
    :cond_9
    :goto_2
    iget-object v1, p0, Le/a/a/d/e;->g:Le/a/a/g/l0/f;

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Le/a/a/d/e;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_a
    iget-object v1, p0, Le/a/a/d/e;->n:Ljava/util/List;

    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 23
    iget-object v1, p0, Le/a/a/d/e;->n:Ljava/util/List;

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 25
    :cond_b
    iget-object v1, p0, Le/a/a/d/e;->n:Ljava/util/List;

    .line 26
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :goto_3
    iget-object v0, p0, Le/a/a/d/e;->b:Le/a/a/d/u;

    if-eqz v0, :cond_c

    .line 28
    iget-object v1, p0, Le/a/a/d/e;->n:Ljava/util/List;

    .line 29
    iget p1, p1, Le/a/o2/h;->b:I

    .line 30
    invoke-interface {v0, v1, p1}, Le/a/a/d/u;->D4(Ljava/util/List;I)V

    :cond_c
    :goto_4
    return v5

    :cond_d
    return v1
.end method
