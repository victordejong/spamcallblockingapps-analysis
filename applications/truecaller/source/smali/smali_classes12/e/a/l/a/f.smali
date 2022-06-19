.class public final Le/a/l/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l/a/f$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/a/p4/b;


# direct methods
.method public constructor <init>(Le/a/p4/b;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "qaMenuSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/f;->b:Le/a/p4/b;

    .line 2
    new-instance p1, Le/m/e/l;

    invoke-direct {p1}, Le/m/e/l;-><init>()V

    const-class v0, Lw3/b/a/u;

    new-instance v1, Le/a/l/a/f$a;

    invoke-direct {v1}, Le/a/l/a/f$a;-><init>()V

    invoke-virtual {p1, v0, v1}, Le/m/e/l;->b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/m/e/l;

    invoke-virtual {p1}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object p1

    const-string v0, "GsonBuilder().registerTy\u2026dDeserializer()).create()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/l/a/f;->a:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public final a()Le/a/l/a/h;
    .locals 110

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/l/a/f;->b:Le/a/p4/b;

    invoke-interface {v1}, Le/a/p4/b;->F1()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    if-eqz v4, :cond_2

    .line 3
    new-instance v1, Le/a/l/a/h;

    .line 4
    new-instance v6, Le/a/l/a/e;

    .line 5
    new-instance v4, Le/a/l/n2/f;

    move-object v7, v4

    const/4 v5, 0x3

    .line 6
    invoke-static {v5}, Lw3/b/a/u;->r(I)Lw3/b/a/u;

    move-result-object v17

    .line 7
    sget-object v20, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    const-wide/32 v12, 0x1312d00

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v59, 0x3b60

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3b60

    const-string v8, "monthly"

    const-string v9, "Monthly"

    const-string v10, "20 Rs"

    const-string v11, "INR"

    .line 8
    invoke-direct/range {v7 .. v24}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)V

    .line 9
    invoke-direct {v6, v4, v3}, Le/a/l/a/e;-><init>(Le/a/l/n2/f;Z)V

    .line 10
    new-instance v7, Le/a/l/a/e;

    .line 11
    new-instance v4, Le/a/l/n2/f;

    move-object v8, v4

    .line 12
    invoke-static {v5}, Lw3/b/a/u;->r(I)Lw3/b/a/u;

    move-result-object v18

    .line 13
    sget-object v21, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_QUARTERLY:Lcom/truecaller/premium/data/ProductKind;

    const-wide/32 v13, 0x2160ec0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3b60

    const-string v9, "quarterly"

    const-string v10, "Quarterly"

    const-string v11, "35 Rs"

    const-string v12, "INR"

    .line 14
    invoke-direct/range {v8 .. v25}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)V

    .line 15
    invoke-direct {v7, v4, v3}, Le/a/l/a/e;-><init>(Le/a/l/n2/f;Z)V

    .line 16
    new-instance v8, Le/a/l/a/e;

    .line 17
    new-instance v4, Le/a/l/n2/f;

    move-object v9, v4

    .line 18
    invoke-static {v5}, Lw3/b/a/u;->r(I)Lw3/b/a/u;

    move-result-object v19

    .line 19
    sget-object v22, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_HALFYEARLY:Lcom/truecaller/premium/data/ProductKind;

    const-wide/32 v14, 0x2faf080

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3b60

    const-string v10, "halfYearly"

    const-string v11, "HalfYearly"

    const-string v12, "50 Rs"

    const-string v13, "INR"

    .line 20
    invoke-direct/range {v9 .. v26}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)V

    .line 21
    invoke-direct {v8, v4, v2}, Le/a/l/a/e;-><init>(Le/a/l/n2/f;Z)V

    .line 22
    new-instance v9, Le/a/l/a/e;

    .line 23
    new-instance v4, Le/a/l/n2/f;

    move-object v10, v4

    .line 24
    invoke-static {v5}, Lw3/b/a/u;->r(I)Lw3/b/a/u;

    move-result-object v20

    .line 25
    sget-object v23, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    move-object/from16 v73, v23

    const-wide/32 v15, 0x7270e00

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3b60

    const-string v11, "yearly"

    const-string v12, "Yearly"

    const-string v13, "120 Rs"

    const-string v14, "INR"

    .line 26
    invoke-direct/range {v10 .. v27}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)V

    .line 27
    invoke-direct {v9, v4, v3}, Le/a/l/a/e;-><init>(Le/a/l/n2/f;Z)V

    .line 28
    new-instance v10, Le/a/l/a/e;

    .line 29
    new-instance v4, Le/a/l/n2/f;

    move-object/from16 v42, v4

    .line 30
    invoke-static {v5}, Lw3/b/a/u;->r(I)Lw3/b/a/u;

    move-result-object v52

    .line 31
    sget-object v55, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_WELCOME_OFFER_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    const-wide/32 v47, 0x3938700

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const-string v43, "yearly"

    const-string v44, "Welcome"

    const-string v45, "60 Rs"

    const-string v46, "INR"

    .line 32
    invoke-direct/range {v42 .. v59}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)V

    .line 33
    invoke-direct {v10, v4, v2}, Le/a/l/a/e;-><init>(Le/a/l/n2/f;Z)V

    .line 34
    new-instance v11, Le/a/l/a/e;

    .line 35
    new-instance v4, Le/a/l/n2/f;

    move-object v12, v4

    .line 36
    sget-object v25, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_GOLD:Lcom/truecaller/premium/data/ProductKind;

    const-wide/32 v30, 0x47868c00

    const/16 v35, 0x0

    const/16 v42, 0x3be0

    const-wide/32 v17, 0x47868c00

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x3be0

    const-string v13, "gold"

    const-string v14, "Gold"

    const-string v15, "1200 Rs"

    const-string v16, "INR"

    .line 37
    invoke-direct/range {v12 .. v29}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)V

    .line 38
    invoke-direct {v11, v4, v3}, Le/a/l/a/e;-><init>(Le/a/l/n2/f;Z)V

    .line 39
    new-instance v12, Le/a/l/a/e;

    .line 40
    new-instance v4, Le/a/l/n2/f;

    move-object/from16 v43, v4

    .line 41
    sget-object v56, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    const-wide/32 v48, 0x47868c00

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x3be0

    const-string v44, "consumable"

    const-string v45, "Consumable"

    const-string v46, "120 Rs"

    const-string v47, "INR"

    .line 42
    invoke-direct/range {v43 .. v60}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)V

    .line 43
    invoke-direct {v12, v4, v3}, Le/a/l/a/e;-><init>(Le/a/l/n2/f;Z)V

    .line 44
    new-instance v13, Le/a/l/a/e;

    .line 45
    new-instance v4, Le/a/l/n2/f;

    move-object/from16 v25, v4

    .line 46
    sget-object v38, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_GOLD_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    move-object/from16 v105, v38

    move-object/from16 v87, v38

    move-object/from16 v56, v38

    const-string v26, "goldConsumable"

    const-string v27, "Consumable Gold"

    const-string v28, "1200 Rs"

    const-string v29, "INR"

    .line 47
    invoke-direct/range {v25 .. v42}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)V

    .line 48
    invoke-direct {v13, v4, v3}, Le/a/l/a/e;-><init>(Le/a/l/n2/f;Z)V

    .line 49
    new-instance v14, Le/a/l/a/e;

    .line 50
    new-instance v4, Le/a/l/n2/f;

    move-object/from16 v43, v4

    const-string v44, "halfYearlyConsumable"

    const-string v45, "Consumable Half Yearly"

    const-string v46, "1200 Rs"

    const-string v47, "INR"

    invoke-direct/range {v43 .. v60}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)V

    .line 51
    invoke-direct {v14, v4, v3}, Le/a/l/a/e;-><init>(Le/a/l/n2/f;Z)V

    .line 52
    new-instance v15, Le/a/l/a/e;

    .line 53
    new-instance v4, Le/a/l/n2/f;

    move-object/from16 v74, v4

    const-wide/32 v79, 0x47868c00

    const/16 v81, 0x0

    const-wide/16 v82, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x3be0

    const-string v75, "quarterlyConsumable"

    const-string v76, "Consumable Quarterly"

    const-string v77, "1200 Rs"

    const-string v78, "INR"

    invoke-direct/range {v74 .. v91}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)V

    .line 54
    invoke-direct {v15, v4, v3}, Le/a/l/a/e;-><init>(Le/a/l/n2/f;Z)V

    .line 55
    new-instance v4, Le/a/l/a/e;

    .line 56
    new-instance v5, Le/a/l/n2/f;

    move-object/from16 v92, v5

    const-wide/32 v97, 0x47868c00

    const/16 v99, 0x0

    const-wide/16 v100, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const/16 v108, 0x0

    const/16 v109, 0x3be0

    const-string v93, "monthlyConsumable"

    const-string v94, "Consumable Monthly"

    const-string v95, "1200 Rs"

    const-string v96, "INR"

    invoke-direct/range {v92 .. v109}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)V

    .line 57
    invoke-direct {v4, v5, v3}, Le/a/l/a/e;-><init>(Le/a/l/n2/f;Z)V

    .line 58
    new-instance v3, Le/a/l/a/e;

    .line 59
    new-instance v5, Le/a/l/n2/f;

    move-object/from16 v60, v5

    const-wide/32 v65, 0x3938700

    const/16 v67, 0x0

    const-wide/16 v68, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x3be0

    const-string v61, "yearly_winback"

    const-string v62, "Yearly"

    const-string v63, "60 Rs"

    const-string v64, "INR"

    invoke-direct/range {v60 .. v77}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)V

    .line 60
    invoke-direct {v3, v5, v2}, Le/a/l/a/e;-><init>(Le/a/l/n2/f;Z)V

    move-object v5, v1

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    .line 61
    invoke-direct/range {v5 .. v17}, Le/a/l/a/h;-><init>(Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;)V

    goto :goto_2

    .line 62
    :cond_2
    iget-object v2, v0, Le/a/l/a/f;->a:Le/m/e/k;

    .line 63
    new-instance v3, Le/a/l/a/f$b;

    invoke-direct {v3}, Le/a/l/a/f$b;-><init>()V

    invoke-virtual {v3}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v4, "object : TypeToken<T>() {}.type"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2, v1, v3}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "this.fromJson(json, typeToken<T>())"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/a/l/a/h;

    :goto_2
    return-object v1
.end method
