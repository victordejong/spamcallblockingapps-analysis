.class public final Le/a/l/n2/a$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/n2/a;->g(Landroid/app/Activity;Le/a/l/n2/f;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Le/a/l/n2/e$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.billing.GooglePlayBilling$purchase$2"
    f = "GooglePlayBilling.kt"
    l = {
        0xc0,
        0x167
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/l/n2/a;

.field public final synthetic i:Le/a/l/n2/f;

.field public final synthetic j:Landroid/app/Activity;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/l/n2/a;Le/a/l/n2/f;Landroid/app/Activity;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/n2/a$f;->h:Le/a/l/n2/a;

    iput-object p2, p0, Le/a/l/n2/a$f;->i:Le/a/l/n2/f;

    iput-object p3, p0, Le/a/l/n2/a$f;->j:Landroid/app/Activity;

    iput-object p4, p0, Le/a/l/n2/a$f;->k:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ls1/w/d;

    invoke-virtual {p0, p1}, Le/a/l/n2/a$f;->l(Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/l/n2/a$f;

    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, v0}, Le/a/l/n2/a$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/l/n2/a$f;

    iget-object v2, p0, Le/a/l/n2/a$f;->h:Le/a/l/n2/a;

    iget-object v3, p0, Le/a/l/n2/a$f;->i:Le/a/l/n2/f;

    iget-object v4, p0, Le/a/l/n2/a$f;->j:Landroid/app/Activity;

    iget-object v5, p0, Le/a/l/n2/a$f;->k:Ljava/lang/String;

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Le/a/l/n2/a$f;-><init>(Le/a/l/n2/a;Le/a/l/n2/f;Landroid/app/Activity;Ljava/lang/String;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/n2/a$f;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v1, v0, Le/a/l/n2/a$f;->f:Ljava/lang/Object;

    check-cast v1, Le/a/l/n2/a$f;

    iget-object v1, v0, Le/a/l/n2/a$f;->e:Ljava/lang/Object;

    check-cast v1, Le/d/a/a/r;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_c

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/l/n2/a$f;->h:Le/a/l/n2/a;

    invoke-static {v2}, Le/a/l/n2/a;->n(Le/a/l/n2/a;)Le/d/a/a/d;

    move-result-object v2

    invoke-virtual {v2}, Le/d/a/a/d;->e()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5
    new-instance v1, Le/a/l/n2/e$a$b;

    const-string v2, "Billing is not initialized"

    invoke-direct {v1, v2}, Le/a/l/n2/e$a$b;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 6
    :cond_3
    iget-object v2, v0, Le/a/l/n2/a$f;->h:Le/a/l/n2/a;

    invoke-static {v2}, Le/a/l/n2/a;->n(Le/a/l/n2/a;)Le/d/a/a/d;

    move-result-object v5

    .line 7
    iget-object v6, v0, Le/a/l/n2/a$f;->i:Le/a/l/n2/f;

    .line 8
    iget-object v6, v6, Le/a/l/n2/f;->a:Ljava/lang/String;

    .line 9
    invoke-static {v6}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 10
    iget-object v7, v0, Le/a/l/n2/a$f;->i:Le/a/l/n2/f;

    .line 11
    iget-object v7, v7, Le/a/l/n2/f;->l:Lcom/truecaller/premium/data/PremiumProductType;

    if-nez v7, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_6

    if-ne v7, v3, :cond_5

    :goto_0
    const-string v7, "subs"

    goto :goto_1

    .line 13
    :cond_5
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :cond_6
    const-string v7, "inapp"

    :goto_1
    iput v3, v0, Le/a/l/n2/a$f;->g:I

    .line 14
    invoke-virtual {v2, v5, v6, v7, v0}, Le/a/l/n2/a;->s(Le/d/a/a/d;Ljava/util/List;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    return-object v1

    .line 15
    :cond_7
    :goto_2
    check-cast v2, Ljava/util/List;

    .line 16
    invoke-static {v2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/d/a/a/r;

    if-eqz v2, :cond_1a

    .line 17
    iput-object v2, v0, Le/a/l/n2/a$f;->e:Ljava/lang/Object;

    iput-object v0, v0, Le/a/l/n2/a$f;->f:Ljava/lang/Object;

    iput v4, v0, Le/a/l/n2/a$f;->g:I

    .line 18
    new-instance v4, Lq3/a/o;

    invoke-static/range {p0 .. p0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 19
    invoke-virtual {v4}, Lq3/a/o;->z()V

    .line 20
    iget-object v5, v0, Le/a/l/n2/a$f;->h:Le/a/l/n2/a;

    new-instance v6, Le/a/l/n2/a$f$a;

    invoke-direct {v6, v4, v0, v2}, Le/a/l/n2/a$f$a;-><init>(Lq3/a/n;Le/a/l/n2/a$f;Le/d/a/a/r;)V

    .line 21
    iput-object v6, v5, Le/a/l/n2/a;->b:Ls1/z/b/l;

    .line 22
    iget-object v5, v0, Le/a/l/n2/a$f;->h:Le/a/l/n2/a;

    invoke-static {v5}, Le/a/l/n2/a;->n(Le/a/l/n2/a;)Le/d/a/a/d;

    move-result-object v5

    .line 23
    iget-object v6, v0, Le/a/l/n2/a$f;->j:Landroid/app/Activity;

    .line 24
    new-instance v7, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v2, v0, Le/a/l/n2/a$f;->k:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_a

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_3

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Old SKU purchase token/id must be provided."

    .line 29
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_3
    move v10, v3

    goto :goto_4

    :cond_a
    move v10, v8

    move-object v2, v9

    .line 30
    :goto_4
    iget-object v11, v0, Le/a/l/n2/a$f;->h:Le/a/l/n2/a;

    .line 31
    iget-object v11, v11, Le/a/l/n2/a;->e:Le/a/b0/o/a;

    const-wide/16 v12, 0x0

    const-string v14, "profileUserId"

    .line 32
    invoke-interface {v11, v14, v12, v13}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 33
    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, v14, v15}, Ljava/lang/Long;-><init>(J)V

    .line 34
    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    cmp-long v12, v14, v12

    if-eqz v12, :cond_b

    move v12, v3

    goto :goto_5

    :cond_b
    move v12, v8

    .line 35
    :goto_5
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 36
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_c

    goto :goto_6

    :cond_c
    move-object v11, v9

    :goto_6
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 37
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    const-string v9, "$this$toMD5"

    .line 38
    invoke-static {v11, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "MD5"

    .line 39
    invoke-static {v11, v9}, Le/a/p5/s0/f;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 40
    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_19

    .line 41
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v8

    :goto_7
    if-ge v12, v11, :cond_f

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 42
    check-cast v12, Le/d/a/a/r;

    if-eqz v12, :cond_e

    move v12, v13

    goto :goto_7

    .line 43
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SKU cannot be null."

    .line 44
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v3, :cond_15

    .line 46
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/d/a/a/r;

    .line 47
    invoke-virtual {v3}, Le/d/a/a/r;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v8

    :goto_8
    const-string v14, "play_pass_subs"

    if-ge v13, v12, :cond_12

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 48
    check-cast v15, Le/d/a/a/r;

    .line 49
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_11

    .line 50
    invoke-virtual {v15}, Le/d/a/a/r;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 51
    invoke-virtual {v15}, Le/d/a/a/r;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_9

    .line 52
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SKUs should have the same type."

    .line 53
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_9
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    goto :goto_8

    .line 54
    :cond_12
    invoke-virtual {v3}, Le/d/a/a/r;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v8, :cond_15

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 55
    check-cast v13, Le/d/a/a/r;

    .line 56
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    .line 57
    invoke-virtual {v13}, Le/d/a/a/r;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    .line 58
    invoke-virtual {v13}, Le/d/a/a/r;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    goto :goto_b

    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "All SKUs must have the same package name."

    .line 59
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 60
    :cond_15
    new-instance v3, Le/d/a/a/j;

    .line 61
    invoke-direct {v3}, Le/d/a/a/j;-><init>()V

    const/4 v8, 0x0

    .line 62
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/d/a/a/r;

    invoke-virtual {v11}, Le/d/a/a/r;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    .line 63
    iput-boolean v11, v3, Le/d/a/a/j;->a:Z

    .line 64
    iput-object v9, v3, Le/d/a/a/j;->b:Ljava/lang/String;

    const/4 v9, 0x0

    .line 65
    iput-object v9, v3, Le/d/a/a/j;->d:Ljava/lang/String;

    .line 66
    iput-object v2, v3, Le/d/a/a/j;->c:Ljava/lang/String;

    .line 67
    iput v10, v3, Le/d/a/a/j;->e:I

    .line 68
    iput-object v7, v3, Le/d/a/a/j;->f:Ljava/util/ArrayList;

    .line 69
    iput-boolean v8, v3, Le/d/a/a/j;->g:Z

    .line 70
    invoke-virtual {v5, v6, v3}, Le/d/a/a/d;->f(Landroid/app/Activity;Le/d/a/a/j;)Le/d/a/a/k;

    move-result-object v2

    const-string v3, "billing.launchBillingFlo\u2026   .build()\n            )"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v3, v0, Le/a/l/n2/a$f;->h:Le/a/l/n2/a;

    invoke-static {v3, v2}, Le/a/l/n2/a;->p(Le/a/l/n2/a;Le/d/a/a/k;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 72
    iget-object v3, v0, Le/a/l/n2/a$f;->h:Le/a/l/n2/a;

    const/4 v5, 0x0

    .line 73
    iput-object v5, v3, Le/a/l/n2/a;->b:Ls1/z/b/l;

    .line 74
    invoke-virtual {v4}, Lq3/a/o;->b()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 75
    new-instance v3, Le/a/l/n2/e$a$b;

    .line 76
    iget-object v2, v2, Le/d/a/a/k;->b:Ljava/lang/String;

    .line 77
    invoke-direct {v3, v2}, Le/a/l/n2/e$a$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lq3/a/o;->c(Ljava/lang/Object;)V

    .line 78
    :cond_16
    invoke-virtual {v4}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_17

    const-string v3, "frame"

    .line 79
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_17
    if-ne v2, v1, :cond_18

    return-object v1

    :cond_18
    :goto_c
    return-object v2

    .line 80
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SkuDetails must be provided."

    .line 81
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_1a
    new-instance v1, Le/a/l/n2/e$a$b;

    const-string v2, "SkuDetails not found for sku: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Le/a/l/n2/a$f;->i:Le/a/l/n2/f;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Le/a/l/n2/e$a$b;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
