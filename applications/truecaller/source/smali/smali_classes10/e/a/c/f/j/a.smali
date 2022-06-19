.class public final Le/a/c/f/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/f/j/b;

.field public final b:Le/a/c/f/j/d;

.field public final c:Le/a/c/f/j/c;


# direct methods
.method public constructor <init>(Le/a/c/f/j/b;Le/a/c/f/j/d;Le/a/c/f/j/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "billActionBinder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "travelActionBinder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otpActionBinder"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/f/j/a;->a:Le/a/c/f/j/b;

    iput-object p2, p0, Le/a/c/f/j/a;->b:Le/a/c/f/j/d;

    iput-object p3, p0, Le/a/c/f/j/a;->c:Le/a/c/f/j/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/insights/models/InsightsDomain;Le/a/c/r/j/b;Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsDomain;",
            "Le/a/c/r/j/b;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Le/a/c/r/j/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    sget-object v3, Ls1/u/s;->a:Ls1/u/s;

    const-string v4, "domain"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "analyticsContext"

    invoke-static {v8, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v6, v1, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    const/4 v7, 0x0

    const-string v9, "State not supported yet"

    const/4 v10, 0x1

    if-eqz v6, :cond_4

    iget-object v6, v0, Le/a/c/f/j/a;->a:Le/a/c/f/j/b;

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    .line 2
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v6, v1, v8}, Le/a/c/f/j/b;->b(Lcom/truecaller/insights/models/InsightsDomain$Bill;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_2

    .line 4
    :cond_0
    iget v4, v2, Le/a/c/r/j/b;->d:I

    if-eq v4, v10, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    .line 5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-array v2, v7, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-virtual {v6, v1, v2, v8}, Le/a/c/f/j/b;->a(Lcom/truecaller/insights/models/InsightsDomain$Bill;Le/a/c/r/j/b;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-virtual {v6, v1, v2, v8}, Le/a/c/f/j/b;->a(Lcom/truecaller/insights/models/InsightsDomain$Bill;Le/a/c/r/j/b;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_2

    .line 8
    :cond_3
    invoke-virtual {v6, v1, v8}, Le/a/c/f/j/b;->b(Lcom/truecaller/insights/models/InsightsDomain$Bill;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_2

    .line 9
    :cond_4
    instance-of v6, v1, Lcom/truecaller/insights/models/InsightsDomain$f;

    const/4 v11, 0x0

    if-eqz v6, :cond_8

    iget-object v6, v0, Le/a/c/f/j/a;->b:Le/a/c/f/j/d;

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain$f;

    .line 10
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 11
    iget v2, v2, Le/a/c/r/j/b;->d:I

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :cond_5
    if-nez v11, :cond_6

    .line 13
    invoke-virtual {v6, v1, v8}, Le/a/c/f/j/d;->a(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_2

    .line 14
    :cond_6
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v10, :cond_7

    .line 15
    invoke-virtual {v6, v1, v8}, Le/a/c/f/j/d;->a(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_2

    .line 16
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-array v2, v7, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 17
    :cond_8
    instance-of v6, v1, Lcom/truecaller/insights/models/InsightsDomain$e;

    if-eqz v6, :cond_e

    iget-object v6, v0, Le/a/c/f/j/a;->c:Le/a/c/f/j/c;

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain$e;

    .line 18
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_9

    .line 19
    iget v2, v2, Le/a/c/r/j/b;->d:I

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_9
    move-object v2, v11

    :goto_0
    if-nez v2, :cond_c

    .line 21
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-static {v1}, Le/a/m0/a1$k;->x0(Lcom/truecaller/insights/models/InsightsDomain$e;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    .line 23
    :cond_a
    new-instance v11, Le/a/c/r/j/a$f$a;

    iget-object v2, v6, Le/a/c/f/j/c;->a:Landroid/content/Context;

    sget v3, Lcom/truecaller/insights/R$string;->copy_otp:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v2, "context.getString(R.string.copy_otp)"

    invoke-static {v14, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$e;->getMsgId()J

    move-result-wide v15

    .line 24
    iget-object v2, v1, Lcom/truecaller/insights/models/InsightsDomain$e;->i:Lcom/truecaller/insights/models/DomainOrigin;

    .line 25
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$e;->c()Ljava/lang/String;

    move-result-object v18

    iget-object v3, v6, Le/a/c/f/j/c;->a:Landroid/content/Context;

    const/16 v20, 0x0

    const/16 v21, 0x20

    move-object v13, v11

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v13 .. v21}, Le/a/c/r/j/a$f$a;-><init>(Ljava/lang/String;JLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Landroid/content/Context;Le/a/c/r/j/c;I)V

    :goto_1
    if-eqz v11, :cond_b

    .line 26
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_b
    new-instance v11, Le/a/c/r/j/a$c;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$e;->getMsgId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$e;->getSender()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$e;->isIM()Z

    move-result v6

    .line 28
    iget-object v7, v1, Lcom/truecaller/insights/models/InsightsDomain$e;->i:Lcom/truecaller/insights/models/DomainOrigin;

    const/4 v9, 0x0

    const/16 v10, 0x40

    move-object v1, v11

    move-object/from16 v8, p3

    .line 29
    invoke-direct/range {v1 .. v10}, Le/a/c/r/j/a$c;-><init>(JLjava/lang/String;Ljava/lang/String;ZLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Le/a/c/r/j/c;I)V

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v12

    goto :goto_2

    .line 30
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v10, :cond_d

    goto :goto_2

    .line 31
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-array v2, v7, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    :goto_2
    return-object v3

    .line 32
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ActionBinder not binded yet for domain "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
