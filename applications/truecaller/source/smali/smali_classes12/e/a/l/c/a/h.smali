.class public abstract Le/a/l/c/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/c/a/r;

.field public final b:Le/a/l/a/c;

.field public final c:Le/a/p5/h0;


# direct methods
.method public constructor <init>(Le/a/l/c/a/r;Le/a/l/a/c;Le/a/p5/h0;)V
    .locals 1

    const-string v0, "cardLabelFactory"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonBuildHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/c/a/h;->a:Le/a/l/c/a/r;

    iput-object p2, p0, Le/a/l/c/a/h;->b:Le/a/l/a/c;

    iput-object p3, p0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    return-void
.end method

.method public static b(Le/a/l/c/a/h;Le/a/l/n2/f;ZLe/a/l/c/a/a0;Ljava/lang/Long;ILjava/lang/Object;)Le/a/l/c/a/p;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    and-int/lit8 v1, p5, 0x4

    const/4 v11, 0x0

    and-int/lit8 v1, p5, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    :goto_0
    const-string v2, "purchaseItem"

    .line 1
    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v14, Le/a/l/c/a/t$i;

    .line 3
    new-instance v10, Le/a/l/c/a/x2;

    .line 4
    iget-object v2, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    const/4 v12, 0x0

    new-array v3, v12, [Ljava/lang/Object;

    const v4, 0x7f120527

    invoke-interface {v2, v4, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "resourceProvider.getStri\u2026UserTabGiftGoldCardTitle)"

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    const v4, 0x7f06054a

    invoke-interface {v2, v4}, Le/a/p5/c0;->a(I)I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    move-object v2, v10

    .line 6
    invoke-direct/range {v2 .. v8}, Le/a/l/c/a/x2;-><init>(Ljava/lang/String;IFZFI)V

    .line 7
    new-instance v7, Le/a/l/c/a/x2;

    .line 8
    iget-object v2, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    new-array v3, v12, [Ljava/lang/Object;

    const v4, 0x7f120525

    invoke-interface {v2, v4, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026UserTabGiftGoldCardOffer)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v3, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    const v4, 0x7f060549

    invoke-interface {v3, v4}, Le/a/p5/c0;->a(I)I

    move-result v18

    const/high16 v19, 0x41e00000    # 28.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x18

    move-object/from16 v16, v7

    move-object/from16 v17, v2

    .line 10
    invoke-direct/range {v16 .. v22}, Le/a/l/c/a/x2;-><init>(Ljava/lang/String;IFZFI)V

    .line 11
    new-instance v8, Le/a/l/c/a/x2;

    .line 12
    iget-object v2, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    new-array v3, v12, [Ljava/lang/Object;

    const v5, 0x7f120526

    invoke-interface {v2, v5, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026rTabGiftGoldCardSubtitle)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v3, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    invoke-interface {v3, v4}, Le/a/p5/c0;->a(I)I

    move-result v25

    const/high16 v26, 0x41400000    # 12.0f

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x18

    move-object/from16 v23, v8

    move-object/from16 v24, v2

    .line 14
    invoke-direct/range {v23 .. v29}, Le/a/l/c/a/x2;-><init>(Ljava/lang/String;IFZFI)V

    .line 15
    iget-object v2, v0, Le/a/l/c/a/h;->b:Le/a/l/a/c;

    const v3, 0x7f08013d

    move/from16 v4, p2

    invoke-interface {v2, v9, v4, v3}, Le/a/l/a/c;->a(Le/a/l/n2/f;ZI)Le/a/l/v2/i/a/a;

    move-result-object v12

    const v2, 0x7f04056d

    .line 16
    invoke-virtual {v0, v1, v2}, Le/a/l/c/a/h;->a(Ljava/lang/Long;I)Le/a/l/c/a/y;

    move-result-object v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x806

    const-string v2, "PROMO_TYPE_GOLD_GIFT"

    move-object v1, v14

    move-object v6, v10

    move-object/from16 v9, p1

    move-object v10, v12

    move-object v12, v13

    move-object/from16 v13, v16

    move-object v15, v14

    move/from16 v14, v17

    .line 17
    invoke-direct/range {v1 .. v14}, Le/a/l/c/a/t$i;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLe/a/l/c/a/x2;Le/a/l/c/a/x2;Le/a/l/c/a/x2;Le/a/l/n2/f;Le/a/l/v2/i/a/a;Le/a/l/c/a/a0;Le/a/l/c/a/y;Lcom/truecaller/premium/premiumusertab/list/AnalyticsAction;I)V

    .line 18
    new-instance v1, Le/a/l/c/a/p;

    .line 19
    iget-object v0, v0, Le/a/l/c/a/h;->a:Le/a/l/c/a/r;

    const v2, 0x7f0405e4

    invoke-virtual {v0, v2}, Le/a/l/c/a/r;->a(I)Le/a/l/c/a/q;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 20
    invoke-direct {v1, v0, v15, v3, v2}, Le/a/l/c/a/p;-><init>(Le/a/l/c/a/q;Le/a/l/c/a/t;Le/a/l/v2/i/b/a;I)V

    return-object v1
.end method

.method public static c(Le/a/l/c/a/h;Ljava/lang/String;Le/a/l/n2/f;ZZLe/a/l/c/a/a0;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Le/a/l/c/a/p;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    and-int/lit8 v1, p8, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v15, v1

    goto :goto_0

    :cond_0
    move/from16 v15, p4

    :goto_0
    and-int/lit8 v1, p8, 0x10

    const/4 v14, 0x0

    if-eqz v1, :cond_1

    move-object v11, v14

    goto :goto_1

    :cond_1
    move-object/from16 v11, p5

    :goto_1
    and-int/lit8 v1, p8, 0x20

    if-eqz v1, :cond_2

    move-object v1, v14

    goto :goto_2

    :cond_2
    move-object/from16 v1, p6

    :goto_2
    and-int/lit8 v2, p8, 0x40

    if-eqz v2, :cond_3

    move-object v2, v14

    goto :goto_3

    :cond_3
    move-object/from16 v2, p7

    .line 1
    :goto_3
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "imageUrl"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "purchaseItem"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v13, Le/a/l/c/a/t$i;

    .line 3
    iget-object v3, v0, Le/a/l/c/a/h;->b:Le/a/l/a/c;

    if-eqz v15, :cond_4

    const v5, 0x7f08013e

    goto :goto_4

    :cond_4
    const v5, 0x7f08013c

    :goto_4
    move/from16 v6, p3

    invoke-interface {v3, v9, v6, v5}, Le/a/l/a/c;->a(Le/a/l/n2/f;ZI)Le/a/l/v2/i/a/a;

    move-result-object v10

    const v16, 0x7f04056d

    if-eqz v15, :cond_5

    move/from16 v3, v16

    goto :goto_5

    :cond_5
    const v3, 0x7f0405a1

    .line 4
    :goto_5
    invoke-virtual {v0, v1, v3}, Le/a/l/c/a/h;->a(Ljava/lang/Long;I)Le/a/l/c/a/y;

    move-result-object v12

    const/16 v17, 0x0

    const/16 v18, 0x87a

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v13

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    move-object/from16 v19, v13

    move-object/from16 v13, v17

    move/from16 v14, v18

    .line 5
    invoke-direct/range {v1 .. v14}, Le/a/l/c/a/t$i;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLe/a/l/c/a/x2;Le/a/l/c/a/x2;Le/a/l/c/a/x2;Le/a/l/n2/f;Le/a/l/v2/i/a/a;Le/a/l/c/a/a0;Le/a/l/c/a/y;Lcom/truecaller/premium/premiumusertab/list/AnalyticsAction;I)V

    .line 6
    new-instance v1, Le/a/l/c/a/p;

    .line 7
    iget-object v0, v0, Le/a/l/c/a/h;->a:Le/a/l/c/a/r;

    if-eqz v15, :cond_6

    const v16, 0x7f0405e4

    :cond_6
    move/from16 v2, v16

    invoke-virtual {v0, v2}, Le/a/l/c/a/r;->a(I)Le/a/l/c/a/q;

    move-result-object v0

    const/4 v2, 0x4

    move-object/from16 v3, v19

    const/4 v4, 0x0

    .line 8
    invoke-direct {v1, v0, v3, v4, v2}, Le/a/l/c/a/p;-><init>(Le/a/l/c/a/q;Le/a/l/c/a/t;Le/a/l/v2/i/b/a;I)V

    return-object v1
.end method

.method public static d(Le/a/l/c/a/h;Le/a/l/n2/f;Ljava/lang/Long;Le/a/l/c/a/a0;ILjava/lang/Object;)Le/a/l/c/a/p;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    const/4 v14, 0x4

    and-int/lit8 v2, p4, 0x4

    const/4 v11, 0x0

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "purchaseItem"

    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v13, Le/a/l/c/a/t$i;

    const v2, 0x7f08088d

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    new-instance v6, Le/a/l/c/a/x2;

    .line 5
    iget-object v2, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    const/4 v12, 0x0

    new-array v4, v12, [Ljava/lang/Object;

    const v5, 0x7f12054e

    invoke-interface {v2, v5, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "resourceProvider.getStri\u2026TabWelcomeOfferCardTitle)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v4, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    const v5, 0x7f060636

    invoke-interface {v4, v5}, Le/a/p5/c0;->a(I)I

    move-result v18

    const/high16 v19, 0x41700000    # 15.0f

    const/16 v20, 0x0

    const/16 v26, 0x0

    const/16 v22, 0x18

    const/16 v21, 0x0

    move-object/from16 v16, v6

    move-object/from16 v17, v2

    .line 7
    invoke-direct/range {v16 .. v22}, Le/a/l/c/a/x2;-><init>(Ljava/lang/String;IFZFI)V

    .line 8
    new-instance v7, Le/a/l/c/a/x2;

    .line 9
    iget-object v2, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    new-array v4, v12, [Ljava/lang/Object;

    const v8, 0x7f12054c

    invoke-interface {v2, v8, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "resourceProvider.getStri\u2026TabWelcomeOfferCardOffer)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v4, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    invoke-interface {v4, v5}, Le/a/p5/c0;->a(I)I

    move-result v29

    const/high16 v30, 0x42040000    # 33.0f

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x10

    move-object/from16 v27, v7

    move-object/from16 v28, v2

    .line 11
    invoke-direct/range {v27 .. v33}, Le/a/l/c/a/x2;-><init>(Ljava/lang/String;IFZFI)V

    .line 12
    new-instance v8, Le/a/l/c/a/x2;

    .line 13
    iget-object v2, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    new-array v4, v12, [Ljava/lang/Object;

    const v10, 0x7f12054d

    invoke-interface {v2, v10, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "resourceProvider.getStri\u2026WelcomeOfferCardSubTitle)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v4, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    invoke-interface {v4, v5}, Le/a/p5/c0;->a(I)I

    move-result v23

    const/high16 v24, 0x41400000    # 12.0f

    const/16 v25, 0x1

    const/16 v27, 0x10

    move-object/from16 v21, v8

    move-object/from16 v22, v2

    .line 15
    invoke-direct/range {v21 .. v27}, Le/a/l/c/a/x2;-><init>(Ljava/lang/String;IFZFI)V

    .line 16
    iget-object v2, v0, Le/a/l/c/a/h;->b:Le/a/l/a/c;

    const v4, 0x7f08013f

    invoke-interface {v2, v9, v12, v4}, Le/a/l/a/c;->a(Le/a/l/n2/f;ZI)Le/a/l/v2/i/a/a;

    move-result-object v10

    const v5, 0x7f04056c

    .line 17
    invoke-virtual {v0, v1, v5}, Le/a/l/c/a/h;->a(Ljava/lang/Long;I)Le/a/l/c/a/y;

    move-result-object v16

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x80c

    const-string v2, "PROMO_TYPE_WELCOME_OFFER"

    move-object v1, v13

    move v15, v5

    move/from16 v5, v17

    move-object/from16 v9, p1

    move v15, v12

    move-object/from16 v12, v16

    move-object/from16 v34, v13

    move-object/from16 v13, v18

    move/from16 v14, v19

    .line 18
    invoke-direct/range {v1 .. v14}, Le/a/l/c/a/t$i;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLe/a/l/c/a/x2;Le/a/l/c/a/x2;Le/a/l/c/a/x2;Le/a/l/n2/f;Le/a/l/v2/i/a/a;Le/a/l/c/a/a0;Le/a/l/c/a/y;Lcom/truecaller/premium/premiumusertab/list/AnalyticsAction;I)V

    .line 19
    new-instance v1, Le/a/l/c/a/p;

    .line 20
    iget-object v0, v0, Le/a/l/c/a/h;->a:Le/a/l/c/a/r;

    .line 21
    new-instance v2, Le/a/l/c/a/q;

    .line 22
    iget-object v0, v0, Le/a/l/c/a/r;->c:Le/a/p5/h0;

    new-array v3, v15, [Ljava/lang/Object;

    const v4, 0x7f1204ec

    invoke-interface {v0, v4, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "resourceProvider.getStri\u2026emiumOfferWelcomeSubtext)"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f08084d

    const v4, 0x7f04056c

    .line 23
    invoke-direct {v2, v3, v0, v4}, Le/a/l/c/a/q;-><init>(ILjava/lang/String;I)V

    move-object/from16 v0, v34

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 24
    invoke-direct {v1, v2, v0, v4, v3}, Le/a/l/c/a/p;-><init>(Le/a/l/c/a/q;Le/a/l/c/a/t;Le/a/l/v2/i/b/a;I)V

    return-object v1
.end method

.method public static e(Le/a/l/c/a/h;Le/a/l/n2/f;ZZLe/a/l/c/a/a0;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Le/a/l/c/a/p;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p4

    :goto_0
    and-int/lit8 v1, p7, 0x10

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v1, p5

    :goto_1
    and-int/lit8 v2, p7, 0x20

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v2, p6

    .line 1
    :goto_2
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "purchaseItem"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v14, Le/a/l/c/a/t$i;

    if-nez p2, :cond_3

    const v3, 0x7f08014a

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x0

    .line 4
    new-instance v6, Le/a/l/c/a/x2;

    .line 5
    iget-object v5, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    if-eqz p2, :cond_4

    const v7, 0x7f12054f

    goto :goto_4

    :cond_4
    const v7, 0x7f120551

    :goto_4
    const/4 v8, 0x0

    new-array v10, v8, [Ljava/lang/Object;

    invoke-interface {v5, v7, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "resourceProvider.getStri\u2026bWinbackCardPremiumTitle)"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v7, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    const v12, 0x7f06054a

    if-eqz p2, :cond_5

    move v13, v12

    goto :goto_5

    :cond_5
    const v13, 0x7f0606cc

    :goto_5
    invoke-interface {v7, v13}, Le/a/p5/c0;->a(I)I

    move-result v18

    const/high16 v19, 0x41700000    # 15.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x18

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    .line 7
    invoke-direct/range {v16 .. v22}, Le/a/l/c/a/x2;-><init>(Ljava/lang/String;IFZFI)V

    .line 8
    new-instance v7, Le/a/l/c/a/x2;

    .line 9
    iget-object v5, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    const v13, 0x7f120550

    new-array v10, v8, [Ljava/lang/Object;

    invoke-interface {v5, v13, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "resourceProvider.getStri\u2026UserTabWinbackCardOffer2)"

    invoke-static {v5, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v10, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    if-eqz p2, :cond_6

    const v13, 0x7f060549

    goto :goto_6

    :cond_6
    const v13, 0x7f0606cc

    :goto_6
    invoke-interface {v10, v13}, Le/a/p5/c0;->a(I)I

    move-result v25

    const/high16 v26, 0x42040000    # 33.0f

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x10

    move-object/from16 v23, v7

    move-object/from16 v24, v5

    .line 11
    invoke-direct/range {v23 .. v29}, Le/a/l/c/a/x2;-><init>(Ljava/lang/String;IFZFI)V

    .line 12
    new-instance v10, Le/a/l/c/a/x2;

    .line 13
    iget-object v5, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    const v13, 0x7f120552

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v5, v13, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "resourceProvider.getStri\u2026erTabWinbackCardSubtitle)"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v8, v0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    if-eqz p2, :cond_7

    goto :goto_7

    :cond_7
    const v12, 0x7f0606cc

    :goto_7
    invoke-interface {v8, v12}, Le/a/p5/c0;->a(I)I

    move-result v18

    const/high16 v19, 0x41400000    # 12.0f

    const/16 v20, 0x1

    const v21, 0x3f333333    # 0.7f

    move-object/from16 v16, v10

    move-object/from16 v17, v5

    .line 15
    invoke-direct/range {v16 .. v21}, Le/a/l/c/a/x2;-><init>(Ljava/lang/String;IFZF)V

    .line 16
    iget-object v5, v0, Le/a/l/c/a/h;->b:Le/a/l/a/c;

    const v8, 0x7f08013e

    move/from16 v12, p3

    invoke-interface {v5, v9, v12, v8}, Le/a/l/a/c;->a(Le/a/l/n2/f;ZI)Le/a/l/v2/i/a/a;

    move-result-object v12

    const v13, 0x7f04056d

    .line 17
    invoke-virtual {v0, v1, v13}, Le/a/l/c/a/h;->a(Ljava/lang/Long;I)Le/a/l/c/a/y;

    move-result-object v16

    .line 18
    sget-object v17, Lcom/truecaller/premium/premiumusertab/list/AnalyticsAction;->WINBACK:Lcom/truecaller/premium/premiumusertab/list/AnalyticsAction;

    const/16 v18, 0x4

    move-object v1, v14

    move/from16 v5, p2

    move-object v8, v10

    move-object/from16 v9, p1

    move-object v10, v12

    move-object/from16 v12, v16

    move/from16 v16, v13

    move-object/from16 v13, v17

    move-object v15, v14

    move/from16 v14, v18

    .line 19
    invoke-direct/range {v1 .. v14}, Le/a/l/c/a/t$i;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLe/a/l/c/a/x2;Le/a/l/c/a/x2;Le/a/l/c/a/x2;Le/a/l/n2/f;Le/a/l/v2/i/a/a;Le/a/l/c/a/a0;Le/a/l/c/a/y;Lcom/truecaller/premium/premiumusertab/list/AnalyticsAction;I)V

    .line 20
    new-instance v1, Le/a/l/c/a/p;

    .line 21
    iget-object v0, v0, Le/a/l/c/a/h;->a:Le/a/l/c/a/r;

    if-eqz p2, :cond_8

    const v13, 0x7f0405e4

    goto :goto_8

    :cond_8
    move/from16 v13, v16

    :goto_8
    invoke-virtual {v0, v13}, Le/a/l/c/a/r;->a(I)Le/a/l/c/a/q;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 22
    invoke-direct {v1, v0, v15, v3, v2}, Le/a/l/c/a/p;-><init>(Le/a/l/c/a/q;Le/a/l/c/a/t;Le/a/l/v2/i/b/a;I)V

    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/Long;I)Le/a/l/c/a/y;
    .locals 10

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 2
    new-instance v0, Le/a/l/c/a/y;

    .line 3
    new-instance v1, Le/a/l/c/a/x;

    .line 4
    iget-object v2, p0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    const v3, 0x7f0606cc

    invoke-interface {v2, v3}, Le/a/p5/c0;->a(I)I

    move-result v2

    .line 5
    iget-object v3, p0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    invoke-interface {v3, p2}, Le/a/p5/h0;->l(I)I

    move-result p2

    .line 6
    invoke-direct {v1, v2, p2}, Le/a/l/c/a/x;-><init>(II)V

    .line 7
    new-instance p2, Le/a/l/c/a/x2;

    .line 8
    iget-object v2, p0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    const v3, 0x7f04068d

    invoke-interface {v2, v3}, Le/a/p5/h0;->l(I)I

    move-result v5

    .line 9
    iget-object v2, p0, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    const v3, 0x7f12051e

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "resourceProvider.getStri\u2026erTabCardOfferEndPreText)"

    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v6, 0x41400000    # 12.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    move-object v3, p2

    .line 10
    invoke-direct/range {v3 .. v9}, Le/a/l/c/a/x2;-><init>(Ljava/lang/String;IFZFI)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 12
    invoke-direct {v0, v1, p2, v2, v3}, Le/a/l/c/a/y;-><init>(Le/a/l/c/a/x;Le/a/l/c/a/x2;J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
