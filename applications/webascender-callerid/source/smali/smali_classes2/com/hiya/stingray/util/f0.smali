.class public final Lcom/hiya/stingray/util/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/hiya/stingray/ui/common/n;)Lcom/hiya/stingray/ui/common/o;
    .locals 1

    const v0, 0x7f0700e2

    .line 1
    invoke-static {p0, p1, v0}, Lcom/hiya/stingray/util/f0;->b(Landroid/content/Context;Lcom/hiya/stingray/ui/common/n;I)Lcom/hiya/stingray/ui/common/o;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/hiya/stingray/ui/common/n;I)Lcom/hiya/stingray/ui/common/o;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/common/o;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-direct {v0, p0, p2, p1}, Lcom/hiya/stingray/ui/common/o;-><init>(Landroid/content/Context;ILcom/hiya/stingray/ui/common/n;)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0}, Lcom/hiya/stingray/ui/common/o;->h(Z)V

    return-object v0
.end method

.method public static c(I)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p0, p0

    mul-float p0, p0, v0

    .line 2
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, ","

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p0, v4

    if-eqz v5, :cond_1

    .line 4
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_0

    const-string v6, " "

    .line 8
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const v0, 0x7f110402

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 3
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p1, p0}, Lcom/hiya/stingray/util/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public static f(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/joda/time/l;

    invoke-direct {v1, v0}, Lorg/joda/time/l;-><init>(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lorg/joda/time/l;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/l;-><init>(J)V

    .line 4
    invoke-static {v0, v1}, Lorg/joda/time/g;->n(Lorg/joda/time/t;Lorg/joda/time/t;)Lorg/joda/time/g;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/g;->p()I

    move-result p1

    .line 5
    sget-object p2, Lorg/joda/time/g;->g:Lorg/joda/time/g;

    invoke-virtual {p2}, Lorg/joda/time/g;->p()I

    move-result p2

    if-ne p1, p2, :cond_0

    const p1, 0x7f1103f6

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    sget-object p2, Lorg/joda/time/g;->h:Lorg/joda/time/g;

    invoke-virtual {p2}, Lorg/joda/time/g;->p()I

    move-result v0

    if-ne p1, v0, :cond_1

    const p1, 0x7f110421

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-virtual {p2}, Lorg/joda/time/g;->p()I

    move-result p2

    if-le p1, p2, :cond_2

    const/4 p2, 0x5

    if-ge p1, p2, :cond_2

    .line 10
    invoke-virtual {v1, p1}, Lorg/joda/time/l;->m(I)Lorg/joda/time/l;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lorg/joda/time/l;->h()Lorg/joda/time/l$a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/joda/time/a0/a;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f11023c

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, v0}, Lcom/hiya/stingray/util/f0;->h(Ljava/lang/String;Landroid/widget/ImageView;ILcom/squareup/picasso/Picasso;Lcom/squareup/picasso/e;)V

    return-void
.end method

.method public static h(Ljava/lang/String;Landroid/widget/ImageView;ILcom/squareup/picasso/Picasso;Lcom/squareup/picasso/e;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    if-nez p3, :cond_0

    .line 2
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p3

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/x;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/squareup/picasso/x;->a()Lcom/squareup/picasso/x;

    .line 5
    invoke-virtual {p0, p2, p2}, Lcom/squareup/picasso/x;->q(II)Lcom/squareup/picasso/x;

    new-instance p2, Lcom/hiya/stingray/ui/x/a;

    invoke-direct {p2}, Lcom/hiya/stingray/ui/x/a;-><init>()V

    .line 6
    invoke-virtual {p0, p2}, Lcom/squareup/picasso/x;->s(Lcom/squareup/picasso/e0;)Lcom/squareup/picasso/x;

    .line 7
    invoke-virtual {p0, p1, p4}, Lcom/squareup/picasso/x;->h(Landroid/widget/ImageView;Lcom/squareup/picasso/e;)V

    return-void
.end method

.method public static i(Lcom/hiya/stingray/t/b0;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/hiya/stingray/t/b0;->CALL_SCREENER_BLOCKED:Lcom/hiya/stingray/t/b0;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/hiya/stingray/t/b0;->WHITE_LISTED:Lcom/hiya/stingray/t/b0;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/ui/common/n$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/t/d0;

    invoke-virtual {v2}, Lcom/hiya/stingray/t/d0;->s()J

    move-result-wide v2

    .line 4
    new-instance v4, Lcom/hiya/stingray/ui/common/n$c;

    .line 5
    invoke-static {p0, v2, v3}, Lcom/hiya/stingray/util/f0;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/hiya/stingray/ui/common/n$c;-><init>(ILjava/lang/CharSequence;)V

    if-nez v1, :cond_0

    .line 6
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hiya/stingray/ui/common/n$c;

    invoke-virtual {v5}, Lcom/hiya/stingray/ui/common/n$c;->c()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {p0, v2, v3}, Lcom/hiya/stingray/util/f0;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
