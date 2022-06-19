.class public Le/h/a/b/i/b;
.super Le/h/a/b/i/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0002J\u0012\u0010\r\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000cH\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/content/BigImageContentView;",
        "Lcom/clevertap/android/pushtemplates/content/ContentView;",
        "context",
        "Landroid/content/Context;",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "layoutId",
        "",
        "(Landroid/content/Context;Lcom/clevertap/android/pushtemplates/TemplateRenderer;I)V",
        "setCustomContentViewBigImage",
        "",
        "pt_big_img",
        "",
        "setCustomContentViewMessageSummary",
        "pt_msg_summary",
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
.method public constructor <init>(Landroid/content/Context;Le/h/a/b/d;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p3, p2}, Le/h/a/b/i/c;-><init>(Landroid/content/Context;ILe/h/a/b/d;)V

    .line 2
    invoke-virtual {p0}, Le/h/a/b/i/c;->a()V

    .line 3
    iget-object p1, p2, Le/h/a/b/d;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->i(Ljava/lang/String;)V

    .line 5
    iget-object p1, p2, Le/h/a/b/d;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->f(Ljava/lang/String;)V

    .line 7
    iget-object p1, p2, Le/h/a/b/d;->r:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->d(Ljava/lang/String;)V

    .line 9
    iget-object p1, p2, Le/h/a/b/d;->h:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->j(Ljava/lang/String;)V

    .line 11
    iget-object p1, p2, Le/h/a/b/d;->i:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->g(Ljava/lang/String;)V

    .line 13
    iget-object p1, p2, Le/h/a/b/d;->e:Ljava/lang/String;

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 16
    iget-object v1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 17
    sget v2, Lcom/clevertap/android/pushtemplates/R$id;->msg:I

    .line 18
    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    .line 19
    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 20
    :cond_1
    iget-object v1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 21
    sget v2, Lcom/clevertap/android/pushtemplates/R$id;->msg:I

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 22
    :cond_2
    :goto_1
    invoke-virtual {p0}, Le/h/a/b/i/c;->h()V

    .line 23
    invoke-virtual {p0}, Le/h/a/b/i/c;->c()V

    .line 24
    iget-object p1, p2, Le/h/a/b/d;->g:Ljava/lang/String;

    const/16 v1, 0x8

    if-eqz p1, :cond_4

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_2

    :cond_3
    move p3, v0

    :goto_2
    if-eqz p3, :cond_4

    .line 26
    sget p3, Lcom/clevertap/android/pushtemplates/R$id;->big_image:I

    .line 27
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 28
    invoke-static {p3, p1, v0}, Le/h/a/b/g;->r(ILjava/lang/String;Landroid/widget/RemoteViews;)V

    .line 29
    sget-boolean p1, Le/h/a/b/b;->a:Z

    if-eqz p1, :cond_5

    .line 30
    iget-object p1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 31
    invoke-virtual {p1, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 32
    :cond_4
    iget-object p1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 33
    sget p3, Lcom/clevertap/android/pushtemplates/R$id;->big_image:I

    invoke-virtual {p1, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 34
    :cond_5
    :goto_3
    iget-object p1, p2, Le/h/a/b/d;->f:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->e(Ljava/lang/String;)V

    return-void
.end method
