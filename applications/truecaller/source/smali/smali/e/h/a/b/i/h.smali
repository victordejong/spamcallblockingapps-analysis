.class public Le/h/a/b/i/h;
.super Le/h/a/b/i/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u000e\u0008\u0016\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\t2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000cH\u0002J\u001a\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000cH\u0002J\u001f\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\t2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000cH\u0000\u00a2\u0006\u0002\u0008\u001eJ\u001d\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008\"J\u0015\u0010#\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008$R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000cX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u000cX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011R\u000e\u0010\u0015\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/content/ProductDisplayLinearBigContentView;",
        "Lcom/clevertap/android/pushtemplates/content/ContentView;",
        "context",
        "Landroid/content/Context;",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "extras",
        "Landroid/os/Bundle;",
        "layoutId",
        "",
        "(Landroid/content/Context;Lcom/clevertap/android/pushtemplates/TemplateRenderer;Landroid/os/Bundle;I)V",
        "productDL",
        "",
        "productMessage",
        "getProductMessage",
        "()Ljava/lang/String;",
        "setProductMessage",
        "(Ljava/lang/String;)V",
        "productName",
        "getProductName",
        "setProductName",
        "productPrice",
        "setCustomContentViewButtonColour",
        "",
        "resourceID",
        "pt_product_display_action_clr",
        "setCustomContentViewButtonLabel",
        "pt_product_display_action",
        "setCustomContentViewButtonText",
        "pt_product_display_action_text_clr",
        "setCustomContentViewButtonText$clevertap_pushtemplates_release",
        "setCustomContentViewText",
        "resourceId",
        "s",
        "setCustomContentViewText$clevertap_pushtemplates_release",
        "setImageList",
        "setImageList$clevertap_pushtemplates_release",
        "clevertap-pushtemplates_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/h/a/b/d;Landroid/os/Bundle;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v1, "context"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "renderer"

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "extras"

    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v2, p4

    .line 1
    invoke-direct {v0, v7, v2, v8}, Le/h/a/b/i/c;-><init>(Landroid/content/Context;ILe/h/a/b/d;)V

    .line 2
    iget-object v2, v8, Le/h/a/b/d;->m:Ljava/util/ArrayList;

    .line 3
    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "renderer.bigTextList!![0]"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Le/h/a/b/i/h;->d:Ljava/lang/String;

    .line 4
    iget-object v2, v8, Le/h/a/b/d;->o:Ljava/util/ArrayList;

    .line 5
    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "renderer.priceList!![0]"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Le/h/a/b/i/h;->e:Ljava/lang/String;

    .line 6
    iget-object v2, v8, Le/h/a/b/d;->n:Ljava/util/ArrayList;

    .line 7
    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "renderer.smallTextList!![0]"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Le/h/a/b/i/h;->f:Ljava/lang/String;

    .line 8
    iget-object v2, v8, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 9
    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "renderer.deepLinkList!![0]"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Le/h/a/b/i/h;->g:Ljava/lang/String;

    const-string v2, "extras_from"

    const-string v4, ""

    .line 10
    invoke-virtual {v9, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "PTReceiver"

    .line 11
    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pt_current_position"

    .line 12
    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 13
    iget-object v4, v8, Le/h/a/b/d;->m:Ljava/util/ArrayList;

    .line 14
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "renderer.bigTextList!![currentPosition]"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Le/h/a/b/i/h;->d:Ljava/lang/String;

    .line 15
    iget-object v4, v8, Le/h/a/b/d;->o:Ljava/util/ArrayList;

    .line 16
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "renderer.priceList!![currentPosition]"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Le/h/a/b/i/h;->e:Ljava/lang/String;

    .line 17
    iget-object v4, v8, Le/h/a/b/d;->n:Ljava/util/ArrayList;

    .line 18
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "renderer.smallTextList!![currentPosition]"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Le/h/a/b/i/h;->f:Ljava/lang/String;

    .line 19
    iget-object v4, v8, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 20
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "renderer.deepLinkList!![currentPosition]"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Le/h/a/b/i/h;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move v2, v3

    .line 21
    :goto_0
    invoke-virtual/range {p0 .. p0}, Le/h/a/b/i/c;->a()V

    .line 22
    iget-object v4, v8, Le/h/a/b/d;->m:Ljava/util/ArrayList;

    .line 23
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v10, 0x1

    xor-int/2addr v4, v10

    if-eqz v4, :cond_1

    sget v4, Lcom/clevertap/android/pushtemplates/R$id;->product_name:I

    iget-object v5, v0, Le/h/a/b/i/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Le/h/a/b/i/h;->k(ILjava/lang/String;)V

    .line 24
    :cond_1
    iget-object v4, v8, Le/h/a/b/d;->o:Ljava/util/ArrayList;

    .line 25
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v10

    if-eqz v4, :cond_2

    sget v4, Lcom/clevertap/android/pushtemplates/R$id;->product_price:I

    iget-object v5, v0, Le/h/a/b/i/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Le/h/a/b/i/h;->k(ILjava/lang/String;)V

    .line 26
    :cond_2
    iget-object v4, v8, Le/h/a/b/d;->r:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v4}, Le/h/a/b/i/c;->d(Ljava/lang/String;)V

    .line 28
    sget v4, Lcom/clevertap/android/pushtemplates/R$id;->product_action:I

    .line 29
    iget-object v5, v8, Le/h/a/b/d;->p:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 30
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    move v6, v10

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    if-eqz v6, :cond_5

    .line 31
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v6, v11, :cond_4

    .line 32
    iget-object v6, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 33
    invoke-static {v5, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    .line 34
    invoke-virtual {v6, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 35
    :cond_4
    iget-object v6, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 36
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 37
    :cond_5
    :goto_2
    iget-object v5, v8, Le/h/a/b/d;->q:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 38
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    move v6, v10

    goto :goto_3

    :cond_6
    move v6, v3

    :goto_3
    if-eqz v6, :cond_7

    .line 39
    iget-object v6, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    const-string v11, "#FFBB33"

    .line 40
    invoke-static {v5, v11}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v11, "setBackgroundColor"

    .line 41
    invoke-virtual {v6, v4, v11, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 42
    :cond_7
    iget-object v5, v8, Le/h/a/b/d;->H:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 43
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    move v6, v10

    goto :goto_4

    :cond_8
    move v6, v3

    :goto_4
    if-eqz v6, :cond_9

    .line 44
    iget-object v6, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    const-string v11, "#FFFFFF"

    .line 45
    invoke-static {v5, v11}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 46
    invoke-virtual {v6, v4, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 47
    :cond_9
    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    sget v4, Lcom/clevertap/android/pushtemplates/R$id;->small_image1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget v4, Lcom/clevertap/android/pushtemplates/R$id;->small_image2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget v4, Lcom/clevertap/android/pushtemplates/R$id;->small_image3:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v5, v0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 54
    iget-object v5, v5, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 55
    invoke-static {v5}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_d

    move v6, v3

    move v11, v6

    move v12, v11

    :goto_5
    add-int/lit8 v13, v6, 0x1

    .line 56
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "smallImageLayoutIds[imageCounter]"

    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    .line 57
    iget-object v10, v0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 58
    iget-object v10, v10, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 59
    invoke-static {v10}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 60
    iget-object v3, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 61
    invoke-static {v14, v10, v3}, Le/h/a/b/g;->r(ILjava/lang/String;Landroid/widget/RemoteViews;)V

    .line 62
    new-instance v3, Landroid/widget/RemoteViews;

    .line 63
    iget-object v10, v0, Le/h/a/b/i/c;->a:Landroid/content/Context;

    .line 64
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    sget v14, Lcom/clevertap/android/pushtemplates/R$layout;->image_view:I

    invoke-direct {v3, v10, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 65
    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->fimg:I

    .line 66
    iget-object v14, v0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 67
    iget-object v14, v14, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 68
    invoke-static {v14}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v10, v14, v3}, Le/h/a/b/g;->r(ILjava/lang/String;Landroid/widget/RemoteViews;)V

    .line 69
    sget-boolean v10, Le/h/a/b/b;->a:Z

    if-nez v10, :cond_b

    if-nez v12, :cond_a

    const/4 v12, 0x1

    .line 70
    :cond_a
    iget-object v10, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 71
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    const/4 v15, 0x0

    .line 72
    invoke-virtual {v10, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 73
    iget-object v10, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 74
    sget v14, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image:I

    invoke-virtual {v10, v14, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v11, v11, 0x1

    .line 75
    iget-object v3, v0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 76
    iget-object v3, v3, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 77
    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    const/4 v15, 0x0

    .line 78
    iget-object v3, v0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 79
    iget-object v3, v3, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 80
    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 81
    iget-object v3, v0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 82
    iget-object v3, v3, Le/h/a/b/d;->m:Ljava/util/ArrayList;

    .line 83
    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 84
    iget-object v3, v0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 85
    iget-object v3, v3, Le/h/a/b/d;->n:Ljava/util/ArrayList;

    .line 86
    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 87
    iget-object v3, v0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 88
    iget-object v3, v3, Le/h/a/b/d;->o:Ljava/util/ArrayList;

    .line 89
    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_6
    if-le v13, v5, :cond_c

    goto :goto_7

    :cond_c
    move v6, v13

    move v3, v15

    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_d
    :goto_7
    const-string v1, "pt_image_list"

    .line 90
    invoke-virtual {v9, v1, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 91
    iget-object v1, v0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 92
    iget-object v1, v1, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    const-string v3, "pt_deeplink_list"

    .line 93
    invoke-virtual {v9, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 94
    iget-object v1, v0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 95
    iget-object v1, v1, Le/h/a/b/d;->m:Ljava/util/ArrayList;

    const-string v3, "pt_big_text_list"

    .line 96
    invoke-virtual {v9, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 97
    iget-object v1, v0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 98
    iget-object v1, v1, Le/h/a/b/d;->n:Ljava/util/ArrayList;

    const-string v3, "pt_small_text_list"

    .line 99
    invoke-virtual {v9, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 100
    iget-object v1, v0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 101
    iget-object v1, v1, Le/h/a/b/d;->o:Ljava/util/ArrayList;

    const-string v3, "pt_price_list"

    .line 102
    invoke-virtual {v9, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 103
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 104
    sget v3, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image:I

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setDisplayedChild(II)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Le/h/a/b/i/c;->c()V

    .line 106
    invoke-virtual/range {p0 .. p0}, Le/h/a/b/i/c;->h()V

    .line 107
    iget-object v10, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 108
    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->small_image1:I

    .line 109
    iget v2, v8, Le/h/a/b/d;->T:I

    const/4 v4, 0x0

    const/16 v5, 0x15

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p2

    .line 110
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 111
    invoke-virtual {v10, v11, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 112
    iget-object v1, v8, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 113
    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_e

    .line 114
    iget-object v10, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 115
    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->small_image2:I

    .line 116
    iget v2, v8, Le/h/a/b/d;->T:I

    const/4 v4, 0x0

    const/16 v5, 0x16

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p2

    .line 117
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 118
    invoke-virtual {v10, v11, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 119
    :cond_e
    iget-object v1, v8, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 120
    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_f

    .line 121
    iget-object v10, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 122
    sget v11, Lcom/clevertap/android/pushtemplates/R$id;->small_image3:I

    .line 123
    iget v2, v8, Le/h/a/b/d;->T:I

    const/4 v4, 0x0

    const/16 v5, 0x17

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p2

    .line 124
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 125
    invoke-virtual {v10, v11, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 126
    :cond_f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "img1"

    const/4 v3, 0x1

    .line 127
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    iget v2, v8, Le/h/a/b/d;->T:I

    const-string v4, "notificationId"

    .line 129
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    iget-object v2, v0, Le/h/a/b/i/h;->g:Ljava/lang/String;

    const-string v4, "pt_buy_now_dl"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "buynow"

    .line 131
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    iget-object v2, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 133
    sget v3, Lcom/clevertap/android/pushtemplates/R$id;->product_action:I

    .line 134
    iget-object v4, v0, Le/h/a/b/i/h;->g:Ljava/lang/String;

    .line 135
    iget v5, v8, Le/h/a/b/d;->T:I

    .line 136
    invoke-static {v7, v1, v4, v5}, Le/h/a/b/i/g;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 137
    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public final k(ILjava/lang/String;)V
    .locals 3

    const-string v0, "s"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 4
    invoke-static {p2, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p2

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 7
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method
