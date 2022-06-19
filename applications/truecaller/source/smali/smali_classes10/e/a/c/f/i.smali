.class public final Le/a/c/f/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/f/h;


# instance fields
.field public final a:Le/a/c/f/g;

.field public final b:Le/a/c/f/b;

.field public final c:Le/a/c/f/a;

.field public final d:Le/a/c/f/f;

.field public final e:Le/a/c/f/c;

.field public final f:Le/a/c/f/e;


# direct methods
.method public constructor <init>(Le/a/c/f/g;Le/a/c/f/b;Le/a/c/f/a;Le/a/c/f/f;Le/a/c/f/c;Le/a/c/f/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "travelUiSchemaBinder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billUiSchemaBinder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bankUiSchemaBinder"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otpUiSchemaBinder"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deliverySchemaBinder"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventSchemaBinder"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/f/i;->a:Le/a/c/f/g;

    iput-object p2, p0, Le/a/c/f/i;->b:Le/a/c/f/b;

    iput-object p3, p0, Le/a/c/f/i;->c:Le/a/c/f/a;

    iput-object p4, p0, Le/a/c/f/i;->d:Le/a/c/f/f;

    iput-object p5, p0, Le/a/c/f/i;->e:Le/a/c/f/c;

    iput-object p6, p0, Le/a/c/f/i;->f:Le/a/c/f/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/insights/models/InsightsDomain;Ljava/util/List;)Le/a/c/r/b;
    .locals 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsDomain;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Le/a/c/r/b;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    const-string v2, "domain"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "properties"

    invoke-static {v15, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v4, v0, Lcom/truecaller/insights/models/InsightsDomain$f;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v8, "uiTags"

    const-wide/16 v32, -0x1

    const-string v7, "<set-?>"

    const-string v13, ""

    if-eqz v4, :cond_38

    iget-object v12, v1, Le/a/c/f/i;->a:Le/a/c/f/g;

    move-object v11, v0

    check-cast v11, Lcom/truecaller/insights/models/InsightsDomain$f;

    move-object/from16 v30, v11

    .line 2
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v6, Le/a/c/r/b$f$a;

    move-object v2, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v14, v0

    move-object v9, v0

    move-object v10, v0

    move-object/from16 v34, v6

    move-object v6, v0

    move-object/from16 v35, v11

    move-object v11, v0

    move-object/from16 v36, v12

    move-object v12, v0

    move-object/from16 v37, v13

    move-object v13, v0

    move-object/from16 v38, v7

    move-object v7, v0

    move-object/from16 v39, v8

    move-object v8, v0

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v31, 0x37fffff

    move-object/from16 v27, p2

    invoke-direct/range {v2 .. v31}, Le/a/c/r/b$f$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;ILjava/lang/String;IZLjava/util/List;ZLw3/b/a/b;Lcom/truecaller/insights/models/InsightsDomain$f;I)V

    .line 4
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v3, "train"

    const-string v4, "(this as java.lang.String).toLowerCase(locale)"

    const-string v5, "Locale.ROOT"

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    const-string v7, "value"

    packed-switch v0, :pswitch_data_0

    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v11, v36

    move-object/from16 v13, v37

    move-object/from16 v9, v38

    goto :goto_1

    :pswitch_0
    move-object/from16 v8, v35

    .line 6
    iget-object v0, v8, Lcom/truecaller/insights/models/InsightsDomain$f;->a:Lw3/b/a/b;

    move-object/from16 v9, v38

    .line 7
    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, v34

    .line 8
    iput-object v0, v10, Le/a/c/r/b$f$a;->z:Lw3/b/a/b;

    move-object/from16 v11, v36

    move-object/from16 v13, v37

    :goto_1
    move-object/from16 v12, v39

    goto/16 :goto_7

    :pswitch_1
    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v38

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v7, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v11, v36

    invoke-virtual {v11, v8, v3}, Le/a/c/f/g;->a(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;)Le/a/c/f/k/f;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x5b0b983

    if-eq v4, v5, :cond_1

    const v5, 0x1e1abdca

    if-eq v4, v5, :cond_0

    goto :goto_2

    :cond_0
    const-string v4, "reschedule"

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    sget-object v3, Le/a/c/f/k/f$e;->d:Le/a/c/f/k/f$e;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const-string v4, "delay"

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    sget-object v3, Le/a/c/f/k/f$c;->d:Le/a/c/f/k/f$c;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    move-object/from16 v12, v39

    .line 16
    invoke-static {v0, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object v0, v10, Le/a/c/r/b$f$a;->s:Ljava/util/List;

    goto :goto_3

    :pswitch_2
    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v11, v36

    move-object/from16 v9, v38

    move-object/from16 v12, v39

    .line 18
    iget-boolean v0, v8, Lcom/truecaller/insights/models/InsightsDomain$f;->B:Z

    .line 19
    iput-boolean v0, v10, Le/a/c/r/b$f$a;->w:Z

    goto :goto_3

    :pswitch_3
    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v11, v36

    move-object/from16 v9, v38

    move-object/from16 v12, v39

    .line 20
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {v0, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object v0, v10, Le/a/c/r/b$f$a;->p:Ljava/lang/String;

    :goto_3
    move-object/from16 v13, v37

    goto/16 :goto_7

    :pswitch_4
    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v11, v36

    move-object/from16 v13, v37

    move-object/from16 v9, v38

    move-object/from16 v12, v39

    .line 23
    invoke-virtual {v11, v8, v10, v13}, Le/a/c/f/g;->c(Lcom/truecaller/insights/models/InsightsDomain$f;Le/a/c/r/b$f$a;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_5
    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v11, v36

    move-object/from16 v13, v37

    move-object/from16 v9, v38

    move-object/from16 v12, v39

    .line 24
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v7, 0x697f208

    const-string v14, " \u2794 "

    if-eq v5, v7, :cond_3

    goto :goto_4

    .line 26
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toUpperCase()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Le/a/c/r/b$f$a;->b(Ljava/lang/String;)Le/a/c/r/b$f$a;

    goto/16 :goto_7

    .line 27
    :cond_4
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Le/a/c/p/a;->o3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v4}, Le/a/c/p/a;->o3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Le/a/c/r/b$f$a;->b(Ljava/lang/String;)Le/a/c/r/b$f$a;

    goto/16 :goto_7

    .line 28
    :cond_5
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_11

    const-string v0, "PNR: "

    .line 29
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Le/a/c/r/b$f$a;->b(Ljava/lang/String;)Le/a/c/r/b$f$a;

    goto/16 :goto_7

    :pswitch_6
    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v11, v36

    move-object/from16 v13, v37

    move-object/from16 v9, v38

    move-object/from16 v12, v39

    .line 30
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->getSender()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object v0, v10, Le/a/c/r/b$f$a;->r:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_7
    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v11, v36

    move-object/from16 v13, v37

    move-object/from16 v9, v38

    move-object/from16 v12, v39

    .line 33
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->getMsgId()J

    move-result-wide v3

    .line 34
    iput-wide v3, v10, Le/a/c/r/b$f$a;->q:J

    goto/16 :goto_7

    :pswitch_8
    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v11, v36

    move-object/from16 v13, v37

    move-object/from16 v9, v38

    move-object/from16 v12, v39

    .line 35
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {v0, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object v0, v10, Le/a/c/r/b$f$a;->o:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_9
    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v11, v36

    move-object/from16 v13, v37

    move-object/from16 v9, v38

    move-object/from16 v12, v39

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 38
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v0

    if-eqz v5, :cond_7

    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object v5

    const-string v7, "bus"

    invoke-static {v5, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    const-string v3, "Boarding Point"

    .line 39
    iput-object v3, v10, Le/a/c/r/b$f$a;->m:Ljava/lang/String;

    .line 40
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4, v0}, Le/a/c/p/a;->o3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 41
    iput-object v0, v10, Le/a/c/r/b$f$a;->n:Ljava/lang/String;

    goto/16 :goto_7

    .line 42
    :cond_7
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v0

    if-eqz v5, :cond_8

    const-string v3, "Passenger"

    .line 43
    iput-object v3, v10, Le/a/c/r/b$f$a;->m:Ljava/lang/String;

    .line 44
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4, v0}, Le/a/c/p/a;->o3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 45
    iput-object v0, v10, Le/a/c/r/b$f$a;->n:Ljava/lang/String;

    goto/16 :goto_7

    .line 46
    :cond_8
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v0

    if-eqz v5, :cond_11

    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_9
    const-string v3, "Class"

    .line 47
    iput-object v3, v10, Le/a/c/r/b$f$a;->m:Ljava/lang/String;

    .line 48
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->b()Ljava/lang/String;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v3}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v7, "Locale.getDefault()"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x64f

    if-eq v5, v6, :cond_d

    const/16 v6, 0x661

    if-eq v5, v6, :cond_c

    const/16 v6, 0x66e

    if-eq v5, v6, :cond_b

    const/16 v6, 0xa59

    if-eq v5, v6, :cond_a

    goto :goto_5

    :cond_a
    const-string v5, "SL"

    .line 49
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v0, "Sleeper"

    goto :goto_6

    :cond_b
    const-string v5, "3A"

    .line 50
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v0, "Third A/C"

    goto :goto_6

    :cond_c
    const-string v5, "2S"

    .line 51
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v0, "Second Sitting"

    goto :goto_6

    :cond_d
    const-string v5, "2A"

    .line 52
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v0, "Second A/C"

    goto :goto_6

    .line 53
    :cond_e
    :goto_5
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4, v0}, Le/a/c/p/a;->o3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_6
    iput-object v0, v10, Le/a/c/r/b$f$a;->n:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_a
    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v11, v36

    move-object/from16 v13, v37

    move-object/from16 v9, v38

    move-object/from16 v12, v39

    const/4 v0, 0x0

    .line 55
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->g()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object v0, v3

    :cond_f
    if-eqz v0, :cond_11

    const-string v3, "Seat"

    .line 57
    iput-object v3, v10, Le/a/c/r/b$f$a;->k:Ljava/lang/String;

    .line 58
    iput-object v0, v10, Le/a/c/r/b$f$a;->l:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_b
    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v11, v36

    move-object/from16 v13, v37

    move-object/from16 v9, v38

    move-object/from16 v12, v39

    const/4 v3, 0x0

    .line 59
    :try_start_0
    invoke-virtual {v11, v8, v10}, Le/a/c/f/g;->e(Lcom/truecaller/insights/models/InsightsDomain$f;Le/a/c/r/b$f$a;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 60
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 61
    invoke-virtual {v0, v4, v3}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_c
    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v11, v36

    move-object/from16 v13, v37

    move-object/from16 v9, v38

    move-object/from16 v12, v39

    const/4 v3, 0x0

    .line 62
    :try_start_1
    invoke-virtual {v11, v8, v10}, Le/a/c/f/g;->b(Lcom/truecaller/insights/models/InsightsDomain$f;Le/a/c/r/b$f$a;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 63
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 64
    invoke-virtual {v0, v4, v3}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_d
    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v11, v36

    move-object/from16 v13, v37

    move-object/from16 v9, v38

    move-object/from16 v12, v39

    .line 65
    invoke-virtual {v11, v8, v10, v13}, Le/a/c/f/g;->d(Lcom/truecaller/insights/models/InsightsDomain$f;Le/a/c/r/b$f$a;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_e
    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v11, v36

    move-object/from16 v13, v37

    move-object/from16 v9, v38

    move-object/from16 v12, v39

    const/4 v0, 0x0

    .line 66
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->e()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    move-object v0, v3

    :cond_10
    if-eqz v0, :cond_11

    const-string v3, "PNR"

    .line 68
    iput-object v3, v10, Le/a/c/r/b$f$a;->i:Ljava/lang/String;

    .line 69
    iput-object v0, v10, Le/a/c/r/b$f$a;->j:Ljava/lang/String;

    goto :goto_7

    :pswitch_f
    move-object/from16 v10, v34

    move-object/from16 v8, v35

    move-object/from16 v11, v36

    move-object/from16 v13, v37

    move-object/from16 v9, v38

    move-object/from16 v12, v39

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 70
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v0}, Le/a/c/p/a;->o3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object v4, v10, Le/a/c/r/b$f$a;->b:Ljava/lang/String;

    .line 73
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$f;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v0}, Le/a/c/p/a;->o3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object v0, v10, Le/a/c/r/b$f$a;->c:Ljava/lang/String;

    :cond_11
    :goto_7
    move-object/from16 v35, v8

    move-object/from16 v38, v9

    move-object/from16 v34, v10

    move-object/from16 v36, v11

    move-object/from16 v39, v12

    move-object/from16 v37, v13

    goto/16 :goto_0

    :cond_12
    move-object/from16 v10, v34

    move-object/from16 v11, v36

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 76
    iget-object v3, v11, Le/a/c/f/g;->a:Le/a/c/b/j;

    invoke-interface {v3}, Le/a/c/b/j;->c0()Z

    move-result v3

    .line 77
    iget-object v4, v10, Le/a/c/r/b$f$a;->b:Ljava/lang/String;

    if-eqz v4, :cond_14

    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    goto :goto_9

    :cond_14
    :goto_8
    move v4, v0

    :goto_9
    if-nez v4, :cond_17

    iget-object v4, v10, Le/a/c/r/b$f$a;->c:Ljava/lang/String;

    if-eqz v4, :cond_16

    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_a

    :cond_15
    const/4 v4, 0x0

    goto :goto_b

    :cond_16
    :goto_a
    move v4, v0

    :goto_b
    if-eqz v4, :cond_1a

    .line 78
    :cond_17
    iget-object v4, v10, Le/a/c/r/b$f$a;->x:Ljava/util/List;

    sget-object v5, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->LOCATION:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 79
    iget-object v4, v10, Le/a/c/r/b$f$a;->j:Ljava/lang/String;

    if-eqz v4, :cond_19

    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_c

    :cond_18
    const/4 v4, 0x0

    goto :goto_d

    :cond_19
    :goto_c
    move v4, v0

    :goto_d
    if-eqz v4, :cond_1a

    .line 80
    iget-object v4, v10, Le/a/c/r/b$f$a;->x:Ljava/util/List;

    sget-object v5, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->PNR:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 81
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v3, Lcom/truecaller/log/UnmutedException$j;

    const-string v4, "location and pnr both are blank for travel"

    invoke-direct {v3, v4}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v3, v2}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 83
    :cond_1a
    new-instance v4, Le/a/c/r/b$f;

    .line 84
    iget-object v5, v10, Le/a/c/r/b$f$a;->a:Ljava/lang/String;

    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v0

    if-nez v5, :cond_1c

    iget-object v5, v10, Le/a/c/r/b$f$a;->x:Ljava/util/List;

    sget-object v6, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->CONTENT_TITLE:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_e

    .line 85
    :cond_1b
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v3, Lcom/truecaller/log/UnmutedException$j;

    const-string v4, "contentTitle blank for travel"

    invoke-direct {v3, v4}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v3, v2}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 87
    :cond_1c
    :goto_e
    iget-object v12, v10, Le/a/c/r/b$f$a;->a:Ljava/lang/String;

    .line 88
    iget-object v5, v10, Le/a/c/r/b$f$a;->r:Ljava/lang/String;

    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v0

    if-nez v5, :cond_1e

    iget-object v5, v10, Le/a/c/r/b$f$a;->x:Ljava/util/List;

    sget-object v6, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_f

    .line 89
    :cond_1d
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v3, Lcom/truecaller/log/UnmutedException$j;

    const-string v4, "senderId blank for travel"

    invoke-direct {v3, v4}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v3, v2}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 91
    :cond_1e
    :goto_f
    iget-object v5, v10, Le/a/c/r/b$f$a;->r:Ljava/lang/String;

    const-string v6, "alert"

    if-nez v3, :cond_20

    .line 92
    iget-object v7, v10, Le/a/c/r/b$f$a;->o:Ljava/lang/String;

    invoke-static {v7, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 93
    iget-object v7, v10, Le/a/c/r/b$f$a;->d:Ljava/lang/String;

    invoke-static {v7}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v0

    if-nez v7, :cond_20

    .line 94
    iget-object v7, v10, Le/a/c/r/b$f$a;->x:Ljava/util/List;

    sget-object v8, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->DATETIME:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    goto :goto_10

    .line 95
    :cond_1f
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v3, Lcom/truecaller/log/UnmutedException$j;

    const-string v4, "date blank for travel for SenderId : "

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Le/a/c/r/b$f$a;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v3, v2}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 97
    :cond_20
    :goto_10
    iget-object v15, v10, Le/a/c/r/b$f$a;->d:Ljava/lang/String;

    if-nez v3, :cond_22

    .line 98
    iget-object v7, v10, Le/a/c/r/b$f$a;->o:Ljava/lang/String;

    invoke-static {v7, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    .line 99
    iget-object v7, v10, Le/a/c/r/b$f$a;->e:Ljava/lang/String;

    invoke-static {v7}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v0

    if-nez v7, :cond_22

    iget-boolean v7, v10, Le/a/c/r/b$f$a;->y:Z

    if-nez v7, :cond_22

    .line 100
    iget-object v7, v10, Le/a/c/r/b$f$a;->x:Ljava/util/List;

    sget-object v8, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->DATETIME:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    goto :goto_11

    .line 101
    :cond_21
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v3, Lcom/truecaller/log/UnmutedException$j;

    const-string v4, "time blank for travel for SenderId : "

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Le/a/c/r/b$f$a;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, v3, v2}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 103
    :cond_22
    :goto_11
    iget-object v7, v10, Le/a/c/r/b$f$a;->e:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 104
    iget-object v8, v10, Le/a/c/r/b$f$a;->o:Ljava/lang/String;

    invoke-static {v8, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    .line 105
    iget-object v6, v10, Le/a/c/r/b$f$a;->f:Ljava/lang/String;

    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v0

    if-nez v6, :cond_24

    .line 106
    iget-object v6, v10, Le/a/c/r/b$f$a;->x:Ljava/util/List;

    sget-object v8, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->UI_DATE:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    goto :goto_12

    .line 107
    :cond_23
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v3, Lcom/truecaller/log/UnmutedException$j;

    const-string v4, "uiDate blank for travel for SenderId : "

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Le/a/c/r/b$f$a;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, v3, v2}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 109
    :cond_24
    :goto_12
    iget-object v6, v10, Le/a/c/r/b$f$a;->f:Ljava/lang/String;

    if-nez v3, :cond_26

    .line 110
    iget-object v3, v10, Le/a/c/r/b$f$a;->o:Ljava/lang/String;

    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v0, v3

    if-nez v0, :cond_26

    iget-object v0, v10, Le/a/c/r/b$f$a;->x:Ljava/util/List;

    sget-object v3, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->CATEGORY:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_13

    .line 111
    :cond_25
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 112
    new-instance v3, Lcom/truecaller/log/UnmutedException$j;

    const-string v4, "category blank for travel for SenderId : "

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Le/a/c/r/b$f$a;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v3, v2}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 114
    :cond_26
    :goto_13
    iget-object v0, v10, Le/a/c/r/b$f$a;->o:Ljava/lang/String;

    .line 115
    iget v3, v10, Le/a/c/r/b$f$a;->t:I

    if-nez v3, :cond_28

    iget-object v3, v10, Le/a/c/r/b$f$a;->x:Ljava/util/List;

    sget-object v8, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->ICON:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_14

    .line 116
    :cond_27
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 117
    new-instance v3, Lcom/truecaller/log/UnmutedException$j;

    const-string v4, "icon empty for travel for SenderId : "

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Le/a/c/r/b$f$a;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v3, v2}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 119
    :cond_28
    :goto_14
    iget v3, v10, Le/a/c/r/b$f$a;->t:I

    .line 120
    iget-wide v8, v10, Le/a/c/r/b$f$a;->q:J

    cmp-long v8, v8, v32

    if-nez v8, :cond_2a

    iget-object v8, v10, Le/a/c/r/b$f$a;->x:Ljava/util/List;

    sget-object v9, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->MESSAGE_ID:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_29

    goto :goto_15

    .line 121
    :cond_29
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 122
    new-instance v3, Lcom/truecaller/log/UnmutedException$j;

    const-string v4, "messageId is -1 for travel for SenderId : "

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Le/a/c/r/b$f$a;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v3, v2}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 124
    :cond_2a
    :goto_15
    iget-wide v8, v10, Le/a/c/r/b$f$a;->q:J

    .line 125
    iget-object v11, v10, Le/a/c/r/b$f$a;->c:Ljava/lang/String;

    invoke-static {v11}, Le/a/m0/a1$k;->D0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2b

    iget-object v11, v10, Le/a/c/r/b$f$a;->c:Ljava/lang/String;

    move-object v14, v11

    goto :goto_16

    :cond_2b
    move-object v14, v2

    .line 126
    :goto_16
    iget-object v11, v10, Le/a/c/r/b$f$a;->b:Ljava/lang/String;

    invoke-static {v11}, Le/a/m0/a1$k;->D0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2c

    iget-object v11, v10, Le/a/c/r/b$f$a;->b:Ljava/lang/String;

    move-object v13, v11

    goto :goto_17

    :cond_2c
    move-object v13, v2

    .line 127
    :goto_17
    iget-object v11, v10, Le/a/c/r/b$f$a;->g:Ljava/lang/String;

    invoke-static {v11}, Le/a/m0/a1$k;->D0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2d

    iget-object v11, v10, Le/a/c/r/b$f$a;->g:Ljava/lang/String;

    move-object/from16 v18, v11

    goto :goto_18

    :cond_2d
    move-object/from16 v18, v2

    .line 128
    :goto_18
    iget-object v11, v10, Le/a/c/r/b$f$a;->h:Ljava/lang/String;

    invoke-static {v11}, Le/a/m0/a1$k;->D0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2e

    iget-object v11, v10, Le/a/c/r/b$f$a;->h:Ljava/lang/String;

    move-object/from16 v19, v11

    goto :goto_19

    :cond_2e
    move-object/from16 v19, v2

    .line 129
    :goto_19
    iget-object v11, v10, Le/a/c/r/b$f$a;->i:Ljava/lang/String;

    invoke-static {v11}, Le/a/m0/a1$k;->D0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2f

    iget-object v11, v10, Le/a/c/r/b$f$a;->i:Ljava/lang/String;

    move-object/from16 v20, v11

    goto :goto_1a

    :cond_2f
    move-object/from16 v20, v2

    .line 130
    :goto_1a
    iget-object v11, v10, Le/a/c/r/b$f$a;->j:Ljava/lang/String;

    invoke-static {v11}, Le/a/m0/a1$k;->D0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_30

    iget-object v11, v10, Le/a/c/r/b$f$a;->j:Ljava/lang/String;

    move-object/from16 v21, v11

    goto :goto_1b

    :cond_30
    move-object/from16 v21, v2

    .line 131
    :goto_1b
    iget-object v11, v10, Le/a/c/r/b$f$a;->k:Ljava/lang/String;

    invoke-static {v11}, Le/a/m0/a1$k;->D0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_31

    iget-object v11, v10, Le/a/c/r/b$f$a;->k:Ljava/lang/String;

    move-object/from16 v22, v11

    goto :goto_1c

    :cond_31
    move-object/from16 v22, v2

    .line 132
    :goto_1c
    iget-object v11, v10, Le/a/c/r/b$f$a;->l:Ljava/lang/String;

    invoke-static {v11}, Le/a/m0/a1$k;->D0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_32

    iget-object v11, v10, Le/a/c/r/b$f$a;->l:Ljava/lang/String;

    move-object/from16 v23, v11

    goto :goto_1d

    :cond_32
    move-object/from16 v23, v2

    .line 133
    :goto_1d
    iget-object v11, v10, Le/a/c/r/b$f$a;->m:Ljava/lang/String;

    invoke-static {v11}, Le/a/m0/a1$k;->D0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_33

    iget-object v11, v10, Le/a/c/r/b$f$a;->m:Ljava/lang/String;

    move-object/from16 v24, v11

    goto :goto_1e

    :cond_33
    move-object/from16 v24, v2

    .line 134
    :goto_1e
    iget-object v11, v10, Le/a/c/r/b$f$a;->n:Ljava/lang/String;

    invoke-static {v11}, Le/a/m0/a1$k;->D0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_34

    iget-object v11, v10, Le/a/c/r/b$f$a;->n:Ljava/lang/String;

    move-object/from16 v25, v11

    goto :goto_1f

    :cond_34
    move-object/from16 v25, v2

    .line 135
    :goto_1f
    iget-object v11, v10, Le/a/c/r/b$f$a;->u:Ljava/lang/String;

    invoke-static {v11}, Le/a/m0/a1$k;->D0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_35

    iget-object v11, v10, Le/a/c/r/b$f$a;->u:Ljava/lang/String;

    move-object/from16 v32, v11

    goto :goto_20

    :cond_35
    move-object/from16 v32, v2

    .line 136
    :goto_20
    iget v11, v10, Le/a/c/r/b$f$a;->v:I

    if-eqz v11, :cond_36

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v35, v11

    goto :goto_21

    :cond_36
    move-object/from16 v35, v2

    .line 137
    :goto_21
    iget-object v11, v10, Le/a/c/r/b$f$a;->p:Ljava/lang/String;

    invoke-static {v11}, Le/a/m0/a1$k;->D0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_37

    iget-object v2, v10, Le/a/c/r/b$f$a;->p:Ljava/lang/String;

    :cond_37
    move-object/from16 v27, v2

    .line 138
    iget-boolean v2, v10, Le/a/c/r/b$f$a;->w:Z

    move/from16 v33, v2

    .line 139
    iget-object v2, v10, Le/a/c/r/b$f$a;->s:Ljava/util/List;

    move-object/from16 v28, v2

    .line 140
    iget-object v2, v10, Le/a/c/r/b$f$a;->z:Lw3/b/a/b;

    move-object/from16 v36, v2

    .line 141
    iget-object v2, v10, Le/a/c/r/b$f$a;->A:Lcom/truecaller/insights/models/InsightsDomain$f;

    move-object/from16 v37, v2

    move-object v11, v4

    move-object/from16 v16, v7

    move-object/from16 v17, v6

    move-object/from16 v26, v0

    move-wide/from16 v29, v8

    move-object/from16 v31, v5

    move/from16 v34, v3

    .line 142
    invoke-direct/range {v11 .. v37}, Le/a/c/r/b$f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;Lw3/b/a/b;Lcom/truecaller/insights/models/InsightsDomain$f;)V

    move-object v2, v4

    goto/16 :goto_38

    :cond_38
    move-object v9, v7

    move-object v12, v8

    .line 143
    instance-of v2, v0, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    const-string v4, "type"

    const-string v7, "senderId"

    const-string v8, "DateTime.now().withTimeAtStartOfDay()"

    if-eqz v2, :cond_5e

    iget-object v2, v1, Le/a/c/f/i;->b:Le/a/c/f/b;

    check-cast v0, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    .line 144
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "bill"

    invoke-static {v0, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v11, p2

    invoke-static {v11, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v3, v2, Le/a/c/f/b;->b:Le/a/c/b/j;

    .line 146
    invoke-static {v0, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "insightsStatusProvider"

    invoke-static {v3, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-static {v0}, Le/a/m0/a1$k;->G0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v14

    if-nez v14, :cond_39

    invoke-static {v0}, Le/a/m0/a1$k;->F0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v14

    if-eqz v14, :cond_3a

    :cond_39
    invoke-interface {v3}, Le/a/c/b/j;->G()Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 148
    :cond_3a
    invoke-static {v0}, Le/a/m0/a1$k;->w0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v14

    if-eqz v14, :cond_3b

    invoke-interface {v3}, Le/a/c/b/j;->Z()Z

    move-result v3

    if-eqz v3, :cond_3c

    :cond_3b
    move v3, v5

    goto :goto_22

    :cond_3c
    const/4 v3, 0x0

    :goto_22
    if-eqz v3, :cond_5d

    .line 149
    invoke-static {v0, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueInsType()Ljava/lang/String;

    move-result-object v3

    const-string v10, "creditcard"

    invoke-static {v3, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-static {v0}, Le/a/m0/a1$k;->w0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v5

    :cond_3d
    if-eqz v5, :cond_5d

    .line 151
    sget-object v3, Ls1/u/s;->a:Ls1/u/s;

    const-string v5, "Unknown"

    .line 152
    new-instance v14, Lw3/b/a/b;

    invoke-direct {v14}, Lw3/b/a/b;-><init>()V

    .line 153
    invoke-virtual {v14}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v14

    invoke-static {v14, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-static {v13, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "uiDueDate"

    invoke-static {v13, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "dueAmt"

    invoke-static {v13, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "date"

    invoke-static {v13, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "dueInsNumber"

    invoke-static {v13, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "uiDueInsType"

    invoke-static {v13, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "uiDueType"

    invoke-static {v13, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "uiTrxDetail"

    invoke-static {v13, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "trxCurrency"

    invoke-static {v13, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "uiDueAmount"

    invoke-static {v13, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "billDateTime"

    invoke-static {v14, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "pastUiDueDate"

    invoke-static {v13, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object/from16 v49, v3

    move-object/from16 v50, v5

    move/from16 v37, v8

    move/from16 v48, v11

    move-object v3, v13

    move-object v5, v3

    move-object/from16 v35, v5

    move-object/from16 v36, v35

    move-object/from16 v39, v36

    move-object/from16 v40, v39

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v45, v43

    move-object/from16 v52, v45

    move-object/from16 v51, v14

    move-wide/from16 v46, v32

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/insights/binders/utils/BillUiProperties;

    .line 156
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const-string v11, "PrepaidExpiry"

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_35

    .line 157
    :pswitch_10
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v8

    if-eqz v8, :cond_45

    .line 158
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v8

    .line 159
    invoke-static {v0}, Le/a/m0/a1$k;->F0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v12

    if-nez v12, :cond_3e

    move-object v6, v8

    :cond_3e
    if-eqz v6, :cond_44

    .line 160
    invoke-static {v0}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v8, "Days.daysBetween(currentDate, dueDate)"

    if-eqz v6, :cond_41

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v6

    const-string v11, "$this$getPastPrepaidUiDate"

    .line 161
    invoke-static {v6, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v11

    .line 163
    invoke-static {v11, v6}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object v11

    invoke-static {v11, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget v8, v11, Lw3/b/a/e0/i;->a:I

    if-lez v8, :cond_3f

    const-string v8, "Expiring on "

    .line 165
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_24

    :cond_3f
    if-nez v8, :cond_40

    const-string v6, "Expiring Today"

    goto :goto_24

    :cond_40
    const-string v8, "Expired on "

    .line 166
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_24

    .line 167
    :cond_41
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v6

    const-string v11, "$this$getPastBillDueDate"

    .line 168
    invoke-static {v6, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v11

    .line 170
    invoke-static {v11, v6}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object v11

    invoke-static {v11, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget v8, v11, Lw3/b/a/e0/i;->a:I

    if-nez v8, :cond_42

    const-string v6, "Due Today"

    goto :goto_24

    :cond_42
    if-lez v8, :cond_43

    const-string v8, "Due on "

    .line 172
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_24

    :cond_43
    const-string v8, "Was due on "

    .line 173
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_24
    if-eqz v6, :cond_44

    goto :goto_25

    :cond_44
    move-object v6, v13

    goto :goto_25

    :cond_45
    const-string v6, "As on "

    .line 174
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v8

    invoke-virtual {v8}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v8

    const-string v11, "msgDateTime.toLocalDate()"

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 175
    :goto_25
    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v52, v6

    goto/16 :goto_35

    .line 176
    :pswitch_11
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillDateTime()Lw3/b/a/b;

    move-result-object v6

    .line 177
    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v51, v6

    goto/16 :goto_35

    .line 178
    :pswitch_12
    invoke-static {v0}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v6

    .line 179
    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v50, v6

    goto/16 :goto_35

    .line 180
    :pswitch_13
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->isSenderVerifiedForSmartFeatures()Z

    move-result v6

    move/from16 v48, v6

    goto/16 :goto_35

    .line 181
    :pswitch_14
    invoke-static {v0}, Le/a/m0/a1$k;->G0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v6

    if-eqz v6, :cond_46

    sget-object v6, Le/a/c/f/k/b$a$b;->d:Le/a/c/f/k/b$a$b;

    goto :goto_26

    .line 182
    :cond_46
    sget-object v6, Le/a/c/f/k/b$a$a;->d:Le/a/c/f/k/b$a$a;

    .line 183
    :goto_26
    invoke-static {v6}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 184
    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v49, v6

    goto/16 :goto_35

    .line 185
    :pswitch_15
    invoke-static {v0}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    move-object v6, v13

    goto :goto_27

    .line 186
    :cond_47
    sget-object v6, Le/a/c/c0/j;->b:Le/a/c/c0/j;

    .line 187
    iget-object v6, v2, Le/a/c/f/b;->c:Le/a/c/b/e;

    invoke-interface {v6}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Le/a/c/c0/j;->b(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    .line 188
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "trxAmount"

    invoke-static {v3, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "locale"

    invoke-static {v6, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static {v11, v12, v6}, Le/a/c/c0/j;->a(DLjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 190
    :goto_27
    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v45, v6

    goto/16 :goto_35

    .line 191
    :pswitch_16
    iget-object v5, v2, Le/a/c/f/b;->c:Le/a/c/b/e;

    invoke-interface {v5}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueCurrency()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_48

    const/4 v6, 0x1

    goto :goto_28

    :cond_48
    const/4 v6, 0x0

    :goto_28
    if-eqz v6, :cond_49

    const-string v6, "IN"

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    const-string v5, "\u20b9"

    goto :goto_29

    .line 193
    :cond_49
    sget-object v6, Le/a/c/c0/j;->b:Le/a/c/c0/j;

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueCurrency()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Le/a/c/c0/j;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4a

    goto :goto_29

    :cond_4a
    move-object v5, v13

    .line 194
    :goto_29
    invoke-static {v5, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_35

    .line 195
    :pswitch_17
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v11

    move-wide/from16 v46, v11

    goto/16 :goto_35

    .line 196
    :pswitch_18
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v35, v6

    goto/16 :goto_35

    :pswitch_19
    const-string v6, "Bill "

    .line 198
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v0}, Le/a/c/f/b;->b(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    invoke-virtual {v2, v0}, Le/a/c/f/b;->a(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4b

    const/4 v8, 0x1

    goto :goto_2a

    :cond_4b
    const/4 v8, 0x0

    :goto_2a
    if-eqz v8, :cond_4c

    goto :goto_2b

    :cond_4c
    const-string v8, " on "

    invoke-static {v6, v8}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v0}, Le/a/c/f/b;->a(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 200
    :goto_2b
    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v43, v6

    goto/16 :goto_35

    .line 201
    :pswitch_1a
    invoke-virtual {v2, v0}, Le/a/c/f/b;->b(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v6

    .line 202
    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v42, v6

    goto/16 :goto_35

    .line 203
    :pswitch_1b
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueInsType()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    .line 204
    invoke-static {v6, v10, v8}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4d

    const-string v6, "Credit Card"

    goto :goto_2f

    .line 205
    :cond_4d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4e

    const/4 v8, 0x1

    goto :goto_2c

    :cond_4e
    const/4 v8, 0x0

    :goto_2c
    if-eqz v8, :cond_4f

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v8, "(this as java.lang.String).toLowerCase()"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ls1/f0/r;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2f

    .line 206
    :cond_4f
    invoke-static {v0}, Le/a/m0/a1$k;->F0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v6

    if-nez v6, :cond_53

    invoke-static {v0}, Le/a/m0/a1$k;->G0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v6

    if-eqz v6, :cond_50

    goto :goto_2e

    .line 207
    :cond_50
    iget-object v6, v2, Le/a/c/f/b;->a:Le/a/b0/m/d/a;

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Le/a/b0/m/d/a;->b(Ljava/lang/String;)Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    move-result-object v6

    .line 208
    iget-object v8, v2, Le/a/c/f/b;->a:Le/a/b0/m/d/a;

    invoke-interface {v8, v6}, Le/a/b0/m/d/a;->a(Lcom/truecaller/common/payments/senderinfo/SenderInfo;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_51

    invoke-static {v6}, Ls1/f0/r;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2d

    :cond_51
    const/4 v6, 0x0

    :goto_2d
    if-eqz v6, :cond_52

    goto :goto_2f

    :cond_52
    move-object v6, v13

    goto :goto_2f

    :cond_53
    :goto_2e
    const-string v6, "Prepaid"

    .line 209
    :goto_2f
    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v41, v6

    goto/16 :goto_35

    .line 210
    :pswitch_1c
    invoke-static {v0}, Le/a/m0/a1$k;->w0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v6

    if-eqz v6, :cond_54

    const-string v6, "xx"

    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getInsNum()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_30

    :cond_54
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getInsNum()Ljava/lang/String;

    move-result-object v6

    .line 211
    :goto_30
    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v40, v6

    goto/16 :goto_35

    .line 212
    :pswitch_1d
    invoke-virtual {v2, v0}, Le/a/c/f/b;->a(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v39, v6

    goto/16 :goto_35

    .line 214
    :pswitch_1e
    invoke-static {v0}, Le/a/m0/a1$k;->G0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_55

    int-to-double v11, v6

    goto :goto_31

    :cond_55
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueAmt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    :goto_31
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-static {v3, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_35

    :pswitch_1f
    const/4 v6, 0x0

    .line 216
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v8

    if-eqz v8, :cond_56

    .line 217
    invoke-static {v0}, Le/a/m0/a1$k;->F0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v12

    if-eqz v12, :cond_57

    :cond_56
    const/4 v6, 0x1

    :cond_57
    if-nez v6, :cond_58

    goto :goto_32

    :cond_58
    const/4 v8, 0x0

    :goto_32
    if-eqz v8, :cond_5b

    .line 218
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v6

    .line 219
    invoke-static {v0}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    if-eqz v6, :cond_5a

    invoke-static {v6}, Le/a/c/p/a;->I0(Lw3/b/a/p;)Ls1/k;

    move-result-object v6

    goto :goto_33

    :cond_59
    if-eqz v6, :cond_5a

    .line 220
    invoke-static {v6}, Le/a/c/p/a;->S0(Lw3/b/a/p;)Ls1/k;

    move-result-object v6

    goto :goto_33

    :cond_5a
    const/4 v6, 0x0

    :goto_33
    if-eqz v6, :cond_5b

    goto :goto_34

    .line 221
    :cond_5b
    new-instance v6, Ls1/k;

    sget v8, Lcom/truecaller/insights/R$attr;->tcx_textPrimary:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v13, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    :goto_34
    iget-object v8, v6, Ls1/k;->a:Ljava/lang/Object;

    .line 223
    check-cast v8, Ljava/lang/String;

    .line 224
    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v6, v6, Ls1/k;->b:Ljava/lang/Object;

    .line 226
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    move/from16 v37, v6

    move-object/from16 v36, v8

    :goto_35
    const/4 v6, 0x0

    goto/16 :goto_23

    .line 227
    :cond_5c
    new-instance v2, Le/a/c/r/b$b;

    move-object/from16 v34, v2

    move-object/from16 v38, v3

    move-object/from16 v44, v5

    invoke-direct/range {v34 .. v52}, Le/a/c/r/b$b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/util/List;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;)V

    goto/16 :goto_38

    :cond_5d
    const/4 v2, 0x0

    goto/16 :goto_38

    :cond_5e
    move-object/from16 v11, p2

    .line 228
    instance-of v2, v0, Lcom/truecaller/insights/models/InsightsDomain$a;

    if-eqz v2, :cond_5f

    iget-object v2, v1, Le/a/c/f/i;->c:Le/a/c/f/a;

    check-cast v0, Lcom/truecaller/insights/models/InsightsDomain$a;

    invoke-virtual {v2, v0, v11}, Le/a/c/f/a;->a(Lcom/truecaller/insights/models/InsightsDomain$a;Ljava/util/List;)Le/a/c/r/b$a;

    move-result-object v2

    goto/16 :goto_38

    .line 229
    :cond_5f
    instance-of v2, v0, Lcom/truecaller/insights/models/InsightsDomain$e;

    if-eqz v2, :cond_67

    iget-object v2, v1, Le/a/c/f/i;->d:Le/a/c/f/f;

    check-cast v0, Lcom/truecaller/insights/models/InsightsDomain$e;

    .line 230
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "otpDomain"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x4

    .line 231
    new-instance v5, Lw3/b/a/b;

    invoke-direct {v5}, Lw3/b/a/b;-><init>()V

    .line 232
    invoke-virtual {v5}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v5

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "otp"

    .line 233
    invoke-static {v13, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "time"

    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v20, v5

    move-object v15, v13

    move-object/from16 v18, v15

    move-object/from16 v19, v18

    move-wide/from16 v16, v32

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/insights/binders/utils/OtpUiProperties;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_65

    const/4 v6, 0x1

    if-eq v5, v6, :cond_64

    if-eq v5, v2, :cond_62

    const/4 v6, 0x3

    if-eq v5, v6, :cond_61

    if-eq v5, v3, :cond_60

    goto :goto_36

    .line 235
    :cond_60
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$e;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v5

    .line 236
    invoke-static {v5, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v5

    goto :goto_36

    .line 237
    :cond_61
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$e;->getSender()Ljava/lang/String;

    move-result-object v5

    .line 238
    invoke-static {v5, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v5

    goto :goto_36

    .line 239
    :cond_62
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$e;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_63

    goto :goto_37

    :cond_63
    move-object v5, v13

    .line 240
    :goto_37
    invoke-static {v5, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v18, v5

    goto :goto_36

    .line 241
    :cond_64
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$e;->getMsgId()J

    move-result-wide v16

    goto :goto_36

    .line 242
    :cond_65
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$e;->c()Ljava/lang/String;

    move-result-object v15

    .line 243
    invoke-static {v15, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_36

    .line 244
    :cond_66
    new-instance v2, Le/a/c/r/b$e;

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Le/a/c/r/b$e;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lw3/b/a/b;)V

    goto :goto_38

    .line 245
    :cond_67
    instance-of v2, v0, Lcom/truecaller/insights/models/InsightsDomain$b;

    if-eqz v2, :cond_68

    iget-object v2, v1, Le/a/c/f/i;->e:Le/a/c/f/c;

    check-cast v0, Lcom/truecaller/insights/models/InsightsDomain$b;

    invoke-virtual {v2, v0, v11}, Le/a/c/f/c;->a(Lcom/truecaller/insights/models/InsightsDomain$b;Ljava/util/List;)Le/a/c/r/b$c;

    move-result-object v2

    goto :goto_38

    .line 246
    :cond_68
    instance-of v2, v0, Lcom/truecaller/insights/models/InsightsDomain$c;

    if-eqz v2, :cond_69

    iget-object v2, v1, Le/a/c/f/i;->f:Le/a/c/f/e;

    check-cast v0, Lcom/truecaller/insights/models/InsightsDomain$c;

    invoke-virtual {v2, v0, v11}, Le/a/c/f/e;->a(Lcom/truecaller/insights/models/InsightsDomain$c;Ljava/util/List;)Le/a/c/r/b$d;

    move-result-object v2

    :goto_38
    return-object v2

    .line 247
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Binder not available for given domain type"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
