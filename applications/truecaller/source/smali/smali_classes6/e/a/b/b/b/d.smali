.class public final Le/a/b/b/b/d;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/b/b/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/b/b/b/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/OpenHours;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I

.field public final f:Le/a/b/b/b/c;


# direct methods
.method public constructor <init>(Le/a/b/b/b/c;)V
    .locals 1

    const-string v0, "openHourListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/b/b/b/d;->f:Le/a/b/b/b/c;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/b/b/b/d;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final e(ILcom/truecaller/profile/data/dto/OpenHours;)V
    .locals 1

    const-string v0, "openHour"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/b/b/d;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/b/b/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Le/a/b/b/b/d$a;

    const-string v1, "holder"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 3
    iget-object v2, v1, Le/a/b/b/b/d;->a:Ljava/util/List;

    move/from16 v3, p2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/profile/data/dto/OpenHours;

    const-string v3, "openHour"

    .line 4
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Le/a/b/b/b/d$a;->N4()Le/a/b/m/b0;

    move-result-object v3

    .line 6
    iget-object v4, v3, Le/a/b/m/b0;->b:Landroid/widget/TextView;

    const-string v5, "openDaysEditText"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$this$weekdayNames"

    .line 7
    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/OpenHours;->getWeekday()Ljava/util/SortedSet;

    move-result-object v7

    .line 9
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    const/4 v8, 0x1

    xor-int/2addr v6, v8

    const-string v15, ""

    const/4 v14, 0x0

    if-eqz v6, :cond_3

    .line 10
    invoke-interface {v7}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v7}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "daysOfTheWeek.first()"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-interface {v7}, Ljava/util/SortedSet;->size()I

    move-result v9

    sub-int/2addr v9, v8

    if-ne v6, v9, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v14

    :goto_0
    if-eqz v6, :cond_2

    .line 11
    invoke-interface {v7}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v6}, Le/a/n/g0;->E(I)Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-interface {v7}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v7

    const-string v9, "daysOfTheWeek.last()"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Le/a/n/g0;->E(I)Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-static {v6, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v7, "firstDay"

    goto :goto_1

    :cond_1
    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v6, v10, v14

    aput-object v7, v10, v8

    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%s - %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang.String.format(format, *args)"

    :goto_1
    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v14

    goto :goto_2

    .line 14
    :cond_2
    sget-object v13, Le/a/b/b/b/b;->b:Le/a/b/b/b/b;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v6, 0x1f

    move v1, v14

    move v14, v6

    invoke-static/range {v7 .. v14}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move v1, v14

    move-object v6, v15

    .line 15
    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v4, v3, Le/a/b/m/b0;->c:Landroid/widget/TextView;

    const-string v6, "opensAtEditText"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/n/g0;->M(Lcom/truecaller/profile/data/dto/OpenHours;)Le/a/b/b/b/a;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Le/a/b/b/b/a;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    move-object v7, v15

    :goto_3
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v4, v3, Le/a/b/m/b0;->a:Landroid/widget/TextView;

    const-string v7, "closesAtEditText"

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/n/g0;->C(Lcom/truecaller/profile/data/dto/OpenHours;)Le/a/b/b/b/a;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Le/a/b/b/b/a;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object v15, v2

    :cond_5
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v2, v3, Le/a/b/m/b0;->d:Landroid/widget/ImageButton;

    const-string v4, "removeButton"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_6

    const/16 v14, 0x8

    goto :goto_4

    :cond_6
    move v14, v1

    :goto_4
    invoke-virtual {v2, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 19
    iget-object v2, v0, Le/a/b/b/b/d$a;->b:Le/a/b/b/b/d;

    .line 20
    iget-boolean v4, v2, Le/a/b/b/b/d;->b:Z

    const/4 v8, 0x0

    if-eqz v4, :cond_7

    .line 21
    iget v2, v2, Le/a/b/b/b/d;->e:I

    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v4

    if-ne v2, v4, :cond_7

    .line 23
    iget-object v2, v3, Le/a/b/m/b0;->b:Landroid/widget/TextView;

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Le/a/b/m/b0;->b:Landroid/widget/TextView;

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v2, v3, Le/a/b/m/b0;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 25
    iget-object v2, v0, Le/a/b/b/b/d$a;->b:Le/a/b/b/b/d;

    .line 26
    iput-boolean v1, v2, Le/a/b/b/b/d;->b:Z

    goto :goto_5

    .line 27
    :cond_7
    iget-object v2, v3, Le/a/b/m/b0;->b:Landroid/widget/TextView;

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 28
    :goto_5
    iget-object v2, v0, Le/a/b/b/b/d$a;->b:Le/a/b/b/b/d;

    .line 29
    iget-boolean v4, v2, Le/a/b/b/b/d;->c:Z

    if-eqz v4, :cond_8

    .line 30
    iget v2, v2, Le/a/b/b/b/d;->e:I

    .line 31
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v4

    if-ne v2, v4, :cond_8

    .line 32
    iget-object v2, v3, Le/a/b/m/b0;->c:Landroid/widget/TextView;

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Le/a/b/m/b0;->c:Landroid/widget/TextView;

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v2, v3, Le/a/b/m/b0;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 34
    iget-object v2, v0, Le/a/b/b/b/d$a;->b:Le/a/b/b/b/d;

    .line 35
    iput-boolean v1, v2, Le/a/b/b/b/d;->c:Z

    goto :goto_6

    .line 36
    :cond_8
    iget-object v2, v3, Le/a/b/m/b0;->c:Landroid/widget/TextView;

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 37
    :goto_6
    iget-object v2, v0, Le/a/b/b/b/d$a;->b:Le/a/b/b/b/d;

    .line 38
    iget-boolean v4, v2, Le/a/b/b/b/d;->d:Z

    if-eqz v4, :cond_9

    .line 39
    iget v2, v2, Le/a/b/b/b/d;->e:I

    .line 40
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v4

    if-ne v2, v4, :cond_9

    .line 41
    iget-object v2, v3, Le/a/b/m/b0;->a:Landroid/widget/TextView;

    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Le/a/b/m/b0;->a:Landroid/widget/TextView;

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorRequired:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v2, v3, Le/a/b/m/b0;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 43
    iget-object v0, v0, Le/a/b/b/b/d$a;->b:Le/a/b/b/b/d;

    .line 44
    iput-boolean v1, v0, Le/a/b/b/b/d;->d:Z

    goto :goto_7

    .line 45
    :cond_9
    iget-object v0, v3, Le/a/b/m/b0;->a:Landroid/widget/TextView;

    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Le/a/b/b/b/d$a;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/truecaller/bizmon/R$layout;->business_profile_row_open_hour:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026open_hour, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p2, p0, p1}, Le/a/b/b/b/d$a;-><init>(Le/a/b/b/b/d;Landroid/view/View;)V

    return-object p2
.end method
