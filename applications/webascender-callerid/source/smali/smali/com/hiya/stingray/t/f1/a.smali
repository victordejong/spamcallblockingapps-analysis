.class public final Lcom/hiya/stingray/t/f1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/hiya/stingray/t/n;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/hiya/stingray/t/f1/a;->c(Lcom/hiya/stingray/t/n;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/hiya/stingray/t/f1/a;->b(Lcom/hiya/stingray/t/n;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/t/n;->f()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v3}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/hiya/stingray/t/n;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string p0, "this!!.formattedStreet!!"

    invoke-static {v0, p0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 4
    :cond_3
    invoke-static {v0}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    invoke-static {v1}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    move-object v0, v1

    goto :goto_1

    :cond_5
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public static final b(Lcom/hiya/stingray/t/n;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/n;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, ""

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/hiya/stingray/t/n;->g()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    move-object v2, v0

    :cond_3
    invoke-static {v1, v2}, Lcom/hiya/stingray/util/p;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataUtil.getFormattedCit\u2026), this?.state.orEmpty())"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final c(Lcom/hiya/stingray/t/n;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/n;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, ""

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/t/n;->g()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    if-eqz p0, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/t/n;->i()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    move-object v2, v0

    .line 4
    :cond_5
    invoke-static {v1, v3, v2}, Lcom/hiya/stingray/util/p;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataUtil.getFormattedCit\u2026this?.zipCode.orEmpty()\n)"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
