.class public final Lcom/hiya/stingray/t/h1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/hiya/stingray/t/h1/d;)Ljava/lang/String;
    .locals 5

    const-string v0, "$this$address"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->a()Lcom/hiya/stingray/t/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->a()Lcom/hiya/stingray/t/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/stingray/t/n;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->a()Lcom/hiya/stingray/t/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/t/n;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v1

    .line 4
    :goto_2
    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->a()Lcom/hiya/stingray/t/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hiya/stingray/t/n;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move-object v4, v1

    .line 5
    :goto_3
    invoke-static {v2, v3, v4}, Lcom/hiya/stingray/util/p;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_5

    const-string p0, "formattedCityStateZip"

    .line 7
    invoke-static {v2, p0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->a()Lcom/hiya/stingray/t/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v1, v0

    :cond_6
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_8

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->a()Lcom/hiya/stingray/t/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hiya/stingray/t/n;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    const-string p0, "if (!addressComponent.st\u2026tedCityStateZip\n        }"

    .line 10
    invoke-static {v2, p0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    return-object v2
.end method

.method public static final b(Lcom/hiya/stingray/t/h1/d;)Z
    .locals 3

    const-string v0, "$this$hasDelivery"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->c()Lcom/hiya/stingray/t/h1/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->c()Lcom/hiya/stingray/t/h1/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/f;->c()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static final c(Lcom/hiya/stingray/t/h1/d;)Z
    .locals 3

    const-string v0, "$this$hasReservation"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->n()Lcom/hiya/stingray/t/h1/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->n()Lcom/hiya/stingray/t/h1/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/f;->c()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static final d(Lcom/hiya/stingray/t/h1/d;)Lcom/hiya/stingray/t/n0;
    .locals 5

    const-string v0, "$this$getIdentityData"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/n0;->a()Lcom/hiya/stingray/t/n0$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 3
    sget-object v1, Lcom/hiya/stingray/t/o0;->API:Lcom/hiya/stingray/t/o0;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->d(Lcom/hiya/stingray/t/o0;)Lcom/hiya/stingray/t/n0$a;

    .line 4
    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 5
    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->j()Ljava/util/List;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 8
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/String;

    .line 12
    sget-object v4, Lcom/hiya/stingray/t/v0;->PHONE:Lcom/hiya/stingray/t/v0;

    invoke-static {v3, v4}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/s/b0;->p(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->h(Ljava/util/Map;)Lcom/hiya/stingray/t/n0$a;

    .line 13
    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->a()Lcom/hiya/stingray/t/n;

    move-result-object v1

    invoke-static {v1}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/n0$a;->b(Ljava/util/List;)Lcom/hiya/stingray/t/n0$a;

    .line 14
    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/t/n0$a;->i(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 15
    sget-object p0, Lcom/hiya/stingray/t/m0;->BUSINESS:Lcom/hiya/stingray/t/m0;

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/t/n0$a;->e(Lcom/hiya/stingray/t/m0;)Lcom/hiya/stingray/t/n0$a;

    .line 16
    invoke-static {}, Lcom/google/common/collect/z;->y()Lcom/google/common/collect/z;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/t/n0$a;->j(Lcom/google/common/collect/z;)Lcom/hiya/stingray/t/n0$a;

    .line 17
    invoke-static {}, Lcom/hiya/stingray/t/r0;->b()Lcom/hiya/stingray/t/r0$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hiya/stingray/t/r0$a;->a()Lcom/hiya/stingray/t/r0;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/t/n0$a;->f(Lcom/hiya/stingray/t/r0;)Lcom/hiya/stingray/t/n0$a;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0$a;->a()Lcom/hiya/stingray/t/n0;

    move-result-object p0

    const-string v0, "IdentityData.builder()\n \u2026.empty().build()).build()"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final e(Lcom/hiya/stingray/t/h1/d;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "$this$getLocalizedDistance"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Locale.getDefault()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Locale.US"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/l;

    const v1, 0x7f110199

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->g()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/hiya/stingray/util/v;->a(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lkotlin/l;

    const v1, 0x7f110198

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->g()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-virtual {v0}, Lkotlin/l;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/l;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.1f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lcom/hiya/stingray/t/h1/d;)I
    .locals 1

    const-string v0, "$this$priceDescriptionStringId"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const p0, 0x7f110196

    goto :goto_0

    :cond_0
    const p0, 0x7f110194

    goto :goto_0

    :cond_1
    const p0, 0x7f110193

    goto :goto_0

    :cond_2
    const p0, 0x7f110192

    goto :goto_0

    :cond_3
    const p0, 0x7f110191

    :goto_0
    return p0
.end method

.method public static final g(Lcom/hiya/stingray/t/h1/d;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "$this$getRatingContentDescription"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/d;->m()Lcom/hiya/stingray/t/h1/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hiya/stingray/t/h1/h;->a()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/v;->b(D)F

    move-result p0

    const/4 v0, 0x1

    int-to-float v1, v0

    rem-float v1, p0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f0004

    float-to-int p0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 4
    invoke-virtual {p1, v1, p0, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "context.resources.getQua\u2026dRating.toInt()\n        )"

    invoke-static {p0, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f110197

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "context.getString(R.stri\u2026action_cd, roundedRating)"

    invoke-static {p0, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
