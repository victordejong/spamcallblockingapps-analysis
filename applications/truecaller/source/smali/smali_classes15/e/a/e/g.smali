.class public final synthetic Le/a/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e/c/i1$a;


# instance fields
.field public final synthetic a:Le/a/e/o0;

.field public final synthetic b:Lcom/truecaller/data/entity/Contact;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z

.field public final synthetic h:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

.field public final synthetic i:Le/a/e/o0$b;


# direct methods
.method public synthetic constructor <init>(Le/a/e/o0;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Le/a/e/o0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/g;->a:Le/a/e/o0;

    iput-object p2, p0, Le/a/e/g;->b:Lcom/truecaller/data/entity/Contact;

    iput-object p3, p0, Le/a/e/g;->c:Ljava/lang/String;

    iput-object p4, p0, Le/a/e/g;->d:Ljava/util/List;

    iput-object p5, p0, Le/a/e/g;->e:Ljava/lang/String;

    iput-object p6, p0, Le/a/e/g;->f:Ljava/lang/String;

    iput-boolean p7, p0, Le/a/e/g;->g:Z

    iput-object p8, p0, Le/a/e/g;->h:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iput-object p9, p0, Le/a/e/g;->i:Le/a/e/o0$b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v12, v0, Le/a/e/g;->a:Le/a/e/o0;

    iget-object v1, v0, Le/a/e/g;->b:Lcom/truecaller/data/entity/Contact;

    iget-object v2, v0, Le/a/e/g;->c:Ljava/lang/String;

    iget-object v3, v0, Le/a/e/g;->d:Ljava/util/List;

    iget-object v4, v0, Le/a/e/g;->e:Ljava/lang/String;

    iget-object v5, v0, Le/a/e/g;->f:Ljava/lang/String;

    iget-boolean v6, v0, Le/a/e/g;->g:Z

    iget-object v7, v0, Le/a/e/g;->h:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget-object v13, v0, Le/a/e/g;->i:Le/a/e/o0$b;

    .line 1
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    if-eqz v1, :cond_1

    .line 2
    invoke-static/range {p1 .. p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3
    sget-object v8, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->BUSINESS:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    move-object/from16 v9, p2

    if-ne v9, v8, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :cond_0
    move v8, v14

    .line 4
    :goto_0
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v10

    invoke-interface {v10}, Le/a/j2;->X0()Le/a/r2/f;

    move-result-object v10

    invoke-interface {v10}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/g5/n;

    move-object/from16 v11, p1

    invoke-interface {v10, v1, v11, v8}, Le/a/g5/n;->a(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;I)Le/a/r2/x;

    move-result-object v1

    invoke-virtual {v1}, Le/a/r2/x;->g()V

    goto :goto_1

    :cond_1
    move-object/from16 v11, p1

    move-object/from16 v9, p2

    .line 5
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v15, v2

    goto :goto_2

    :cond_2
    move-object v15, v11

    :goto_2
    const v10, 0x7f120031

    const/4 v11, 0x0

    move-object v1, v12

    move-object v2, v3

    move-object v3, v4

    move-object v4, v15

    move-object/from16 v8, p2

    move v9, v10

    move-object v10, v11

    move-object v11, v13

    .line 6
    invoke-virtual/range {v1 .. v11}, Le/a/e/o0;->b(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;ILjava/lang/Long;Le/a/e/o0$b;)V

    .line 7
    invoke-virtual {v12, v15}, Le/a/e/o0;->d(Ljava/lang/String;)V

    if-eqz v13, :cond_3

    .line 8
    check-cast v13, Le/a/e/c/w1;

    .line 9
    invoke-virtual {v13, v14}, Le/a/e/c/w1;->a(Z)V

    :cond_3
    return-void
.end method
