.class public final Le/a/l/v2/i/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/s2/a;

.field public final b:Le/a/p5/h0;

.field public final c:Le/a/l/a/e0;


# direct methods
.method public constructor <init>(Le/a/l/s2/a;Le/a/p5/h0;Le/a/l/a/e0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "firebasePersonalisationManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priceFormatter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/v2/i/a/c;->a:Le/a/l/s2/a;

    iput-object p2, p0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    iput-object p3, p0, Le/a/l/v2/i/a/c;->c:Le/a/l/a/e0;

    return-void
.end method

.method public static synthetic g(Le/a/l/v2/i/a/c;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/p2/s1$b;ZZI)Le/a/l/v2/i/a/b;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Le/a/l/v2/i/a/c;->f(Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/p2/s1$b;ZZ)Le/a/l/v2/i/a/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Le/a/l/n2/f;Le/a/l/n2/f;)Le/a/l/v2/i/a/b;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/l/v2/i/a/c;->j(Le/a/l/n2/f;Le/a/l/n2/f;)I

    move-result p2

    .line 2
    invoke-virtual {p0, p1}, Le/a/l/v2/i/a/c;->e(Le/a/l/n2/f;)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v1, p0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v3, 0x7f1204e8

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface {v1, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    if-eqz v4, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    const/4 v4, 0x0

    .line 4
    iget-object p2, p0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v0, 0x7f040680

    invoke-interface {p2, v0}, Le/a/p5/h0;->l(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const p2, 0x7f081768

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6
    invoke-virtual {p0, p1}, Le/a/l/v2/i/a/c;->c(Le/a/l/n2/f;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x64

    .line 7
    new-instance v0, Le/a/l/v2/i/a/b;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Le/a/l/v2/i/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/String;I)V

    :cond_2
    return-object v0
.end method

.method public final b(Le/a/l/n2/f;ZZ)Le/a/l/v2/i/a/b;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Le/a/l/v2/i/a/c;->a:Le/a/l/s2/a;

    invoke-interface {v2}, Le/a/l/s2/a;->c()Z

    move-result v2

    .line 2
    iget-object v3, v0, Le/a/l/v2/i/a/c;->a:Le/a/l/s2/a;

    invoke-interface {v3}, Le/a/l/s2/a;->b()Lcom/truecaller/premium/personalisation/PersonalisationPromo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_b

    if-eqz p3, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 3
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v7, 0x3

    if-ne v2, v7, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :cond_2
    const/16 v2, 0x1e

    goto :goto_1

    :cond_3
    const/16 v2, 0xa

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v6

    .line 5
    :goto_1
    iget-wide v7, v1, Le/a/l/n2/f;->e:J

    long-to-double v7, v7

    int-to-double v9, v2

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v11, v9

    div-double/2addr v7, v11

    double-to-int v7, v7

    const v8, 0xf4240

    .line 6
    div-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    if-lez v2, :cond_5

    .line 7
    iget-object v8, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v9, 0x7f1204d3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v6

    .line 8
    invoke-virtual/range {p1 .. p1}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 9
    invoke-interface {v8, v9, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 10
    :cond_5
    iget-object v3, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v7, 0x7f1204d1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-interface {v3, v7, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v6, v1

    const-string v1, "when {\n            disco\u2026.obtainPrice())\n        }"

    .line 11
    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v1, Le/a/l/v2/i/a/b;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-eqz p2, :cond_6

    .line 14
    iget-object v2, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v3, 0x7f060625

    invoke-interface {v2, v3}, Le/a/p5/c0;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v9, v2

    goto :goto_3

    :cond_6
    move-object v9, v4

    :goto_3
    const/4 v11, 0x0

    if-eqz p2, :cond_7

    const v2, 0x7f081767

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_7
    move-object v10, v4

    const/4 v13, 0x0

    const/16 v14, 0xa6

    move-object v5, v1

    .line 16
    invoke-direct/range {v5 .. v14}, Le/a/l/v2/i/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/String;I)V

    move-object v4, v1

    goto :goto_5

    .line 17
    :cond_8
    new-instance v2, Le/a/l/v2/i/a/b;

    .line 18
    invoke-virtual/range {p0 .. p1}, Le/a/l/v2/i/a/c;->e(Le/a/l/n2/f;)Ljava/lang/String;

    move-result-object v16

    if-eqz p2, :cond_9

    .line 19
    iget-object v3, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v5, 0x7f040680

    invoke-interface {v3, v5}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_4

    :cond_9
    move-object/from16 v19, v4

    :goto_4
    if-eqz p2, :cond_a

    const v3, 0x7f081768

    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_a
    move-object/from16 v20, v4

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 21
    invoke-virtual/range {p0 .. p1}, Le/a/l/v2/i/a/c;->c(Le/a/l/n2/f;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x66

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v15, v2

    .line 22
    invoke-direct/range {v15 .. v24}, Le/a/l/v2/i/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/String;I)V

    move-object v4, v2

    :cond_b
    :goto_5
    return-object v4
.end method

.method public final c(Le/a/l/n2/f;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p1, Le/a/l/n2/f;->j:Lw3/b/a/u;

    if-eqz v0, :cond_4

    .line 2
    iget v0, p1, Le/a/l/n2/f;->i:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const v1, 0x7f120556

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v3, :cond_3

    const/4 v6, 0x6

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    const-string v2, "resourceProvider.getStri\u2026yIntroductoryNote, price)"

    if-eq v0, v1, :cond_1

    if-eq v0, v6, :cond_1

    .line 5
    iget-object v0, p0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v1, 0x7f1204ce

    new-array v3, v5, [Ljava/lang/Object;

    .line 6
    iget-object p1, p1, Le/a/l/n2/f;->c:Ljava/lang/String;

    aput-object p1, v3, v4

    .line 7
    invoke-interface {v0, v1, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v1, 0x7f12055b

    new-array v3, v5, [Ljava/lang/Object;

    .line 9
    iget-object p1, p1, Le/a/l/n2/f;->c:Ljava/lang/String;

    aput-object p1, v3, v4

    .line 10
    invoke-interface {v0, v1, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v2, v3, [Ljava/lang/Object;

    .line 12
    iget-object p1, p1, Le/a/l/n2/f;->c:Ljava/lang/String;

    aput-object p1, v2, v4

    .line 13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-interface {v0, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ATION_MONTHS_HALF_YEARLY)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    iget-object p1, p1, Le/a/l/n2/f;->c:Ljava/lang/String;

    aput-object p1, v3, v4

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-interface {v0, v1, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026URATION_MONTHS_QUARTERLY)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final d(Le/a/l/n2/f;Le/a/l/n2/f;)Le/a/l/v2/i/a/b;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/l/v2/i/a/c;->j(Le/a/l/n2/f;Le/a/l/n2/f;)I

    move-result p2

    .line 2
    invoke-virtual {p0, p1}, Le/a/l/v2/i/a/c;->e(Le/a/l/n2/f;)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v1, p0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v3, 0x7f1204e8

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface {v1, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    if-eqz v4, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    const/4 v4, 0x0

    .line 4
    iget-object p2, p0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v0, 0x7f040680

    invoke-interface {p2, v0}, Le/a/p5/h0;->l(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const p2, 0x7f081768

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6
    invoke-virtual {p0, p1}, Le/a/l/v2/i/a/c;->c(Le/a/l/n2/f;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x64

    .line 7
    new-instance v0, Le/a/l/v2/i/a/b;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Le/a/l/v2/i/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/String;I)V

    :cond_2
    return-object v0
.end method

.method public final e(Le/a/l/n2/f;)Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p1, Le/a/l/n2/f;->j:Lw3/b/a/u;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 2
    iget v3, p1, Le/a/l/n2/f;->i:I

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v3, p0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    .line 4
    invoke-virtual {v0}, Lw3/b/a/u;->x()I

    move-result v4

    const v5, 0x7f10002d

    const v6, 0x7f10002f

    if-lez v4, :cond_1

    move v0, v6

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lw3/b/a/u;->v()I

    move-result v4

    if-lez v4, :cond_2

    move v0, v5

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Lw3/b/a/u;->w()I

    move-result v0

    if-lez v0, :cond_3

    const v0, 0x7f10002e

    goto :goto_0

    :cond_3
    const v0, 0x7f10002b

    .line 7
    :goto_0
    iget-object v4, p1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eq v4, v8, :cond_5

    if-eq v4, v9, :cond_4

    .line 9
    iget v4, p1, Le/a/l/n2/f;->i:I

    goto :goto_1

    :cond_4
    move v4, v7

    goto :goto_1

    :cond_5
    move v4, v9

    :goto_1
    new-array v10, v2, [Ljava/lang/Object;

    .line 10
    invoke-interface {v3, v0, v4, v10}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    sget-object v3, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 12
    invoke-static {v0, v3}, Le/a/p5/g0;->A(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "StringUtils.capitalizeFi\u2026.getAppLocale()\n        )"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v4, p0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    .line 14
    iget-object v10, p1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 15
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_6

    if-eq v10, v7, :cond_6

    goto :goto_2

    :cond_6
    move v5, v6

    :goto_2
    new-array v6, v2, [Ljava/lang/Object;

    .line 16
    invoke-interface {v4, v5, v1, v6}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 17
    sget-object v5, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 18
    invoke-static {v4, v5}, Le/a/p5/g0;->A(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v3, p1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const v5, 0x7f1204c7

    const-string v6, "resourceProvider.getStri\u2026introPeriod\n            )"

    if-eq v3, v8, :cond_8

    if-eq v3, v9, :cond_7

    .line 21
    iget-object v3, p0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v5, 0x7f1204c8

    new-array v7, v11, [Ljava/lang/Object;

    .line 22
    iget-object v10, p1, Le/a/l/n2/f;->f:Ljava/lang/String;

    aput-object v10, v7, v2

    aput-object v4, v7, v1

    .line 23
    iget p1, p1, Le/a/l/n2/f;->i:I

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v8

    aput-object v0, v7, v9

    .line 25
    invoke-interface {v3, v5, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 26
    :cond_7
    iget-object v3, p0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v4, v9, [Ljava/lang/Object;

    .line 27
    iget-object v9, p1, Le/a/l/n2/f;->f:Ljava/lang/String;

    aput-object v9, v4, v2

    .line 28
    iget p1, p1, Le/a/l/n2/f;->i:I

    mul-int/2addr p1, v7

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    aput-object v0, v4, v8

    .line 30
    invoke-interface {v3, v5, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 31
    :cond_8
    iget-object v3, p0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v4, v9, [Ljava/lang/Object;

    .line 32
    iget-object v7, p1, Le/a/l/n2/f;->f:Ljava/lang/String;

    aput-object v7, v4, v2

    .line 33
    iget p1, p1, Le/a/l/n2/f;->i:I

    mul-int/2addr p1, v9

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    aput-object v0, v4, v8

    .line 35
    invoke-interface {v3, v5, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object p1

    .line 36
    :cond_9
    :goto_4
    iget-object v0, p0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    invoke-virtual {p0, p1}, Le/a/l/v2/i/a/c;->i(Le/a/l/n2/f;)I

    move-result v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-interface {v0, v3, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026Res(), sub.obtainPrice())"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f(Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/p2/s1$b;ZZ)Le/a/l/v2/i/a/b;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "dataFetched"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v2, Le/a/l/p2/s1$b;->u:Le/a/l/n2/f;

    .line 2
    iget-object v4, v0, Le/a/l/v2/i/a/c;->a:Le/a/l/s2/a;

    invoke-interface {v4}, Le/a/l/s2/a;->c()Z

    move-result v4

    .line 3
    iget-boolean v5, v2, Le/a/l/p2/s1$b;->c:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 4
    iget-boolean v5, v2, Le/a/l/p2/s1$b;->b:Z

    if-nez v5, :cond_0

    .line 5
    new-instance v6, Le/a/l/v2/i/a/b;

    .line 6
    iget-object v1, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v2, v7, [Ljava/lang/Object;

    const v3, 0x7f120515

    invoke-interface {v1, v3, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "resourceProvider.getStri\u2026remiumUpgradeToGoldTitle)"

    invoke-static {v9, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v2, v7, [Ljava/lang/Object;

    const v3, 0x7f120514

    invoke-interface {v1, v3, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 8
    iget-object v1, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v2, 0x7f0405ea

    invoke-interface {v1, v2}, Le/a/p5/h0;->l(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xd2

    move-object v8, v6

    .line 9
    invoke-direct/range {v8 .. v17}, Le/a/l/v2/i/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_0
    if-nez v1, :cond_1

    goto/16 :goto_6

    .line 10
    :cond_1
    iget-boolean v2, v2, Le/a/l/p2/s1$b;->b:Z

    const v5, 0x7f081767

    const v8, 0x7f060625

    const v9, 0x7f1204e8

    const/4 v10, 0x1

    if-eqz v2, :cond_7

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v3, p2

    .line 11
    :goto_0
    invoke-virtual {v0, v1, v3}, Le/a/l/v2/i/a/c;->j(Le/a/l/n2/f;Le/a/l/n2/f;)I

    move-result v2

    if-eqz p5, :cond_3

    .line 12
    iget-object v3, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v4, 0x7f120562

    new-array v11, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 13
    :cond_3
    iget-object v3, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v4, 0x7f120560

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-interface {v3, v4, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v12, v3

    const-string v3, "when {\n                t\u2026ainPrice())\n            }"

    .line 14
    invoke-static {v12, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_4

    .line 15
    iget-object v3, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v4, 0x7f120561

    new-array v11, v10, [Ljava/lang/Object;

    .line 16
    invoke-virtual/range {p1 .. p1}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v7

    .line 17
    invoke-interface {v3, v4, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_2

    :cond_4
    move-object v14, v6

    .line 18
    :goto_2
    iget-object v1, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v1, v9, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-lez v2, :cond_5

    move v7, v10

    :cond_5
    if-eqz v7, :cond_6

    move-object v13, v1

    goto :goto_3

    :cond_6
    move-object v13, v6

    .line 19
    :goto_3
    iget-object v1, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    invoke-interface {v1, v8}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xe0

    .line 21
    new-instance v6, Le/a/l/v2/i/a/b;

    move-object v11, v6

    invoke-direct/range {v11 .. v20}, Le/a/l/v2/i/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_7
    if-eqz v4, :cond_8

    .line 22
    new-instance v6, Le/a/l/v2/i/a/b;

    .line 23
    iget-object v2, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    const v1, 0x7f12055f

    invoke-interface {v2, v1, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026bscription.obtainPrice())"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v2, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v3, 0x7f040680

    invoke-interface {v2, v3}, Le/a/p5/h0;->l(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const v2, 0x7f081768

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0xe6

    move-object/from16 v21, v6

    move-object/from16 v22, v1

    .line 26
    invoke-direct/range {v21 .. v30}, Le/a/l/v2/i/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/String;I)V

    goto :goto_6

    .line 27
    :cond_8
    invoke-virtual/range {p0 .. p2}, Le/a/l/v2/i/a/c;->j(Le/a/l/n2/f;Le/a/l/n2/f;)I

    move-result v2

    .line 28
    invoke-virtual/range {p0 .. p1}, Le/a/l/v2/i/a/c;->e(Le/a/l/n2/f;)Ljava/lang/String;

    move-result-object v12

    .line 29
    iget-object v3, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v7

    invoke-interface {v3, v9, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-lez v2, :cond_9

    move v7, v10

    :cond_9
    if-eqz v7, :cond_a

    move-object v13, v3

    goto :goto_4

    :cond_a
    move-object v13, v6

    :goto_4
    const/4 v14, 0x0

    if-eqz p4, :cond_b

    .line 30
    iget-object v2, v0, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    invoke-interface {v2, v8}, Le/a/p5/c0;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v15, v2

    goto :goto_5

    :cond_b
    move-object v15, v6

    :goto_5
    if-eqz p4, :cond_c

    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_c
    move-object/from16 v16, v6

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 32
    invoke-virtual/range {p0 .. p1}, Le/a/l/v2/i/a/c;->c(Le/a/l/n2/f;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    .line 33
    new-instance v6, Le/a/l/v2/i/a/b;

    move-object v11, v6

    invoke-direct/range {v11 .. v20}, Le/a/l/v2/i/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/String;I)V

    :goto_6
    return-object v6
.end method

.method public final h(Le/a/l/n2/f;)I
    .locals 0

    .line 1
    iget-object p1, p1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :pswitch_0
    const/16 p1, 0xc

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x1

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final i(Le/a/l/n2/f;)I
    .locals 1

    .line 1
    iget-object p1, p1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const p1, 0x7f1204d1

    goto :goto_0

    :cond_0
    const p1, 0x7f12055f

    goto :goto_0

    :cond_1
    const p1, 0x7f1204be

    goto :goto_0

    :cond_2
    const p1, 0x7f1204f4

    :goto_0
    return p1
.end method

.method public final j(Le/a/l/n2/f;Le/a/l/n2/f;)I
    .locals 4

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Le/a/l/n2/f;->c()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, p1}, Le/a/l/v2/i/a/c;->h(Le/a/l/n2/f;)I

    move-result p1

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-double v0, v0

    .line 3
    invoke-virtual {p2}, Le/a/l/n2/f;->c()J

    move-result-wide v2

    .line 4
    invoke-virtual {p0, p2}, Le/a/l/v2/i/a/c;->h(Le/a/l/n2/f;)I

    move-result p1

    int-to-long p1, p1

    div-long/2addr v2, p1

    long-to-double p1, v2

    div-double/2addr v0, p1

    const/16 p1, 0x64

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int p2, v0

    sub-int/2addr p1, p2

    return p1
.end method
