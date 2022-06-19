.class public Le/a/b/m/g0;
.super Le/a/b/m/f0;
.source "SourceFile"


# static fields
.field public static final x:Landroid/util/SparseIntArray;


# instance fields
.field public final v:Landroid/widget/ScrollView;

.field public w:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Le/a/b/m/g0;->x:Landroid/util/SparseIntArray;

    .line 2
    sget v1, Lcom/truecaller/bizmon/R$id;->pbLoading:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget v1, Lcom/truecaller/bizmon/R$id;->pbImageUploading:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget v1, Lcom/truecaller/bizmon/R$id;->brandBar:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget v1, Lcom/truecaller/bizmon/R$id;->addBizLogoBackground:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    sget v1, Lcom/truecaller/bizmon/R$id;->addBizLogo:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    sget v1, Lcom/truecaller/bizmon/R$id;->addBizLogoLabel:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    sget v1, Lcom/truecaller/bizmon/R$id;->bizLogo:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 9
    sget v1, Lcom/truecaller/bizmon/R$id;->editBizLogoIcon:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    sget v1, Lcom/truecaller/bizmon/R$id;->titleBrand:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 11
    sget v1, Lcom/truecaller/bizmon/R$id;->colorsRecyclerView:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    sget v1, Lcom/truecaller/bizmon/R$id;->bgName:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget v1, Lcom/truecaller/bizmon/R$id;->pdvName:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget v1, Lcom/truecaller/bizmon/R$id;->bgImageWidget:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    sget v1, Lcom/truecaller/bizmon/R$id;->titleImage:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    sget v1, Lcom/truecaller/bizmon/R$id;->imageListWidget:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    sget v1, Lcom/truecaller/bizmon/R$id;->bgContactDetails:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/truecaller/bizmon/R$id;->titleContact:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lcom/truecaller/bizmon/R$id;->pdvNumber:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lcom/truecaller/bizmon/R$id;->pdvAddress:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lcom/truecaller/bizmon/R$id;->pdvEmail:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v1, Lcom/truecaller/bizmon/R$id;->bgDescDetails:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget v1, Lcom/truecaller/bizmon/R$id;->titleDescription:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget v1, Lcom/truecaller/bizmon/R$id;->pdvDescription:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget v1, Lcom/truecaller/bizmon/R$id;->pdvCategory:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget v1, Lcom/truecaller/bizmon/R$id;->bizOpenHoursWidget:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Ln3/n/f;Landroid/view/View;)V
    .locals 32

    move-object/from16 v4, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    sget-object v5, Le/a/b/m/g0;->x:Landroid/util/SparseIntArray;

    const/16 v6, 0x1a

    const/4 v15, 0x0

    move-object/from16 v7, p1

    invoke-static {v7, v0, v6, v15, v5}, Landroidx/databinding/ViewDataBinding;->mapBindings(Ln3/n/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$j;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v30

    const/4 v5, 0x5

    .line 2
    aget-object v5, v30, v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v6, 0x4

    aget-object v6, v30, v6

    check-cast v6, Landroid/view/View;

    const/4 v7, 0x6

    aget-object v7, v30, v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0x10

    aget-object v8, v30, v8

    check-cast v8, Landroid/view/View;

    const/16 v9, 0x15

    aget-object v9, v30, v9

    check-cast v9, Landroid/view/View;

    const/16 v10, 0xd

    aget-object v10, v30, v10

    check-cast v10, Landroid/view/View;

    const/16 v11, 0xb

    aget-object v11, v30, v11

    check-cast v11, Landroid/view/View;

    const/4 v12, 0x7

    aget-object v12, v30, v12

    check-cast v12, Landroid/widget/ImageView;

    const/16 v13, 0x19

    aget-object v13, v30, v13

    check-cast v13, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;

    const/4 v14, 0x3

    aget-object v14, v30, v14

    check-cast v14, Landroid/view/View;

    const/16 v16, 0xa

    aget-object v16, v30, v16

    check-cast v16, Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v15, v16

    const/16 v16, 0x8

    aget-object v16, v30, v16

    check-cast v16, Landroid/widget/ImageView;

    const/16 v17, 0xf

    aget-object v17, v30, v17

    check-cast v17, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;

    const/16 v18, 0x2

    aget-object v18, v30, v18

    check-cast v18, Landroid/widget/ProgressBar;

    const/16 v19, 0x1

    aget-object v19, v30, v19

    check-cast v19, Landroid/widget/ProgressBar;

    const/16 v20, 0x13

    aget-object v20, v30, v20

    check-cast v20, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    const/16 v21, 0x18

    aget-object v21, v30, v21

    check-cast v21, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    const/16 v22, 0x17

    aget-object v22, v30, v22

    check-cast v22, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    const/16 v23, 0x14

    aget-object v23, v30, v23

    check-cast v23, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    const/16 v24, 0xc

    aget-object v24, v30, v24

    check-cast v24, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    const/16 v25, 0x12

    aget-object v25, v30, v25

    check-cast v25, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    const/16 v26, 0x9

    aget-object v26, v30, v26

    check-cast v26, Landroid/widget/TextView;

    const/16 v27, 0x11

    aget-object v27, v30, v27

    check-cast v27, Landroid/widget/TextView;

    const/16 v28, 0x16

    aget-object v28, v30, v28

    check-cast v28, Landroid/widget/TextView;

    const/16 v29, 0xe

    aget-object v29, v30, v29

    check-cast v29, Landroid/widget/TextView;

    const/16 v31, 0x0

    move/from16 v4, v31

    invoke-direct/range {v1 .. v29}, Le/a/b/m/f0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    move-object/from16 v3, p0

    .line 3
    iput-wide v1, v3, Le/a/b/m/g0;->w:J

    const/4 v1, 0x0

    .line 4
    aget-object v1, v30, v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, v3, Le/a/b/m/g0;->v:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v3, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 7
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 8
    :try_start_0
    iput-wide v0, v3, Le/a/b/m/g0;->w:J

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public executeBindings()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 2
    :try_start_0
    iput-wide v0, p0, Le/a/b/m/g0;->w:J

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Le/a/b/m/g0;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 2
    :try_start_0
    iput-wide v0, p0, Le/a/b/m/g0;->w:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
