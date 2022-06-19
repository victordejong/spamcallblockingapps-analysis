.class public final Le/h/a/b/i/a;
.super Le/h/a/b/i/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0008\u0010\u000e\u001a\u00020\u0008H\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/content/AutoCarouselContentView;",
        "Lcom/clevertap/android/pushtemplates/content/BigImageContentView;",
        "context",
        "Landroid/content/Context;",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "(Landroid/content/Context;Lcom/clevertap/android/pushtemplates/TemplateRenderer;)V",
        "setCustomContentViewMessageSummary",
        "",
        "pt_msg_summary",
        "",
        "setCustomContentViewViewFlipperInterval",
        "interval",
        "",
        "setViewFlipper",
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/h/a/b/d;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/clevertap/android/pushtemplates/R$layout;->auto_carousel:I

    invoke-direct {p0, p1, p2, v0}, Le/h/a/b/i/b;-><init>(Landroid/content/Context;Le/h/a/b/d;I)V

    .line 2
    iget-object p1, p2, Le/h/a/b/d;->e:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 6
    sget v2, Lcom/clevertap/android/pushtemplates/R$id;->msg:I

    .line 7
    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    .line 8
    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 10
    sget v2, Lcom/clevertap/android/pushtemplates/R$id;->msg:I

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 11
    :cond_2
    :goto_1
    iget p1, p2, Le/h/a/b/d;->P:I

    .line 12
    iget-object p2, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 13
    sget v1, Lcom/clevertap/android/pushtemplates/R$id;->view_flipper:I

    const-string v2, "setFlipInterval"

    invoke-virtual {p2, v1, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 14
    iget-object p1, p0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 15
    iget-object p1, p1, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 16
    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_5

    :goto_2
    add-int/lit8 p2, v0, 0x1

    .line 17
    new-instance v1, Landroid/widget/RemoteViews;

    .line 18
    iget-object v2, p0, Le/h/a/b/i/c;->a:Landroid/content/Context;

    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/clevertap/android/pushtemplates/R$layout;->image_view:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 20
    sget v2, Lcom/clevertap/android/pushtemplates/R$id;->fimg:I

    .line 21
    iget-object v3, p0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 22
    iget-object v3, v3, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 23
    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0, v1}, Le/h/a/b/g;->r(ILjava/lang/String;Landroid/widget/RemoteViews;)V

    .line 24
    sget-boolean v0, Le/h/a/b/b;->a:Z

    if-nez v0, :cond_3

    .line 25
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 26
    sget v2, Lcom/clevertap/android/pushtemplates/R$id;->view_flipper:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :cond_3
    if-le p2, p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, p2

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method
