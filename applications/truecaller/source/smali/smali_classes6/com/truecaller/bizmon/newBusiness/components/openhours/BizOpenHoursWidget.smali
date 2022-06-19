.class public final Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\'J\u001d\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J7\u0010\u000e\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJC\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR#\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001b8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0019\u0010&\u001a\u00020!8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\u00a8\u0006("
    }
    d2 = {
        "Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "",
        "Lcom/truecaller/profile/data/dto/businessV2/OpenHours;",
        "openHours",
        "Ls1/s;",
        "setIndividualTime",
        "(Ljava/util/List;)V",
        "",
        "locId",
        "Le/a/p5/h0;",
        "themedResourceProvider",
        "Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;",
        "widgetListener",
        "g1",
        "(Ljava/util/List;Ljava/lang/String;Le/a/p5/h0;Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;)V",
        "Landroid/widget/TextView;",
        "lblDay",
        "lblOpen",
        "lblClose",
        "day",
        "open",
        "close",
        "h1",
        "(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "f1",
        "(Landroid/widget/TextView;Landroid/widget/TextView;)V",
        "",
        "u",
        "Ls1/g;",
        "getDaysOfWeek",
        "()[Ljava/lang/String;",
        "daysOfWeek",
        "Le/a/b/m/b1;",
        "t",
        "Le/a/b/m/b1;",
        "getBinding",
        "()Le/a/b/m/b1;",
        "binding",
        "a",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final t:Le/a/b/m/b1;

.field public final u:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 37

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-string v2, "context"

    .line 1
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p2

    .line 2
    invoke-direct {v15, v0, v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    sget v1, Lcom/truecaller/bizmon/R$layout;->layout_biz_openhours:I

    invoke-virtual {v0, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget v0, Lcom/truecaller/bizmon/R$id;->bgTimingDetails:I

    .line 6
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    sget v0, Lcom/truecaller/bizmon/R$id;->bgTimingDetailsCommon:I

    .line 8
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    sget v0, Lcom/truecaller/bizmon/R$id;->editTiming:I

    .line 10
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 11
    sget v0, Lcom/truecaller/bizmon/R$id;->groupCommonTime:I

    .line 12
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/Group;

    if-eqz v5, :cond_0

    .line 13
    sget v0, Lcom/truecaller/bizmon/R$id;->groupIndividualTime:I

    .line 14
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    if-eqz v6, :cond_0

    .line 15
    sget v0, Lcom/truecaller/bizmon/R$id;->lblClosingTime:I

    .line 16
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 17
    sget v0, Lcom/truecaller/bizmon/R$id;->lblDaysOpen:I

    .line 18
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 19
    sget v0, Lcom/truecaller/bizmon/R$id;->lblFriday:I

    .line 20
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 21
    sget v0, Lcom/truecaller/bizmon/R$id;->lblFridayClose:I

    .line 22
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 23
    sget v0, Lcom/truecaller/bizmon/R$id;->lblFridayOpen:I

    .line 24
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 25
    sget v0, Lcom/truecaller/bizmon/R$id;->lblMonday:I

    .line 26
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 27
    sget v0, Lcom/truecaller/bizmon/R$id;->lblMondayClose:I

    .line 28
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 29
    sget v0, Lcom/truecaller/bizmon/R$id;->lblMondayOpen:I

    .line 30
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 31
    sget v0, Lcom/truecaller/bizmon/R$id;->lblOpeningTime:I

    .line 32
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 33
    sget v0, Lcom/truecaller/bizmon/R$id;->lblSaturday:I

    .line 34
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 35
    sget v0, Lcom/truecaller/bizmon/R$id;->lblSaturdayClose:I

    .line 36
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 37
    sget v0, Lcom/truecaller/bizmon/R$id;->lblSaturdayOpen:I

    .line 38
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 39
    sget v0, Lcom/truecaller/bizmon/R$id;->lblSunday:I

    .line 40
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 41
    sget v0, Lcom/truecaller/bizmon/R$id;->lblSundayClose:I

    .line 42
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 43
    sget v0, Lcom/truecaller/bizmon/R$id;->lblSundayOpen:I

    .line 44
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    .line 45
    sget v0, Lcom/truecaller/bizmon/R$id;->lblThursday:I

    .line 46
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    .line 47
    sget v0, Lcom/truecaller/bizmon/R$id;->lblThursdayClose:I

    .line 48
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_0

    .line 49
    sget v0, Lcom/truecaller/bizmon/R$id;->lblThursdayOpen:I

    .line 50
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_0

    .line 51
    sget v0, Lcom/truecaller/bizmon/R$id;->lblTuesday:I

    .line 52
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Landroid/widget/TextView;

    if-eqz v26, :cond_0

    .line 53
    sget v0, Lcom/truecaller/bizmon/R$id;->lblTuesdayClose:I

    .line 54
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Landroid/widget/TextView;

    if-eqz v27, :cond_0

    .line 55
    sget v0, Lcom/truecaller/bizmon/R$id;->lblTuesdayOpen:I

    .line 56
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Landroid/widget/TextView;

    if-eqz v28, :cond_0

    .line 57
    sget v0, Lcom/truecaller/bizmon/R$id;->lblWednesday:I

    .line 58
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Landroid/widget/TextView;

    if-eqz v29, :cond_0

    .line 59
    sget v0, Lcom/truecaller/bizmon/R$id;->lblWednesdayClose:I

    .line 60
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Landroid/widget/TextView;

    if-eqz v30, :cond_0

    .line 61
    sget v0, Lcom/truecaller/bizmon/R$id;->lblWednesdayOpen:I

    .line 62
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Landroid/widget/TextView;

    if-eqz v31, :cond_0

    .line 63
    sget v0, Lcom/truecaller/bizmon/R$id;->pdvCloseTime:I

    .line 64
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    if-eqz v32, :cond_0

    .line 65
    sget v0, Lcom/truecaller/bizmon/R$id;->pdvDays:I

    .line 66
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    if-eqz v33, :cond_0

    .line 67
    sget v0, Lcom/truecaller/bizmon/R$id;->pdvOpenTime:I

    .line 68
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v34, v1

    check-cast v34, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    if-eqz v34, :cond_0

    .line 69
    sget v0, Lcom/truecaller/bizmon/R$id;->titleTiming:I

    .line 70
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v35, v1

    check-cast v35, Landroid/widget/TextView;

    if-eqz v35, :cond_0

    .line 71
    new-instance v1, Le/a/b/m/b1;

    move-object v0, v1

    move-object/from16 v36, v1

    move-object/from16 v1, p0

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v35

    invoke-direct/range {v0 .. v34}, Le/a/b/m/b1;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Landroid/widget/TextView;)V

    const-string v0, "LayoutBizOpenhoursBindin\u2026hemeWrapper(true)), this)"

    move-object/from16 v1, v36

    .line 72
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->t:Le/a/b/m/b1;

    .line 73
    new-instance v0, Le/a/b/a/b/k/a;

    invoke-direct {v0, v2}, Le/a/b/a/b/k/a;-><init>(Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, v2, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->u:Ls1/g;

    return-void

    :cond_0
    move-object v2, v15

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final setIndividualTime(Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/businessV2/OpenHours;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    const/4 v8, 0x7

    new-array v9, v8, [Ljava/lang/Integer;

    .line 1
    iget-object v10, v7, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->t:Le/a/b/m/b1;

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "lblSaturdayClose"

    const-string v2, "lblSaturdayOpen"

    const-string v3, "lblFridayClose"

    const-string v4, "lblFridayOpen"

    const-string v5, "lblThursdayClose"

    const-string v6, "lblThursdayOpen"

    const-string v12, "lblWednesdayClose"

    const-string v13, "lblWednesdayOpen"

    const-string v14, "lblTuesdayClose"

    const-string v15, "lblTuesdayOpen"

    const-string v8, "lblMondayClose"

    const-string v7, "lblMondayOpen"

    move-object/from16 p1, v1

    const-string v1, "lblSundayClose"

    move-object/from16 v17, v2

    const-string v2, "lblSundayOpen"

    move-object/from16 v18, v3

    const/4 v3, 0x1

    if-eqz v0, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getWeekday()Ljava/lang/Integer;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v19

    add-int/lit8 v20, v19, -0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v9, v20

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getWeekday()Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v20, v11

    if-nez v19, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v3, :cond_2

    .line 6
    iget-object v3, v10, Le/a/b/m/b1;->p:Landroid/widget/TextView;

    const-string v4, "lblSunday"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v10, Le/a/b/m/b1;->r:Landroid/widget/TextView;

    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v10, Le/a/b/m/b1;->q:Landroid/widget/TextView;

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/bizmon/R$string;->Sunday:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "resources.getString(R.string.Sunday)"

    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getOpens()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getCloses()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->h1(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    :goto_1
    const/4 v1, 0x2

    if-nez v19, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 8
    iget-object v1, v10, Le/a/b/m/b1;->j:Landroid/widget/TextView;

    const-string v2, "lblMonday"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Le/a/b/m/b1;->l:Landroid/widget/TextView;

    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v10, Le/a/b/m/b1;->k:Landroid/widget/TextView;

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/truecaller/bizmon/R$string;->Monday:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resources.getString(R.string.Monday)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getOpens()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getCloses()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->h1(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_4
    :goto_2
    const/4 v1, 0x3

    if-nez v19, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 10
    iget-object v1, v10, Le/a/b/m/b1;->v:Landroid/widget/TextView;

    const-string v2, "lblTuesday"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Le/a/b/m/b1;->x:Landroid/widget/TextView;

    invoke-static {v2, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v10, Le/a/b/m/b1;->w:Landroid/widget/TextView;

    invoke-static {v3, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/truecaller/bizmon/R$string;->Tuesday:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resources.getString(R.string.Tuesday)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getOpens()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getCloses()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->h1(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_6
    :goto_3
    const/4 v1, 0x4

    if-nez v19, :cond_7

    goto :goto_4

    .line 11
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_8

    .line 12
    iget-object v1, v10, Le/a/b/m/b1;->y:Landroid/widget/TextView;

    const-string v2, "lblWednesday"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Le/a/b/m/b1;->A:Landroid/widget/TextView;

    invoke-static {v2, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v10, Le/a/b/m/b1;->z:Landroid/widget/TextView;

    invoke-static {v3, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/truecaller/bizmon/R$string;->Wednesday:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resources.getString(R.string.Wednesday)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getOpens()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getCloses()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->h1(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    :goto_4
    const/4 v1, 0x5

    if-nez v19, :cond_9

    goto :goto_5

    .line 13
    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_a

    .line 14
    iget-object v1, v10, Le/a/b/m/b1;->s:Landroid/widget/TextView;

    const-string v2, "lblThursday"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Le/a/b/m/b1;->u:Landroid/widget/TextView;

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v10, Le/a/b/m/b1;->t:Landroid/widget/TextView;

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/truecaller/bizmon/R$string;->Thursday:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resources.getString(R.string.Thursday)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getOpens()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getCloses()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->h1(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a
    :goto_5
    const/4 v1, 0x6

    if-nez v19, :cond_b

    goto :goto_6

    .line 15
    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_c

    .line 16
    iget-object v1, v10, Le/a/b/m/b1;->g:Landroid/widget/TextView;

    const-string v2, "lblFriday"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Le/a/b/m/b1;->i:Landroid/widget/TextView;

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v10, Le/a/b/m/b1;->h:Landroid/widget/TextView;

    move-object/from16 v11, v18

    invoke-static {v3, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/truecaller/bizmon/R$string;->Friday:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resources.getString(R.string.Friday)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getOpens()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getCloses()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->h1(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    :goto_6
    if-nez v19, :cond_d

    goto :goto_7

    .line 17
    :cond_d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_e

    .line 18
    iget-object v1, v10, Le/a/b/m/b1;->m:Landroid/widget/TextView;

    const-string v2, "lblSaturday"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Le/a/b/m/b1;->o:Landroid/widget/TextView;

    move-object/from16 v3, v17

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v10, Le/a/b/m/b1;->n:Landroid/widget/TextView;

    move-object/from16 v4, p1

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/truecaller/bizmon/R$string;->Saturday:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resources.getString(R.string.Saturday)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getOpens()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getCloses()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->h1(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_7
    const/4 v8, 0x7

    move-object/from16 v7, p0

    move-object/from16 v11, v20

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v21, v17

    move-object/from16 v11, v18

    const/16 v17, 0x0

    move-object/from16 v16, v7

    move/from16 v3, v17

    :goto_8
    const/4 v7, 0x7

    if-ge v3, v7, :cond_11

    .line 19
    aget-object v18, v9, v3

    const/16 v19, 0x1

    add-int/lit8 v17, v17, 0x1

    if-nez v18, :cond_10

    packed-switch v17, :pswitch_data_0

    goto/16 :goto_9

    .line 20
    :pswitch_0
    iget-object v7, v10, Le/a/b/m/b1;->o:Landroid/widget/TextView;

    move-object/from16 v20, v9

    move-object/from16 v9, v21

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v10, Le/a/b/m/b1;->n:Landroid/widget/TextView;

    invoke-static {v9, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p1, v0

    move-object/from16 v0, p0

    move-object/from16 v22, v16

    move/from16 v16, v3

    move-object/from16 v3, v22

    invoke-virtual {v0, v7, v9}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->f1(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_a

    :pswitch_1
    move-object/from16 p1, v0

    move-object/from16 v20, v9

    move-object/from16 v0, p0

    move-object/from16 v22, v16

    move/from16 v16, v3

    move-object/from16 v3, v22

    .line 21
    iget-object v7, v10, Le/a/b/m/b1;->i:Landroid/widget/TextView;

    invoke-static {v7, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v10, Le/a/b/m/b1;->h:Landroid/widget/TextView;

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v9}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->f1(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_a

    :pswitch_2
    move-object/from16 p1, v0

    move-object/from16 v20, v9

    move-object/from16 v0, p0

    move-object/from16 v22, v16

    move/from16 v16, v3

    move-object/from16 v3, v22

    .line 22
    iget-object v7, v10, Le/a/b/m/b1;->u:Landroid/widget/TextView;

    invoke-static {v7, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v10, Le/a/b/m/b1;->t:Landroid/widget/TextView;

    invoke-static {v9, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v9}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->f1(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_a

    :pswitch_3
    move-object/from16 p1, v0

    move-object/from16 v20, v9

    move-object/from16 v0, p0

    move-object/from16 v22, v16

    move/from16 v16, v3

    move-object/from16 v3, v22

    .line 23
    iget-object v7, v10, Le/a/b/m/b1;->A:Landroid/widget/TextView;

    invoke-static {v7, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v10, Le/a/b/m/b1;->z:Landroid/widget/TextView;

    invoke-static {v9, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v9}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->f1(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_a

    :pswitch_4
    move-object/from16 p1, v0

    move-object/from16 v20, v9

    move-object/from16 v0, p0

    move-object/from16 v22, v16

    move/from16 v16, v3

    move-object/from16 v3, v22

    .line 24
    iget-object v7, v10, Le/a/b/m/b1;->x:Landroid/widget/TextView;

    invoke-static {v7, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v10, Le/a/b/m/b1;->w:Landroid/widget/TextView;

    invoke-static {v9, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v9}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->f1(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_a

    :pswitch_5
    move-object/from16 p1, v0

    move-object/from16 v20, v9

    move-object/from16 v0, p0

    move-object/from16 v22, v16

    move/from16 v16, v3

    move-object/from16 v3, v22

    .line 25
    iget-object v7, v10, Le/a/b/m/b1;->l:Landroid/widget/TextView;

    invoke-static {v7, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v10, Le/a/b/m/b1;->k:Landroid/widget/TextView;

    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v9}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->f1(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_a

    :pswitch_6
    move-object/from16 p1, v0

    move-object/from16 v20, v9

    move-object/from16 v0, p0

    move-object/from16 v22, v16

    move/from16 v16, v3

    move-object/from16 v3, v22

    .line 26
    iget-object v7, v10, Le/a/b/m/b1;->r:Landroid/widget/TextView;

    invoke-static {v7, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v10, Le/a/b/m/b1;->q:Landroid/widget/TextView;

    invoke-static {v9, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v9}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->f1(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_a

    :cond_10
    :goto_9
    move-object/from16 p1, v0

    move-object/from16 v20, v9

    move-object/from16 v0, p0

    move-object/from16 v22, v16

    move/from16 v16, v3

    move-object/from16 v3, v22

    :goto_a
    add-int/lit8 v7, v16, 0x1

    move-object/from16 v0, p1

    move-object/from16 v16, v3

    move v3, v7

    move-object/from16 v9, v20

    goto/16 :goto_8

    :cond_11
    move-object/from16 v0, p0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final f1(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/bizmon/R$string;->BusinessProfile_Closed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {p2}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    return-void
.end method

.method public final g1(Ljava/util/List;Ljava/lang/String;Le/a/p5/h0;Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/businessV2/OpenHours;",
            ">;",
            "Ljava/lang/String;",
            "Le/a/p5/h0;",
            "Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;",
            ")V"
        }
    .end annotation

    const-string v0, "themedResourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widgetListener"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->t:Le/a/b/m/b1;

    const-string v1, "groupCommonTime"

    const-string v2, "groupIndividualTime"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_3

    .line 3
    invoke-static {p1}, Le/a/n/g0;->d0(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4
    iget-object v5, v0, Le/a/b/m/b1;->e:Landroidx/constraintlayout/widget/Group;

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 5
    iget-object v1, v0, Le/a/b/m/b1;->f:Landroidx/constraintlayout/widget/Group;

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;

    .line 7
    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getWeekday()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 8
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->getDaysOfWeek()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v3

    aget-object v5, v6, v5

    const-string v6, ", "

    invoke-static {v2, v5, v6}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 9
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v2}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v2, v0, Le/a/b/m/b1;->C:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    const/4 v5, 0x2

    invoke-static {v2, v1, v4, v3, v5}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->f1(Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Ljava/lang/String;Ls1/z/b/a;ZI)V

    .line 12
    iget-object v1, v0, Le/a/b/m/b1;->D:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getOpens()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4, v3, v5}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->f1(Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Ljava/lang/String;Ls1/z/b/a;ZI)V

    .line 13
    iget-object v1, v0, Le/a/b/m/b1;->B:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getCloses()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4, v3, v5}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->f1(Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Ljava/lang/String;Ls1/z/b/a;ZI)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v3, v0, Le/a/b/m/b1;->f:Landroidx/constraintlayout/widget/Group;

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 15
    iget-object v2, v0, Le/a/b/m/b1;->e:Landroidx/constraintlayout/widget/Group;

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->setIndividualTime(Ljava/util/List;)V

    .line 17
    :goto_1
    iget-object v1, v0, Le/a/b/m/b1;->d:Landroid/widget/ImageView;

    sget v2, Lcom/truecaller/bizmon/R$drawable;->ic_biz_edit:I

    invoke-interface {p3, v2}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 18
    :cond_3
    iget-object v5, v0, Le/a/b/m/b1;->f:Landroidx/constraintlayout/widget/Group;

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 19
    iget-object v2, v0, Le/a/b/m/b1;->e:Landroidx/constraintlayout/widget/Group;

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 20
    iget-object v1, v0, Le/a/b/m/b1;->C:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    const/4 v2, 0x3

    invoke-static {v1, v4, v4, v3, v2}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->f1(Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Ljava/lang/String;Ls1/z/b/a;ZI)V

    .line 21
    iget-object v1, v0, Le/a/b/m/b1;->D:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    invoke-static {v1, v4, v4, v3, v2}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->f1(Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Ljava/lang/String;Ls1/z/b/a;ZI)V

    .line 22
    iget-object v1, v0, Le/a/b/m/b1;->B:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    invoke-static {v1, v4, v4, v3, v2}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->f1(Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Ljava/lang/String;Ls1/z/b/a;ZI)V

    .line 23
    iget-object v1, v0, Le/a/b/m/b1;->d:Landroid/widget/ImageView;

    sget v2, Lcom/truecaller/bizmon/R$drawable;->ic_biz_add:I

    invoke-interface {p3, v2}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :goto_2
    iget-object v0, v0, Le/a/b/m/b1;->d:Landroid/widget/ImageView;

    new-instance v7, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$b;-><init>(Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;Ljava/util/List;Le/a/p5/h0;Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getBinding()Le/a/b/m/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->t:Le/a/b/m/b1;

    return-object v0
.end method

.method public final getDaysOfWeek()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget;->u:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final h1(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p3}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p3, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
