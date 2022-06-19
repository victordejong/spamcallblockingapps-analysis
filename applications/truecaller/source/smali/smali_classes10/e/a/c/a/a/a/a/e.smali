.class public abstract Le/a/c/a/a/a/a/e;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$c0;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/c/a/i/h;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/c/a/i/h;)V
    .locals 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Le/a/c/a/a/a/a/e;->d:Le/a/c/a/i/h;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p2, v1

    :cond_0
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    iput p2, p0, Le/a/c/a/a/a/a/e;->a:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p2

    :goto_1
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_3
    iput v0, p0, Le/a/c/a/a/a/a/e;->b:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "itemView.context"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/c/a/a/a/a/e;->c:Ljava/util/Map;

    return-void
.end method

.method public static synthetic Q4(Le/a/c/a/a/a/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p6, p7, 0x20

    if-eqz p6, :cond_0

    const-string p6, "show_message"

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Le/a/c/a/a/a/a/e;->P4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final N4()Le/a/b0/a/b/a;
    .locals 5

    .line 1
    new-instance v0, Le/a/b0/a/b/a;

    new-instance v1, Le/a/p5/i0;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    const-string v4, "itemView.context"

    invoke-static {v2, v3, v4}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    return-object v0
.end method

.method public final O4(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "addressProfile"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v2, v1

    .line 2
    iget-object v3, v0, Le/a/b0/m/a/a;->c:Landroid/net/Uri;

    .line 3
    iget-object v4, v0, Le/a/b0/m/a/a;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0xffbc

    .line 4
    invoke-direct/range {v2 .. v19}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    return-object v1
.end method

.method public final P4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 19

    const-string v8, "feature"

    const-string v3, "category"

    const-string v9, "context"

    const-string v10, "actionInfo"

    move-object/from16 v0, p1

    move-object v1, v8

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move-object v5, v9

    move-object/from16 v6, p6

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Le/d/c/a/a;->J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/c/a/a/a/a/e;->d:Le/a/c/a/i/h;

    if-eqz v1, :cond_9

    const/16 v2, 0x7f

    const/16 v3, 0x7f

    and-int/lit8 v3, v3, 0x1

    const-string v4, ""

    if-eqz v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_2

    move-object v6, v4

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v7, v2, 0x8

    if-eqz v7, :cond_3

    move-object v7, v4

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    and-int/lit8 v11, v2, 0x10

    if-eqz v11, :cond_4

    move-object v11, v4

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    and-int/lit8 v12, v2, 0x20

    if-eqz v12, :cond_5

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    .line 3
    :goto_6
    invoke-static {v3, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventCategory"

    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventInfo"

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionType"

    invoke-static {v11, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "propertyMap"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "<set-?>"

    move-object/from16 v5, p1

    .line 4
    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, p2

    .line 5
    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "click"

    .line 6
    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, p6

    .line 7
    invoke-static {v10, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static/range {p3 .. p4}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, p5

    .line 10
    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_8

    .line 12
    new-instance v3, Le/a/c/r/d/b;

    .line 13
    new-instance v15, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x1c0

    const/16 v17, 0x0

    move-object v4, v15

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v4 .. v16}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 14
    invoke-static {v2}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v4, v18

    .line 15
    invoke-direct {v3, v4, v2}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 16
    invoke-interface {v1, v3}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    goto :goto_8

    .line 17
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_8
    return-void
.end method

.method public final R4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 27

    const-string v6, "feature"

    const-string v3, "category"

    const-string v7, "context"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/c/a/a/a/a/e;->d:Le/a/c/a/i/h;

    if-eqz v1, :cond_9

    const/16 v2, 0x7f

    const/16 v3, 0x7f

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const-string v5, ""

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_0
    move-object v3, v8

    :goto_0
    and-int/lit8 v9, v2, 0x2

    if-eqz v9, :cond_1

    move-object v9, v5

    goto :goto_1

    :cond_1
    move-object v9, v8

    :goto_1
    and-int/lit8 v10, v2, 0x4

    if-eqz v10, :cond_2

    move-object v10, v5

    goto :goto_2

    :cond_2
    move-object v10, v8

    :goto_2
    and-int/lit8 v11, v2, 0x8

    if-eqz v11, :cond_3

    move-object v11, v5

    goto :goto_3

    :cond_3
    move-object v11, v8

    :goto_3
    and-int/lit8 v12, v2, 0x10

    if-eqz v12, :cond_4

    move-object v12, v5

    goto :goto_4

    :cond_4
    move-object v12, v8

    :goto_4
    and-int/lit8 v13, v2, 0x20

    if-eqz v13, :cond_5

    goto :goto_5

    :cond_5
    move-object v5, v8

    :goto_5
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 2
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    :cond_6
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventCategory"

    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventInfo"

    invoke-static {v10, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "actionType"

    invoke-static {v12, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "actionInfo"

    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "propertyMap"

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "<set-?>"

    move-object/from16 v3, p1

    .line 4
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, p2

    .line 5
    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "view"

    .line 6
    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static/range {p3 .. p4}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, p5

    .line 9
    invoke-static {v10, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_7

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_8

    .line 11
    new-instance v2, Le/a/c/r/d/b;

    .line 12
    new-instance v4, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1c0

    const/16 v26, 0x0

    move-object v14, v4

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, v9

    move-object/from16 v18, p5

    move-object/from16 v19, v7

    move-object/from16 v20, v5

    invoke-direct/range {v14 .. v26}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 13
    invoke-static {v8}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 14
    invoke-direct {v2, v4, v3}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 15
    invoke-interface {v1, v2}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    goto :goto_7

    .line 16
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_7
    return-void
.end method

.method public abstract S4(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final T4(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "itemView"

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    .line 2
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v5, :cond_1

    move-object v1, v2

    :cond_1
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_2

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    move v1, v4

    .line 5
    :goto_0
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_4

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_4
    move v2, v4

    .line 7
    :goto_2
    invoke-virtual {p1, v1, v4, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 9
    :cond_5
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {p1, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v5, :cond_6

    move-object v1, v2

    :cond_6
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_7

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    :cond_7
    move v1, v4

    .line 12
    :goto_3
    iget v5, p0, Le/a/c/a/a/a/a/e;->a:I

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v6, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    move-object v2, v3

    :goto_4
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_9

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 14
    :cond_9
    iget v2, p0, Le/a/c/a/a/a/a/e;->b:I

    invoke-virtual {p1, v1, v5, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    return-void
.end method
