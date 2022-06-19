.class public final Le/a/f/a/b/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/f/a/b/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/f/a/b/a/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Le/a/f/a/b/a/b;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/f/y/f;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/f/a/b/a/a;->c:Le/a/p5/c0;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/f/a/b/a/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/a/b/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 43

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Le/a/f/a/b/a/a$a;

    const-string v1, "holder"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 3
    iget-object v2, v1, Le/a/f/a/b/a/a;->b:Ljava/util/List;

    move/from16 v3, p2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/f/y/f;

    const-string v3, "conferenceChild"

    .line 4
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, v2, Le/a/f/y/f;->a:Ljava/lang/String;

    .line 6
    iget-object v6, v2, Le/a/f/y/f;->b:Le/a/f/a/g;

    .line 7
    new-instance v11, Le/a/b0/a/b/a;

    new-instance v4, Le/a/p5/i0;

    invoke-virtual {v0}, Le/a/f/a/b/a/a$a;->N4()Le/a/f/x/h;

    move-result-object v5

    iget-object v5, v5, Le/a/f/x/h;->c:Lcom/truecaller/common/ui/avatar/AvatarXView;

    const-string v7, "binding.imageProfilePicture"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "binding.imageProfilePicture.context"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v11, v4}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    .line 8
    invoke-virtual {v0}, Le/a/f/a/b/a/a$a;->N4()Le/a/f/x/h;

    move-result-object v4

    iget-object v4, v4, Le/a/f/x/h;->c:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v4, v11}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    const/16 v22, 0x1

    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v15, 0x0

    if-eqz v6, :cond_3

    .line 9
    iget-object v4, v6, Le/a/f/a/g;->c:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 10
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v24, v4

    goto :goto_0

    :cond_0
    move-object/from16 v24, v15

    .line 11
    :goto_0
    iget-object v4, v6, Le/a/f/a/g;->e:Ljava/lang/String;

    const/16 v26, 0x0

    .line 12
    iget-object v5, v6, Le/a/f/a/g;->a:Ljava/lang/String;

    .line 13
    invoke-static {v5}, Le/a/m0/a1$k;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 14
    iget-boolean v5, v6, Le/a/f/a/g;->k:Z

    if-nez v5, :cond_2

    .line 15
    iget-object v5, v6, Le/a/f/a/g;->n:Lcom/truecaller/incallui/utils/BlockAction;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v28, v13

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v28, v22

    :goto_2
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 16
    invoke-static {v6}, Le/a/m0/a1$k;->E0(Le/a/f/a/g;)Z

    move-result v32

    .line 17
    invoke-static {v6}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const v40, 0xfce4

    .line 18
    new-instance v5, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object/from16 v23, v5

    move-object/from16 v25, v4

    invoke-direct/range {v23 .. v40}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 19
    invoke-static {v11, v5, v13, v14, v15}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    move-object v1, v6

    move v7, v13

    move-object v8, v15

    goto :goto_3

    .line 20
    :cond_3
    new-instance v12, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v4, v12

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object/from16 v41, v12

    move/from16 v12, v16

    move/from16 v15, v16

    move/from16 v13, v16

    move/from16 v14, v16

    move/from16 v17, v16

    move-object/from16 v42, v11

    move/from16 v11, v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0xfffd

    move-object v1, v6

    move-object v6, v3

    invoke-direct/range {v4 .. v21}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    move-object/from16 v5, v41

    move-object/from16 v4, v42

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v5, v7, v6, v8}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    :goto_3
    if-eqz v1, :cond_4

    .line 21
    iget-object v15, v1, Le/a/f/a/g;->a:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v15, v8

    :goto_4
    if-eqz v1, :cond_5

    .line 22
    iget-boolean v4, v1, Le/a/f/a/g;->o:Z

    .line 23
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_5

    :cond_5
    move-object v4, v8

    .line 24
    :goto_5
    invoke-virtual {v0}, Le/a/f/a/b/a/a$a;->N4()Le/a/f/x/h;

    move-result-object v5

    iget-object v5, v5, Le/a/f/x/h;->e:Landroid/widget/TextView;

    .line 25
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    if-eqz v15, :cond_7

    goto :goto_7

    :cond_7
    if-nez v3, :cond_8

    .line 26
    iget-object v4, v0, Le/a/f/a/b/a/a$a;->b:Le/a/f/a/b/a/a;

    .line 27
    iget-object v4, v4, Le/a/f/a/b/a/a;->c:Le/a/p5/c0;

    .line 28
    sget v6, Lcom/truecaller/incallui/R$string;->incallui_hidden_number:I

    new-array v9, v7, [Ljava/lang/Object;

    invoke-interface {v4, v6, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_7

    :cond_8
    :goto_6
    move-object v15, v3

    .line 29
    :goto_7
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_9

    .line 30
    iget-object v15, v1, Le/a/f/a/g;->f:Ljava/lang/String;

    goto :goto_8

    :cond_9
    move-object v15, v8

    :goto_8
    if-eqz v1, :cond_a

    .line 31
    iget-object v4, v1, Le/a/f/a/g;->a:Ljava/lang/String;

    goto :goto_9

    :cond_a
    move-object v4, v8

    :goto_9
    if-eqz v4, :cond_c

    .line 32
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b

    goto :goto_a

    :cond_b
    move v13, v7

    goto :goto_b

    :cond_c
    :goto_a
    move/from16 v13, v22

    :goto_b
    if-nez v13, :cond_d

    if-eqz v1, :cond_d

    .line 33
    iget-boolean v1, v1, Le/a/f/a/g;->o:Z

    if-nez v1, :cond_d

    goto :goto_c

    :cond_d
    move/from16 v22, v7

    .line 34
    :goto_c
    invoke-virtual {v0}, Le/a/f/a/b/a/a$a;->N4()Le/a/f/x/h;

    move-result-object v1

    iget-object v1, v1, Le/a/f/x/h;->d:Landroid/widget/TextView;

    if-nez v22, :cond_e

    .line 35
    invoke-static {v1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_d

    :cond_e
    if-eqz v15, :cond_f

    .line 36
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_d

    :cond_f
    if-eqz v3, :cond_10

    .line 38
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_d

    .line 40
    :cond_10
    iget-object v3, v0, Le/a/f/a/b/a/a$a;->b:Le/a/f/a/b/a/a;

    .line 41
    iget-object v3, v3, Le/a/f/a/b/a/a;->c:Le/a/p5/c0;

    .line 42
    sget v4, Lcom/truecaller/incallui/R$string;->incallui_unknown_caller:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 44
    :goto_d
    iget-boolean v1, v2, Le/a/f/y/f;->c:Z

    .line 45
    invoke-virtual {v0}, Le/a/f/a/b/a/a$a;->N4()Le/a/f/x/h;

    move-result-object v0

    iget-object v0, v0, Le/a/f/x/h;->b:Landroid/widget/ImageButton;

    const-string v2, "binding.buttonSplitCall"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Le/a/f/a/b/a/a$a;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/truecaller/incallui/R$layout;->item_incallui_conference_call:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026ence_call, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p2, p0, p1}, Le/a/f/a/b/a/a$a;-><init>(Le/a/f/a/b/a/a;Landroid/view/View;)V

    return-object p2
.end method
