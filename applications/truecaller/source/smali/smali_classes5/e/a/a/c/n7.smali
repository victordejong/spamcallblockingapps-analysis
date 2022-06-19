.class public final Le/a/a/c/n7;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/c/n7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/a/c/n7$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/p5/h0;

.field public final c:Le/a/a/i0;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/truecaller/messaging/data/types/Reaction;",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p5/h0;Le/a/a/i0;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/p5/h0;",
            "Le/a/a/i0;",
            "Ljava/util/Map<",
            "Lcom/truecaller/messaging/data/types/Reaction;",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/a/c/n7;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/c/n7;->b:Le/a/p5/h0;

    iput-object p3, p0, Le/a/a/c/n7;->c:Le/a/a/i0;

    iput-object p4, p0, Le/a/a/c/n7;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/n7;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/a/c/n7$a;

    const-string v2, "viewHolder"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Le/a/a/c/n7;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    move/from16 v3, p2

    invoke-static {v2, v3}, Ls1/u/i;->u(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/Reaction;

    .line 4
    iget-object v3, v0, Le/a/a/c/n7;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/entity/messaging/Participant;

    .line 5
    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Reaction;->d:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    const-string v7, "value"

    .line 6
    invoke-static {v2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    if-eqz v7, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    sget-object v7, Le/a/t/a/u/i;->a:Ljava/util/concurrent/FutureTask;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/t/a/u/f;

    if-eqz v7, :cond_5

    .line 9
    iget-object v7, v7, Le/a/t/a/u/f;->a:Le/a/t/a/u/c;

    move v8, v5

    .line 10
    :goto_1
    invoke-virtual {v2, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    .line 11
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v8, v10

    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v8, v10, :cond_2

    .line 13
    iget-object v2, v7, Le/a/t/a/u/c;->a:Ljava/util/Map;

    .line 14
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/t/a/u/d;

    goto :goto_3

    .line 15
    :cond_2
    iget-object v7, v7, Le/a/t/a/u/c;->b:Ljava/util/Map;

    .line 16
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/t/a/u/c;

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_4

    .line 17
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v8, "viewHolder.itemView"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "viewHolder.itemView.context"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7}, Le/m/d/y/n;->D(Le/a/t/a/u/d;Landroid/content/Context;)I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v5

    .line 18
    :goto_4
    iget-object v7, v1, Le/a/a/c/n7$a;->c:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 20
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Emoji data loader has not been set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_5
    if-eqz v3, :cond_13

    .line 21
    iget-object v2, v1, Le/a/a/c/n7$a;->a:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 22
    invoke-virtual {v2}, Lcom/truecaller/common/ui/avatar/AvatarXView;->getPresenter()Le/a/b0/a/b/c;

    move-result-object v2

    instance-of v7, v2, Le/a/b0/a/b/a;

    if-nez v7, :cond_7

    move-object v2, v4

    :cond_7
    check-cast v2, Le/a/b0/a/b/a;

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    new-instance v2, Le/a/b0/a/b/a;

    iget-object v7, v0, Le/a/a/c/n7;->b:Le/a/p5/h0;

    invoke-direct {v2, v7}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    :goto_6
    const-string v7, "$this$buildAvatarConfig"

    .line 23
    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v7, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 25
    iget-wide v8, v3, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    iget-object v10, v3, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    invoke-static {v8, v9, v10, v6}, Le/a/e/a2;->A(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v9

    .line 26
    iget-object v8, v3, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    if-eqz v8, :cond_9

    invoke-static {v8}, Le/m/d/y/n;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v12, v8

    goto :goto_7

    :cond_9
    move-object v12, v4

    :goto_7
    const/4 v11, 0x0

    .line 27
    iget-object v10, v3, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const/4 v14, 0x0

    .line 28
    iget v8, v3, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-ne v8, v6, :cond_a

    move v15, v6

    goto :goto_8

    :cond_a
    move v15, v5

    .line 29
    :goto_8
    invoke-virtual {v3}, Lcom/truecaller/data/entity/messaging/Participant;->n()Z

    move-result v13

    const/16 v16, 0x0

    .line 30
    iget v6, v3, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    iget-object v8, v3, Lcom/truecaller/data/entity/messaging/Participant;->u:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    invoke-static {v6, v8}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v6

    const/16 v8, 0x20

    if-ne v6, v8, :cond_b

    const/4 v6, 0x1

    move/from16 v18, v6

    goto :goto_9

    :cond_b
    move/from16 v18, v5

    .line 31
    :goto_9
    iget v6, v3, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    iget-object v8, v3, Lcom/truecaller/data/entity/messaging/Participant;->u:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    invoke-static {v6, v8}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_c

    const/4 v6, 0x1

    move/from16 v17, v6

    goto :goto_a

    :cond_c
    move/from16 v17, v5

    .line 32
    :goto_a
    iget v6, v3, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    iget-object v8, v3, Lcom/truecaller/data/entity/messaging/Participant;->u:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    invoke-static {v6, v8}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v6

    const/16 v8, 0x80

    if-ne v6, v8, :cond_d

    const/4 v6, 0x1

    move/from16 v19, v6

    goto :goto_b

    :cond_d
    move/from16 v19, v5

    .line 33
    :goto_b
    iget v6, v3, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    iget-object v8, v3, Lcom/truecaller/data/entity/messaging/Participant;->u:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    invoke-static {v6, v8}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v6

    const/16 v8, 0x100

    if-ne v6, v8, :cond_e

    const/4 v6, 0x1

    move/from16 v20, v6

    goto :goto_c

    :cond_e
    move/from16 v20, v5

    .line 34
    :goto_c
    iget v6, v3, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    iget-object v8, v3, Lcom/truecaller/data/entity/messaging/Participant;->u:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    invoke-static {v6, v8}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v6

    const/16 v8, 0x10

    if-ne v6, v8, :cond_f

    const/4 v6, 0x1

    move/from16 v21, v6

    goto :goto_d

    :cond_f
    move/from16 v21, v5

    :goto_d
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v25, 0xe084

    move-object v8, v7

    .line 35
    invoke-direct/range {v8 .. v25}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    const/4 v6, 0x2

    .line 36
    invoke-static {v2, v7, v5, v6, v4}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 37
    iget-object v4, v1, Le/a/a/c/n7$a;->a:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 38
    invoke-virtual {v4, v2}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 39
    iget-object v2, v0, Le/a/a/c/n7;->c:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_e

    :cond_10
    move v2, v5

    goto :goto_f

    :cond_11
    :goto_e
    const/4 v2, 0x1

    :goto_f
    if-nez v2, :cond_12

    iget-object v2, v0, Le/a/a/c/n7;->c:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 40
    iget-object v2, v0, Le/a/a/c/n7;->b:Le/a/p5/h0;

    const v3, 0x7f120437

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_12
    iget-object v2, v3, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    .line 41
    :goto_10
    iget-object v1, v1, Le/a/a/c/n7$a;->b:Landroid/widget/TextView;

    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Le/a/a/c/n7$a;

    iget-object v0, p0, Le/a/a/c/n7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d042f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026pant_item, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/a/c/n7$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method
