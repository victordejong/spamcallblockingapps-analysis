.class public final Le/a/d/c/z/e;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/d/c/z/j<",
        "+",
        "Le/a/d/c/z/p;",
        ">;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Le/a/d/c/z/p;",
            ">;"
        }
    .end annotation
.end field

.field public b:Le/a/d/c/z/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    iput-object v0, p0, Le/a/d/c/z/e;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c/z/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c/z/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/c/z/p;

    .line 2
    instance-of v0, p1, Le/a/d/c/z/p$a;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    instance-of p1, p1, Le/a/d/c/z/p$b;

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Le/a/d/c/z/j;

    const-string v3, "holder"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Le/a/d/c/z/e;->getItemViewType(I)I

    move-result v3

    const-string v4, "voipCallHistoryItem"

    if-nez v3, :cond_0

    .line 4
    check-cast v2, Le/a/d/c/z/g;

    iget-object v2, v0, Le/a/d/c/z/e;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.truecaller.voip.ui.calldetails.VoipHistoryDetailsMVP.VoipCallHistoryItem.Searching"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/d/c/z/p$c;

    .line 5
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v3, v6, :cond_8

    .line 6
    check-cast v2, Le/a/d/c/z/f;

    iget-object v3, v0, Le/a/d/c/z/e;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type com.truecaller.voip.ui.calldetails.VoipHistoryDetailsMVP.VoipCallHistoryItem.GroupHeaderCallItem"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/d/c/z/p$a;

    .line 7
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v3, v2, Le/a/d/c/z/f;->b:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/d/s/e;

    .line 9
    iget-object v4, v1, Le/a/d/c/z/p$a;->a:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 10
    iget-object v8, v3, Le/a/d/s/e;->c:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    invoke-virtual {v8, v4}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->setConfigs(Ljava/util/List;)V

    .line 11
    :cond_1
    iget-object v4, v3, Le/a/d/s/e;->b:Landroid/widget/TextView;

    const-string v8, "callTime"

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v2, Le/a/d/c/z/f;->c:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 12
    iget-wide v9, v1, Le/a/d/c/z/p$a;->b:J

    .line 13
    invoke-static {v8, v9, v10}, Le/a/b0/q/m;->h(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, v1, Le/a/d/c/z/p$a;->c:Lcom/truecaller/voip/VoipGroupCallHistoryStatus;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    .line 16
    sget v1, Lcom/truecaller/voip/R$string;->voip_group_blocked_call:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v4, Lcom/truecaller/voip/R$attr;->tcx_alertBackgroundRed:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 17
    new-instance v5, Ls1/k;

    invoke-direct {v5, v1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_2
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 19
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v4, Lcom/truecaller/voip/R$attr;->tcx_textSecondary:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 20
    new-instance v5, Ls1/k;

    invoke-direct {v5, v1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_4
    sget v1, Lcom/truecaller/voip/R$string;->voip_group_missed_call:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v4, Lcom/truecaller/voip/R$attr;->tcx_alertBackgroundRed:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 22
    new-instance v5, Ls1/k;

    invoke-direct {v5, v1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 23
    :cond_5
    sget v1, Lcom/truecaller/voip/R$string;->voip_group_received_call:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v4, Lcom/truecaller/voip/R$attr;->tcx_textSecondary:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 24
    new-instance v5, Ls1/k;

    invoke-direct {v5, v1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_6
    sget v1, Lcom/truecaller/voip/R$string;->voip_group_outgoing_call:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v4, Lcom/truecaller/voip/R$attr;->tcx_textSecondary:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 26
    new-instance v5, Ls1/k;

    invoke-direct {v5, v1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    :goto_0
    iget-object v1, v3, Le/a/d/s/e;->a:Landroid/widget/TextView;

    const-string v4, "callStatus"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v4, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 29
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v2, Le/a/d/c/z/f;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 30
    iget-object v8, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 31
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, v2, Le/a/d/c/z/f;->c:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/truecaller/voip/R$string;->voip_text_voice:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v4, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v1, v3, Le/a/d/s/e;->d:Landroid/widget/ImageView;

    const-string v3, "voipIcon"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Le/a/d/c/z/j;->N4()Le/a/p5/i0;

    move-result-object v2

    .line 33
    iget-object v3, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 34
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Le/a/p5/i0;->l(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_a

    .line 35
    :cond_8
    check-cast v2, Le/a/d/c/z/i;

    iget-object v3, v0, Le/a/d/c/z/e;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type com.truecaller.voip.ui.calldetails.VoipHistoryDetailsMVP.VoipCallHistoryItem.PeerItem"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/d/c/z/p$b;

    .line 36
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v3, v1, Le/a/d/c/z/p$b;->a:Le/a/d/b0/b;

    .line 38
    instance-of v4, v3, Le/a/d/b0/b$b;

    const-string v10, "context.getString(R.stri\u2026ip_group_peer_not_answer)"

    if-eqz v4, :cond_16

    .line 39
    move-object v11, v3

    check-cast v11, Le/a/d/b0/b$b;

    .line 40
    iget-object v9, v1, Le/a/d/c/z/p$b;->b:Landroid/net/Uri;

    .line 41
    iget-object v8, v1, Le/a/d/c/z/p$b;->c:Le/a/d/c0/y1/d;

    .line 42
    iget-object v1, v1, Le/a/d/c/z/p$b;->d:Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;

    .line 43
    iget-object v3, v2, Le/a/d/c/z/i;->c:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/d/s/f;

    .line 44
    iget-object v5, v3, Le/a/d/s/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    .line 45
    iget-object v3, v11, Le/a/d/b0/b$b;->d:Ljava/lang/String;

    if-eqz v3, :cond_9

    goto :goto_2

    .line 46
    :cond_9
    iget-object v3, v11, Le/a/d/b0/b$b;->c:Ljava/lang/String;

    :goto_2
    move-object v13, v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    move-object v12, v5

    .line 47
    invoke-static/range {v12 .. v18}, Lcom/truecaller/common/ui/listitem/ListItemX;->x1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;ZIIILjava/lang/Object;)V

    .line 48
    iget-object v3, v2, Le/a/d/c/z/i;->b:Le/a/b0/a/b/a;

    invoke-virtual {v5, v3}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvatarPresenter(Le/a/b0/a/b/a;)V

    .line 49
    iget-object v3, v2, Le/a/d/c/z/i;->b:Le/a/b0/a/b/a;

    const-string v4, "$this$getAvatarConfig"

    .line 50
    invoke-static {v11, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v4, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 52
    iget-object v14, v11, Le/a/d/b0/b$b;->c:Ljava/lang/String;

    const/4 v15, 0x0

    .line 53
    iget-object v12, v11, Le/a/d/b0/b$b;->d:Ljava/lang/String;

    if-eqz v12, :cond_d

    .line 54
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v13, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    .line 55
    :goto_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v7, v6, :cond_a

    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 56
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 57
    :cond_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    .line 58
    invoke-static {v12}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_4

    :cond_c
    const/4 v7, 0x0

    .line 59
    :goto_4
    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_d

    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v12, "Locale.getDefault()"

    invoke-static {v6, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    const/4 v6, 0x0

    :goto_5
    move-object/from16 v16, v6

    .line 61
    iget-object v6, v11, Le/a/d/b0/b$b;->h:Lcom/truecaller/voip/VoipUserBadge;

    .line 62
    iget-boolean v7, v6, Lcom/truecaller/voip/VoipUserBadge;->a:Z

    if-nez v7, :cond_f

    .line 63
    iget-boolean v7, v11, Le/a/d/b0/b$b;->j:Z

    if-eqz v7, :cond_e

    goto :goto_6

    :cond_e
    const/4 v7, 0x0

    move/from16 v17, v7

    goto :goto_7

    :cond_f
    :goto_6
    const/16 v17, 0x1

    :goto_7
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 64
    iget-boolean v7, v6, Lcom/truecaller/voip/VoipUserBadge;->c:Z

    move/from16 v22, v7

    .line 65
    iget-boolean v7, v6, Lcom/truecaller/voip/VoipUserBadge;->b:Z

    move/from16 v21, v7

    const/16 v23, 0x0

    .line 66
    iget-boolean v6, v6, Lcom/truecaller/voip/VoipUserBadge;->e:Z

    move/from16 v24, v6

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0xf4e4

    move-object v12, v4

    move-object v13, v9

    .line 67
    invoke-direct/range {v12 .. v29}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    const/4 v6, 0x1

    .line 68
    invoke-virtual {v3, v4, v6}, Le/a/b0/a/b/a;->nk(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Z)V

    if-eqz v8, :cond_10

    .line 69
    invoke-virtual {v2}, Le/a/d/c/z/j;->N4()Le/a/p5/i0;

    move-result-object v3

    invoke-virtual {v8, v3}, Le/a/d/c0/y1/d;->Jj(Le/a/p5/h0;)V

    :cond_10
    if-eqz v8, :cond_11

    .line 70
    invoke-virtual {v5, v8}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvailabilityPresenter(Le/a/b0/a/s/c;)V

    :cond_11
    if-eqz v8, :cond_12

    .line 71
    iget-object v3, v11, Le/a/d/b0/b$b;->c:Ljava/lang/String;

    .line 72
    invoke-virtual {v8, v3}, Le/a/d/c0/y1/d;->Ij(Ljava/lang/String;)V

    .line 73
    :cond_12
    sget-object v12, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->MESSAGE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    new-instance v13, Lc3;

    const/4 v4, 0x0

    move-object v3, v13

    move-object v15, v5

    move-object v5, v2

    move-object v6, v11

    move-object v7, v9

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lc3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v12, v13}, Lcom/truecaller/common/ui/listitem/ListItemX;->m1(Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;)V

    .line 74
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_14

    const/4 v4, 0x1

    if-eq v3, v4, :cond_13

    goto :goto_8

    .line 75
    :cond_13
    sget-object v12, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->VOICE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    new-instance v13, Lc3;

    const/4 v4, 0x1

    move-object v3, v13

    move-object v5, v2

    move-object v6, v11

    move-object/from16 v7, v27

    move-object/from16 v8, v26

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lc3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v12, v13}, Lcom/truecaller/common/ui/listitem/ListItemX;->j1(Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;)V

    goto :goto_8

    .line 76
    :cond_14
    sget-object v12, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->CALL:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    new-instance v13, Lc3;

    const/4 v4, 0x2

    move-object v3, v13

    move-object v5, v2

    move-object v6, v11

    move-object/from16 v7, v27

    move-object/from16 v8, v26

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lc3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v12, v13}, Lcom/truecaller/common/ui/listitem/ListItemX;->j1(Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;)V

    .line 77
    :goto_8
    new-instance v9, Le/a/d/c/z/h;

    move-object v3, v9

    move-object v4, v2

    move-object v5, v11

    move-object/from16 v6, v27

    move-object/from16 v7, v26

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Le/a/d/c/z/h;-><init>(Le/a/d/c/z/i;Le/a/d/b0/b$b;Landroid/net/Uri;Le/a/d/c0/y1/d;Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;)V

    invoke-virtual {v15, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v3, v11, Le/a/d/b0/b$b;->k:Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    .line 79
    sget-object v4, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;->STATUS_NO_ANSWER:Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    if-ne v3, v4, :cond_15

    .line 80
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/truecaller/voip/R$string;->voip_group_peer_not_answer:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x7fc

    const/16 v25, 0x0

    move-object v12, v15

    move-object v10, v15

    move-object v15, v3

    invoke-static/range {v12 .. v25}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    goto :goto_9

    :cond_15
    move-object v10, v15

    .line 81
    :goto_9
    new-instance v12, Lc3;

    const/4 v4, 0x3

    move-object v3, v12

    move-object v5, v2

    move-object v6, v11

    move-object/from16 v7, v27

    move-object/from16 v8, v26

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lc3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v12}, Lcom/truecaller/common/ui/listitem/ListItemX;->setOnAvatarClickListener(Ls1/z/b/l;)V

    goto/16 :goto_a

    .line 82
    :cond_16
    instance-of v1, v3, Le/a/d/b0/b$a;

    if-eqz v1, :cond_17

    check-cast v3, Le/a/d/b0/b$a;

    .line 83
    iget-object v1, v2, Le/a/d/c/z/i;->c:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/s/f;

    .line 84
    iget-object v1, v1, Le/a/d/s/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    .line 85
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/truecaller/voip/R$string;->voip_non_identified_contact:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v4, "context.getString(R.stri\u2026p_non_identified_contact)"

    invoke-static {v12, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xe

    const/16 v17, 0x0

    move-object v11, v1

    invoke-static/range {v11 .. v17}, Lcom/truecaller/common/ui/listitem/ListItemX;->x1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;ZIIILjava/lang/Object;)V

    .line 86
    iget-object v4, v2, Le/a/d/c/z/i;->b:Le/a/b0/a/b/a;

    invoke-virtual {v1, v4}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvatarPresenter(Le/a/b0/a/b/a;)V

    .line 87
    iget-object v4, v2, Le/a/d/c/z/i;->b:Le/a/b0/a/b/a;

    new-instance v6, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v11, v6

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    move/from16 v23, v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0xffff

    const/4 v13, 0x0

    invoke-direct/range {v11 .. v28}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v6, v8, v5, v7}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 88
    iget-object v2, v2, Le/a/d/c/z/i;->b:Le/a/b0/a/b/a;

    invoke-virtual {v1, v2}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvatarPresenter(Le/a/b0/a/b/a;)V

    .line 89
    iget-object v2, v3, Le/a/d/b0/b$a;->b:Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    .line 90
    sget-object v3, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;->STATUS_NO_ANSWER:Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    if-ne v2, v3, :cond_17

    .line 91
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/truecaller/voip/R$string;->voip_group_peer_not_answer:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x7fc

    const/16 v24, 0x0

    move-object v11, v1

    invoke-static/range {v11 .. v24}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    :cond_17
    :goto_a
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 4

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "LayoutInflater.from(pare\u2026l_history, parent, false)"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 2
    new-instance p2, Le/a/d/c/z/f;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/truecaller/voip/R$layout;->item_view_header_call_history:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p2, p1}, Le/a/d/c/z/f;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 5
    new-instance p2, Le/a/d/c/z/i;

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/truecaller/voip/R$layout;->list_item_voip_call_history:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/c/z/e;->b:Le/a/d/c/z/d;

    .line 7
    invoke-direct {p2, p1, v0}, Le/a/d/c/z/i;-><init>(Landroid/view/View;Le/a/d/c/z/d;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Le/a/d/c/z/g;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/truecaller/voip/R$layout;->list_item_loading_peer:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026ding_peer, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/d/c/z/g;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method
