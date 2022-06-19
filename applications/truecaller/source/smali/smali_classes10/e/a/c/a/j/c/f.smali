.class public final Le/a/c/a/j/c/f;
.super Ln3/b0/a/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/b0/a/p<",
        "Le/a/c/a/j/b/j;",
        "Le/a/c/a/j/c/j;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "-",
            "Le/a/c/a/j/b/j;",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/b0/m/c/a;


# direct methods
.method public constructor <init>(Le/a/b0/m/c/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "addressProfileLoader"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/a/j/c/e;

    invoke-direct {v0}, Le/a/c/a/j/c/e;-><init>()V

    invoke-direct {p0, v0}, Ln3/b0/a/p;-><init>(Ln3/b0/a/h$e;)V

    iput-object p1, p0, Le/a/c/a/j/c/f;->c:Le/a/b0/m/c/a;

    .line 2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/c/a/j/c/f;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 31

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v8, p1

    check-cast v8, Le/a/c/a/j/c/j;

    const-string v1, "holder"

    .line 2
    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v1, p2

    .line 3
    invoke-virtual {v0, v1}, Ln3/b0/a/p;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getItem(position)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    check-cast v9, Le/a/c/a/j/b/j;

    iget-object v10, v0, Le/a/c/a/j/c/f;->b:Ljava/util/Set;

    iget-object v11, v0, Le/a/c/a/j/c/f;->a:Ls1/z/b/p;

    const-string v1, "filterItem"

    .line 4
    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "selectedSenders"

    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, v8, Le/a/c/a/j/c/j;->a:Lq3/a/p1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1, v3, v2, v3}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    :cond_0
    new-instance v12, Le/a/b0/a/b/a;

    new-instance v1, Le/a/p5/i0;

    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    const-string v5, "itemView.context"

    invoke-static {v2, v4, v5}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v12, v1}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    .line 7
    iget-object v1, v9, Le/a/c/a/j/b/j;->c:Le/a/c/q/h;

    .line 8
    iget-object v1, v1, Le/a/c/q/h;->b:Ljava/util/Set;

    .line 9
    invoke-static {v1}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v15, v1

    const-string v2, ""

    const/4 v4, 0x2

    .line 10
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move-object v14, v5

    const-string v6, "Uri.EMPTY"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "name"

    .line 11
    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "identifier"

    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "icon"

    invoke-static {v5, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v13, v1

    const/16 v20, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v30, 0xffbc

    invoke-direct/range {v13 .. v30}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    const/4 v2, 0x0

    .line 14
    invoke-static {v12, v1, v2, v4, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 15
    iget-object v13, v8, Le/a/c/a/j/c/j;->b:Le/a/c/a/g/s0;

    .line 16
    iget-object v1, v13, Le/a/c/a/g/s0;->e:Landroid/widget/TextView;

    const-string v2, "senderText"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v2, v9, Le/a/c/a/j/b/j;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v1, v13, Le/a/c/a/g/s0;->d:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v1, v12}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 20
    iget-object v1, v13, Le/a/c/a/g/s0;->c:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 21
    iget-object v1, v13, Le/a/c/a/g/s0;->c:Landroid/widget/CheckBox;

    const-string v2, "senderCheck"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Le/a/c/a/j/b/j;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v1, 0x1

    .line 22
    invoke-virtual {v12, v1}, Le/a/b0/a/b/a;->pk(Z)V

    .line 23
    iget-object v14, v8, Le/a/c/a/j/c/j;->c:Le/a/b0/m/c/a;

    .line 24
    iget-object v1, v9, Le/a/c/a/j/b/j;->c:Le/a/c/q/h;

    .line 25
    iget-object v1, v1, Le/a/c/q/h;->b:Ljava/util/Set;

    .line 26
    invoke-static {v1}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    new-instance v7, Le/a/c/a/j/c/g;

    move-object v1, v7

    move-object v2, v13

    move-object v3, v8

    move-object v4, v9

    move-object v5, v12

    move-object v6, v10

    move-object v0, v7

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Le/a/c/a/j/c/g;-><init>(Le/a/c/a/g/s0;Le/a/c/a/j/c/j;Le/a/c/a/j/b/j;Le/a/b0/a/b/a;Ljava/util/Set;Ls1/z/b/p;)V

    invoke-interface {v14, v15, v0}, Le/a/b0/m/c/a;->Iz(Ljava/lang/String;Ls1/z/b/l;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, v8, Le/a/c/a/j/c/j;->a:Lq3/a/p1;

    .line 27
    iget-object v0, v13, Le/a/c/a/g/s0;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Le/a/c/a/j/c/i;

    invoke-direct {v1, v13}, Le/a/c/a/j/c/i;-><init>(Le/a/c/a/g/s0;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, v13, Le/a/c/a/g/s0;->c:Landroid/widget/CheckBox;

    new-instance v7, Le/a/c/a/j/c/h;

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v12

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Le/a/c/a/j/c/h;-><init>(Le/a/c/a/j/c/j;Le/a/c/a/j/b/j;Le/a/b0/a/b/a;Ljava/util/Set;Ls1/z/b/p;)V

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 8

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Le/a/c/a/j/c/j;

    .line 3
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 5
    sget v1, Lcom/truecaller/insights/ui/R$layout;->item_sender_filter:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    sget p2, Lcom/truecaller/insights/ui/R$id;->main:I

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_0

    .line 8
    sget p2, Lcom/truecaller/insights/ui/R$id;->senderCheck:I

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    .line 10
    sget p2, Lcom/truecaller/insights/ui/R$id;->senderIcon:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v6, :cond_0

    .line 12
    sget p2, Lcom/truecaller/insights/ui/R$id;->senderText:I

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 14
    new-instance p2, Le/a/c/a/g/s0;

    move-object v3, p1

    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Le/a/c/a/g/s0;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/CheckBox;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/TextView;)V

    const-string p1, "ItemSenderFilterBinding\n\u2026.context), parent, false)"

    .line 15
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Le/a/c/a/j/c/f;->c:Le/a/b0/m/c/a;

    invoke-direct {v0, p2, p1}, Le/a/c/a/j/c/j;-><init>(Le/a/c/a/g/s0;Le/a/b0/m/c/a;)V

    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public submitList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/a/j/b/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/c/a/j/c/f$a;

    invoke-direct {v0, p0, p1}, Le/a/c/a/j/c/f$a;-><init>(Le/a/c/a/j/c/f;Ljava/util/List;)V

    invoke-super {p0, p1, v0}, Ln3/b0/a/p;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
