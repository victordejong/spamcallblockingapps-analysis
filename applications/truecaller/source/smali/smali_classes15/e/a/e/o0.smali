.class public abstract Le/a/e/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/o0$b;,
        Le/a/e/o0$c;
    }
.end annotation


# instance fields
.field public final a:Le/a/h0/j;


# direct methods
.method public constructor <init>(Le/a/h0/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/e/o0;->a:Le/a/h0/j;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Le/a/e/o0$b;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;",
            "Le/a/e/o0$b;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v6, p5

    .line 1
    invoke-virtual/range {p0 .. p0}, Le/a/e/o0;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "block"

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "notspam"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    :sswitch_2
    const-string v1, "unblock"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const v0, 0x7f120075

    const v1, 0x7f120012

    goto :goto_1

    :pswitch_1
    const v0, 0x7f12002e

    const v1, 0x7f120011

    :goto_1
    move v9, v1

    goto :goto_2

    :pswitch_2
    const v0, 0x7f120071

    const v1, 0x7f120016

    goto :goto_1

    :goto_2
    const/4 v10, 0x0

    if-nez p3, :cond_4

    move-object v14, v10

    goto :goto_3

    .line 3
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 4
    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5
    new-instance v0, Le/a/e/c/i1;

    invoke-virtual/range {p0 .. p0}, Le/a/e/o0;->c()Landroid/content/Context;

    move-result-object v1

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_5

    move/from16 v2, p9

    move v3, v4

    goto :goto_4

    :cond_5
    move/from16 v2, p9

    :goto_4
    invoke-direct {v0, v1, v14, v2, v3}, Le/a/e/c/i1;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 7
    new-instance v1, Le/a/e/g;

    move-object v11, v1

    move-object/from16 v12, p0

    move-object/from16 v13, p3

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p4

    move/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    invoke-direct/range {v11 .. v20}, Le/a/e/g;-><init>(Le/a/e/o0;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Le/a/e/o0$b;)V

    .line 8
    iput-object v1, v0, Le/a/e/c/i1;->g:Le/a/e/c/i1$a;

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_5

    .line 10
    :cond_6
    new-instance v11, Ln3/b/a/g$a;

    invoke-virtual/range {p0 .. p0}, Le/a/e/o0;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v11, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v11, v0}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    new-instance v12, Le/a/e/f;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v14

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Le/a/e/f;-><init>(Le/a/e/o0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLe/a/e/o0$b;)V

    .line 12
    invoke-virtual {v11, v9, v12}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v0, 0x7f1206fb

    .line 13
    invoke-virtual {v11, v0, v10}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 14
    invoke-virtual {v11}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x117a126c -> :sswitch_2
        0x597c48d -> :sswitch_1
        0x7ef0009c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;ILjava/lang/Long;Le/a/e/o0$b;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;",
            "Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;",
            "I",
            "Ljava/lang/Long;",
            "Le/a/e/o0$b;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/e/o0$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    move/from16 v10, p8

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Le/a/e/o0$a;-><init>(Le/a/e/o0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;ILe/a/e/o0$b;)V

    return-void
.end method

.method public abstract c()Landroid/content/Context;
.end method

.method public abstract d(Ljava/lang/String;)V
.end method
