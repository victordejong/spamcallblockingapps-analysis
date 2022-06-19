.class public final Le/h/a/b/i/o;
.super Le/h/a/b/i/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nH\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/content/ZeroBezelBigContentView;",
        "Lcom/clevertap/android/pushtemplates/content/ContentView;",
        "context",
        "Landroid/content/Context;",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "(Landroid/content/Context;Lcom/clevertap/android/pushtemplates/TemplateRenderer;)V",
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
.method public constructor <init>(Landroid/content/Context;Le/h/a/b/d;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/clevertap/android/pushtemplates/R$layout;->zero_bezel:I

    invoke-direct {p0, p1, v0, p2}, Le/h/a/b/i/c;-><init>(Landroid/content/Context;ILe/h/a/b/d;)V

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
    iget-object p1, p2, Le/h/a/b/d;->e:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 10
    iget-object v2, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 11
    sget v3, Lcom/clevertap/android/pushtemplates/R$id;->msg:I

    .line 12
    invoke-static {p1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    .line 13
    invoke-virtual {v2, v3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v2, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 15
    sget v3, Lcom/clevertap/android/pushtemplates/R$id;->msg:I

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 16
    :cond_2
    :goto_1
    iget-object p1, p2, Le/h/a/b/d;->h:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->j(Ljava/lang/String;)V

    .line 18
    iget-object p1, p2, Le/h/a/b/d;->r:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->d(Ljava/lang/String;)V

    .line 20
    iget-object p1, p2, Le/h/a/b/d;->i:Ljava/lang/String;

    .line 21
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->g(Ljava/lang/String;)V

    .line 22
    iget-object p1, p2, Le/h/a/b/d;->g:Ljava/lang/String;

    const/16 p2, 0x8

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 24
    sget v0, Lcom/clevertap/android/pushtemplates/R$id;->big_image:I

    .line 25
    iget-object v1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 26
    invoke-static {v0, p1, v1}, Le/h/a/b/g;->r(ILjava/lang/String;Landroid/widget/RemoteViews;)V

    .line 27
    sget-boolean p1, Le/h/a/b/b;->a:Z

    if-eqz p1, :cond_5

    .line 28
    iget-object p1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 29
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 30
    :cond_4
    iget-object p1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 31
    sget v0, Lcom/clevertap/android/pushtemplates/R$id;->big_image:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 32
    :cond_5
    :goto_3
    invoke-virtual {p0}, Le/h/a/b/i/c;->h()V

    .line 33
    invoke-virtual {p0}, Le/h/a/b/i/c;->c()V

    return-void
.end method
