.class public final Le/a/b/a/a/a/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/b/a/a/a/v;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/v;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/z;->a:Le/a/b/a/a/a/v;

    iput-object p2, p0, Le/a/b/a/a/a/z;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/b/a/a/a/z;->a:Le/a/b/a/a/a/v;

    .line 2
    sget-object v2, Le/a/b/a/a/a/v;->h:[Ls1/a/l;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x7

    const/4 v6, 0x0

    if-ge v4, v5, :cond_4

    .line 5
    iget-object v5, v1, Le/a/b/a/a/a/v;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iget-object v7, v1, Le/a/b/a/a/a/v;->b:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iget-object v8, v1, Le/a/b/a/a/a/v;->c:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    add-int/lit8 v4, v4, 0x1

    .line 6
    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7
    new-instance v6, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x7

    const/4 v14, 0x0

    move-object v9, v6

    invoke-direct/range {v9 .. v14}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILs1/z/c/f;)V

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->setWeekday(Ljava/lang/Integer;)V

    .line 9
    invoke-virtual {v1}, Le/a/b/a/a/a/v;->OA()Le/a/b/m/n;

    move-result-object v5

    iget-object v5, v5, Le/a/b/m/n;->b:Landroid/widget/Switch;

    const-string v9, "binding.chkEachDayTime"

    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v1}, Le/a/b/a/a/a/v;->QA()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    aget-object v5, v5, v7

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v1}, Le/a/b/a/a/a/v;->QA()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Le/a/b/a/a/a/v;->OA()Le/a/b/m/n;

    move-result-object v7

    iget-object v7, v7, Le/a/b/m/n;->m:Landroid/widget/Spinner;

    const-string v10, "binding.mainOpeningSpinner"

    invoke-static {v7, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    aget-object v5, v5, v7

    .line 12
    :goto_1
    invoke-virtual {v6, v5}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->setOpens(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Le/a/b/a/a/a/v;->OA()Le/a/b/m/n;

    move-result-object v5

    iget-object v5, v5, Le/a/b/m/n;->b:Landroid/widget/Switch;

    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 14
    invoke-virtual {v1}, Le/a/b/a/a/a/v;->QA()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    aget-object v5, v5, v7

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v1}, Le/a/b/a/a/a/v;->QA()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Le/a/b/a/a/a/v;->OA()Le/a/b/m/n;

    move-result-object v7

    iget-object v7, v7, Le/a/b/m/n;->l:Landroid/widget/Spinner;

    const-string v8, "binding.mainClosingSpinner"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    aget-object v5, v5, v7

    .line 16
    :goto_2
    invoke-virtual {v6, v5}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->setCloses(Ljava/lang/String;)V

    :cond_3
    if-eqz v6, :cond_0

    .line 17
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 18
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    iget-object v1, v0, Le/a/b/a/a/a/z;->a:Le/a/b/a/a/a/v;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    if-eqz v1, :cond_6

    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessEditProfile_empty_time_error:I

    const/4 v4, 0x6

    invoke-static {v1, v2, v6, v3, v4}, Le/a/p5/s0/g;->S1(Landroid/content/Context;ILjava/lang/CharSequence;II)Landroid/widget/Toast;

    goto :goto_3

    .line 20
    :cond_5
    new-instance v1, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

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

    const/16 v22, 0x3fff

    const/16 v23, 0x0

    invoke-direct/range {v7 .. v23}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;ILs1/z/c/f;)V

    .line 21
    invoke-virtual {v1, v2}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->setOpenHours(Ljava/util/List;)V

    .line 22
    iget-object v2, v0, Le/a/b/a/a/a/z;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->setLocId(Ljava/lang/String;)V

    .line 23
    iget-object v2, v0, Le/a/b/a/a/a/z;->a:Le/a/b/a/a/a/v;

    invoke-virtual {v2}, Le/a/b/a/a/a/v;->PA()Le/a/b/a/a/d/b;

    move-result-object v2

    .line 24
    new-instance v15, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;

    move-object v3, v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 25
    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v1, 0x0

    move-object/from16 v24, v15

    move-object v15, v1

    const/16 v18, 0x3eff

    .line 26
    invoke-direct/range {v3 .. v19}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILs1/z/c/f;)V

    move-object/from16 v1, v24

    .line 27
    invoke-virtual {v2, v1}, Le/a/b/a/a/d/b;->e(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;)V

    :cond_6
    :goto_3
    return-void
.end method
