.class public final synthetic Le/a/c/a/c/f/l;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Ljava/lang/Long;",
        "Lcom/truecaller/insights/ui/models/AdapterItem$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/o;)V
    .locals 7

    const-class v3, Le/a/c/a/c/f/o;

    const/4 v1, 0x1

    const-string v4, "getBannerItem"

    const-string v5, "getBannerItem(J)Lcom/truecaller/insights/ui/models/AdapterItem$BannerItem;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    move-object/from16 v2, p0

    .line 2
    iget-object v3, v2, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v3, Le/a/c/a/c/f/o;

    .line 3
    iget-object v4, v3, Le/a/c/a/c/f/o;->b:Le/a/c/c0/o;

    invoke-interface {v4}, Le/a/c/c0/o;->y0()I

    move-result v4

    .line 4
    iget-object v5, v3, Le/a/c/a/c/f/o;->b:Le/a/c/c0/o;

    invoke-interface {v5}, Le/a/c/c0/o;->c0()Lcom/truecaller/insights/utils/BannerState;

    move-result-object v5

    sget-object v6, Lcom/truecaller/insights/utils/BannerState;->DISMISSED_ONCE:Lcom/truecaller/insights/utils/BannerState;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    if-eqz v5, :cond_1

    .line 5
    sget v5, Lcom/truecaller/insights/ui/R$string;->understood:I

    goto :goto_1

    :cond_1
    sget v5, Lcom/truecaller/insights/ui/R$string;->not_now:I

    .line 6
    :goto_1
    iget-object v9, v3, Le/a/c/a/c/f/o;->b:Le/a/c/c0/o;

    invoke-interface {v9}, Le/a/c/c0/o;->c0()Lcom/truecaller/insights/utils/BannerState;

    move-result-object v9

    if-ne v9, v6, :cond_2

    move v9, v8

    goto :goto_2

    :cond_2
    move v9, v7

    :goto_2
    if-eqz v9, :cond_3

    const-string v9, "dismiss"

    goto :goto_3

    :cond_3
    const-string v9, "not_now"

    .line 7
    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 9
    new-instance v10, Lw3/b/a/q;

    .line 10
    sget-wide v11, Le/a/c/a/c/f/r;->a:J

    add-long/2addr v0, v11

    .line 11
    invoke-static {}, Lw3/b/a/f0/t;->Y()Lw3/b/a/f0/t;

    move-result-object v11

    invoke-direct {v10, v0, v1, v11}, Lw3/b/a/q;-><init>(JLw3/b/a/a;)V

    .line 12
    new-instance v0, Le/a/c/r/d/c;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x7f

    move-object v12, v0

    invoke-direct/range {v12 .. v20}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v1, "onboarding"

    .line 13
    invoke-virtual {v0, v1}, Le/a/c/r/d/c;->g(Ljava/lang/String;)V

    const-string v1, "model_download_translation"

    .line 14
    invoke-virtual {v0, v1}, Le/a/c/r/d/c;->e(Ljava/lang/String;)V

    const-string v1, "insights_tab"

    .line 15
    invoke-virtual {v0, v1}, Le/a/c/r/d/c;->d(Ljava/lang/String;)V

    const-string v1, "click"

    .line 16
    invoke-virtual {v0, v1}, Le/a/c/r/d/c;->c(Ljava/lang/String;)V

    .line 17
    iget-object v1, v3, Le/a/c/a/c/f/o;->b:Le/a/c/c0/o;

    invoke-interface {v1}, Le/a/c/c0/o;->c0()Lcom/truecaller/insights/utils/BannerState;

    move-result-object v1

    sget-object v11, Lcom/truecaller/insights/utils/BannerState;->DISMISSED:Lcom/truecaller/insights/utils/BannerState;

    if-ne v1, v11, :cond_4

    move v1, v8

    goto :goto_4

    :cond_4
    move v1, v7

    :goto_4
    const/4 v12, 0x0

    if-eqz v1, :cond_5

    goto/16 :goto_8

    .line 18
    :cond_5
    iget-object v1, v3, Le/a/c/a/c/f/o;->b:Le/a/c/c0/o;

    invoke-interface {v1}, Le/a/c/c0/o;->y0()I

    move-result v1

    const/4 v13, 0x3

    if-lt v1, v13, :cond_6

    move v1, v8

    goto :goto_5

    :cond_6
    move v1, v7

    :goto_5
    if-eqz v1, :cond_7

    .line 19
    iget-object v0, v3, Le/a/c/a/c/f/o;->b:Le/a/c/c0/o;

    invoke-interface {v0, v11}, Le/a/c/c0/o;->s(Lcom/truecaller/insights/utils/BannerState;)V

    goto/16 :goto_8

    .line 20
    :cond_7
    iget-object v1, v3, Le/a/c/a/c/f/o;->b:Le/a/c/c0/o;

    invoke-interface {v1}, Le/a/c/c0/o;->y0()I

    move-result v1

    const/4 v11, 0x2

    if-ne v1, v11, :cond_8

    move v7, v8

    :cond_8
    if-eqz v7, :cond_9

    .line 21
    iget-object v1, v3, Le/a/c/a/c/f/o;->b:Le/a/c/c0/o;

    invoke-interface {v1, v6}, Le/a/c/c0/o;->s(Lcom/truecaller/insights/utils/BannerState;)V

    .line 22
    :cond_9
    invoke-static {}, Lw3/b/a/q;->g()Lw3/b/a/q;

    move-result-object v1

    invoke-virtual {v10, v1}, Lw3/b/a/q;->a(Lw3/b/a/b0;)I

    move-result v1

    if-gez v1, :cond_d

    .line 23
    new-instance v12, Lcom/truecaller/insights/ui/models/AdapterItem$a;

    const-wide/16 v14, 0x0

    .line 24
    iget-object v1, v3, Le/a/c/a/c/f/o;->f:Le/a/c/b/e;

    invoke-interface {v1}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x8a2

    if-eq v6, v7, :cond_b

    const/16 v7, 0xa52

    if-eq v6, v7, :cond_a

    goto :goto_6

    :cond_a
    const-string v6, "SE"

    .line 25
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget v1, Lcom/truecaller/insights/ui/R$string;->enable_swedish_smart_sms:I

    goto :goto_7

    :cond_b
    const-string v6, "EG"

    .line 26
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget v1, Lcom/truecaller/insights/ui/R$string;->enable_arabic_smart_sms:I

    goto :goto_7

    .line 27
    :cond_c
    :goto_6
    sget v1, Lcom/truecaller/insights/ui/R$string;->enable_swedish_smart_sms:I

    :goto_7
    move/from16 v17, v1

    .line 28
    sget v18, Lcom/truecaller/insights/ui/R$string;->download_model:I

    .line 29
    sget v19, Lcom/truecaller/insights/ui/R$string;->download_now:I

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 31
    sget v22, Lcom/truecaller/insights/ui/R$drawable;->drawable_banner_background:I

    .line 32
    sget v16, Lcom/truecaller/insights/ui/R$drawable;->ic_tcx_onboarding_insights_banner:I

    .line 33
    sget-object v21, Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;->MODEL_DOWNLOAD:Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;

    .line 34
    new-instance v1, Le/a/c/a/c/f/m;

    invoke-direct {v1, v3, v0}, Le/a/c/a/c/f/m;-><init>(Le/a/c/a/c/f/o;Le/a/c/r/d/c;)V

    .line 35
    new-instance v5, Le/a/c/a/c/f/n;

    invoke-direct {v5, v3, v4, v0, v9}, Le/a/c/a/c/f/n;-><init>(Le/a/c/a/c/f/o;ILe/a/c/r/d/c;Ljava/lang/String;)V

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object v13, v12

    move-object/from16 v23, v1

    move-object/from16 v24, v5

    .line 36
    invoke-direct/range {v13 .. v26}, Lcom/truecaller/insights/ui/models/AdapterItem$a;-><init>(JIIIILjava/lang/Integer;Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;ILs1/z/b/l;Ls1/z/b/a;Ls1/z/b/a;I)V

    :cond_d
    :goto_8
    return-object v12
.end method
