.class public final Le/a/y/b/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/b/g0;


# instance fields
.field public final a:Ls1/g;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/b/h0;->b:Landroid/content/Context;

    .line 2
    new-instance p1, Le/a/y/b/h0$a;

    invoke-direct {p1, p0}, Le/a/y/b/h0$a;-><init>(Le/a/y/b/h0;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/y/b/h0;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/b/h0;->b:Landroid/content/Context;

    .line 2
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0, p1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public varargs b(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, "formatArgs"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/b/h0;->b:Landroid/content/Context;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(resId, *formatArgs)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/b/h0;->b:Landroid/content/Context;

    .line 2
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0, p1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lcom/truecaller/flashsdk/models/Payload;)Ljava/lang/String;
    .locals 7

    const-string v0, "payload"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "busy"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Le/a/y/b/h0;->b:Landroid/content/Context;

    sget v0, Lcom/truecaller/flashsdk/R$string;->is_busy:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.is_busy)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_1
    const-string v1, "\ud83d\udcde"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Le/a/y/b/h0;->b:Landroid/content/Context;

    sget v0, Lcom/truecaller/flashsdk/R$string;->calling_you_back:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.calling_you_back)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_2
    const-string v1, "ok"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Le/a/y/b/h0;->b:Landroid/content/Context;

    sget v0, Lcom/truecaller/flashsdk/R$string;->sfc_ok:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.sfc_ok)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_3
    const-string v1, "reject"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Le/a/y/b/h0;->b:Landroid/content/Context;

    sget v0, Lcom/truecaller/flashsdk/R$string;->reject:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.reject)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_4
    const-string v1, "missed"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Le/a/y/b/h0;->b:Landroid/content/Context;

    sget v0, Lcom/truecaller/flashsdk/R$string;->missed_your_flash:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.missed_your_flash)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :sswitch_5
    const-string v1, "accept"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Le/a/y/b/h0;->b:Landroid/content/Context;

    sget v0, Lcom/truecaller/flashsdk/R$string;->accept:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.accept)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "payload.message"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-gt v3, v0, :cond_7

    if-nez v4, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v0

    .line 10
    :goto_2
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 11
    invoke-static {v5, v6}, Ls1/z/c/l;->g(II)I

    move-result v5

    if-gtz v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    if-nez v4, :cond_5

    if-nez v5, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    :goto_4
    add-int/2addr v0, v1

    .line 12
    invoke-interface {p1, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d84af8 -> :sswitch_5
        -0x40021d65 -> :sswitch_4
        -0x37b68c61 -> :sswitch_3
        0xddc -> :sswitch_2
        0x1b0c41 -> :sswitch_1
        0x2e51f9 -> :sswitch_0
    .end sparse-switch
.end method

.method public e(Ljava/lang/String;IIILandroid/content/Context;)Landroid/text/SpannableString;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p4}, Le/a/y/b/h0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    const-string p5, "getDrawable(icon).mutate()"

    invoke-static {p4, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 2
    invoke-virtual {p4, p5, p5, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p4, p3, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 4
    new-instance p2, Landroid/text/style/ImageSpan;

    invoke-direct {p2, p4, p5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 5
    new-instance p3, Landroid/text/SpannableString;

    const/4 p4, 0x1

    new-array v0, p4, [Ljava/lang/Object;

    aput-object p1, v0, p5

    const-string p1, "   %s"

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, p4, p1, v1}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 p1, 0x21

    .line 6
    invoke-virtual {p3, p2, p5, p4, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p3
.end method

.method public f(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "imgUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/y/b/h0;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/z3/e;

    .line 2
    invoke-virtual {v0}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Le/a/m0/a1$k;->l(Le/f/a/r/a;Landroid/net/Uri;)Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/h;

    .line 4
    invoke-virtual {v0, p1}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    move-result-object p1

    const-string v0, "glideRequestManager.asBi\u2026            .load(imgUrl)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 p2, 0x40

    .line 5
    invoke-virtual {p0, p2}, Le/a/y/b/h0;->g(I)I

    move-result p2

    .line 6
    invoke-virtual {p1}, Le/f/a/r/a;->f()Le/f/a/r/a;

    goto :goto_0

    :cond_0
    const/16 p2, 0xc8

    .line 7
    invoke-virtual {p0, p2}, Le/a/y/b/h0;->g(I)I

    move-result p2

    .line 8
    invoke-virtual {p1}, Le/f/a/r/a;->c()Le/f/a/r/a;

    .line 9
    :goto_0
    invoke-virtual {p1, p2, p2}, Le/f/a/h;->Y(II)Le/f/a/r/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p1, Le/f/a/r/f;

    :try_start_1
    invoke-virtual {p1}, Le/f/a/r/f;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 10
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "could not get contact image for flash"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final g(I)I
    .locals 2

    int-to-float p1, p1

    .line 1
    iget-object v0, p0, Le/a/y/b/h0;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
