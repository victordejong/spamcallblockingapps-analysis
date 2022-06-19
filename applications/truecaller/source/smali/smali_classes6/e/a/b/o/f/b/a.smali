.class public final Le/a/b/o/f/b/a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/o/f/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/b/o/f/b/c;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field public final a:Landroid/view/LayoutInflater;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/b/o/c/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/b/o/c/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/b/o/f/b/b;

.field public final e:Le/a/b/o/f/b/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Le/a/b/o/f/b/b;Le/a/b/o/f/b/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Le/a/b/o/c/b/b;",
            ">;",
            "Le/a/b/o/f/b/b;",
            "Le/a/b/o/f/b/a$a;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactList"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "govServicesContactListItemPresenter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p2, p0, Le/a/b/o/f/b/a;->c:Ljava/util/List;

    iput-object p3, p0, Le/a/b/o/f/b/a;->d:Le/a/b/o/f/b/b;

    iput-object p4, p0, Le/a/b/o/f/b/a;->e:Le/a/b/o/f/b/a$a;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string p2, "LayoutInflater.from(context)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/b/o/f/b/a;->a:Landroid/view/LayoutInflater;

    .line 3
    iget-object p1, p0, Le/a/b/o/f/b/a;->c:Ljava/util/List;

    iput-object p1, p0, Le/a/b/o/f/b/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    new-instance v0, Le/a/b/o/f/b/a$b;

    invoke-direct {v0, p0}, Le/a/b/o/f/b/a$b;-><init>(Le/a/b/o/f/b/a;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/o/f/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Le/a/b/o/f/b/c;

    const-string v3, "holder"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v3, v0, Le/a/b/o/f/b/a;->d:Le/a/b/o/f/b/b;

    iget-object v4, v0, Le/a/b/o/f/b/a;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/o/c/b/b;

    .line 4
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "itemViewHolder"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "contactData"

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v4}, Le/a/n/g0;->O(Le/a/b/o/c/b/b;)Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v5, v4, Le/a/b/o/c/b/b;->d:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_4

    .line 7
    iget-object v9, v4, Le/a/b/o/c/b/b;->e:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    move v10, v7

    goto :goto_0

    :cond_0
    move v10, v6

    :goto_0
    if-eqz v10, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    move v10, v7

    goto :goto_1

    :cond_1
    move v10, v6

    :goto_1
    if-eqz v10, :cond_2

    .line 9
    invoke-virtual {v2, v7}, Le/a/b/o/f/b/c;->O4(Z)V

    const-string v3, "departmentName"

    .line 10
    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Le/a/b/o/f/b/c;->N4()Le/a/b/m/v0;

    move-result-object v3

    iget-object v3, v3, Le/a/b/m/v0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v10, "binding.textDepartment"

    invoke-static {v3, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v2, v5}, Le/a/b/o/f/b/c;->setName(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v2, v3}, Le/a/b/o/f/b/c;->setName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, v6}, Le/a/b/o/f/b/c;->O4(Z)V

    .line 15
    :goto_2
    sget-object v5, Ls1/s;->a:Ls1/s;

    goto :goto_3

    :cond_3
    move-object v5, v8

    :goto_3
    if-eqz v5, :cond_4

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {v2, v3}, Le/a/b/o/f/b/c;->setName(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, v6}, Le/a/b/o/f/b/c;->O4(Z)V

    .line 18
    :goto_4
    iget-object v4, v4, Le/a/b/o/c/b/b;->c:Ljava/lang/String;

    const-string v5, "phone"

    .line 19
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2}, Le/a/b/o/f/b/c;->N4()Le/a/b/m/v0;

    move-result-object v5

    iget-object v5, v5, Le/a/b/m/v0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v9, "binding.textNumber"

    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    new-instance v4, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v3, v7}, Ls1/f0/w;->n0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

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

    const/16 v26, 0x0

    const v27, 0xfff7

    invoke-direct/range {v10 .. v27}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    const-string v3, "avatarXConfig"

    .line 22
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v3, v2, Le/a/b/o/f/b/c;->b:Le/a/b0/a/b/a;

    const/4 v5, 0x2

    invoke-static {v3, v4, v6, v5, v8}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 24
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v4, Lg0;

    invoke-direct {v4, v6, v1, v0}, Lg0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {v2}, Le/a/b/o/f/b/c;->N4()Le/a/b/m/v0;

    move-result-object v2

    iget-object v2, v2, Le/a/b/m/v0;->b:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v3, Lg0;

    invoke-direct {v3, v7, v1, v0}, Lg0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Le/a/b/o/f/b/c;

    iget-object v0, p0, Le/a/b/o/f/b/a;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/truecaller/bizmon/R$layout;->item_gov_services_contact:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026s_contact, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/b/o/f/b/c;-><init>(Landroid/view/View;)V

    return-object p2
.end method
