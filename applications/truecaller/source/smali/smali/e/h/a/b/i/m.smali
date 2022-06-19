.class public final Le/h/a/b/i/m;
.super Le/h/a/b/i/n;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0002J\u0012\u0010\r\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000cH\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/content/TimerBigContentView;",
        "Lcom/clevertap/android/pushtemplates/content/TimerSmallContentView;",
        "context",
        "Landroid/content/Context;",
        "timer_end",
        "",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "(Landroid/content/Context;Ljava/lang/Integer;Lcom/clevertap/android/pushtemplates/TemplateRenderer;)V",
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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;Le/h/a/b/d;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/clevertap/android/pushtemplates/R$layout;->timer:I

    invoke-direct {p0, p1, p2, p3, v0}, Le/h/a/b/i/n;-><init>(Landroid/content/Context;Ljava/lang/Integer;Le/h/a/b/d;I)V

    .line 2
    iget-object p1, p3, Le/h/a/b/d;->r:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->d(Ljava/lang/String;)V

    .line 4
    iget-object p1, p3, Le/h/a/b/d;->e:Ljava/lang/String;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 7
    iget-object v1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 8
    sget v2, Lcom/clevertap/android/pushtemplates/R$id;->msg:I

    .line 9
    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    .line 10
    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 12
    sget v2, Lcom/clevertap/android/pushtemplates/R$id;->msg:I

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 13
    :cond_2
    :goto_1
    iget-object p1, p3, Le/h/a/b/d;->g:Ljava/lang/String;

    const/16 p3, 0x8

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_2

    :cond_3
    move p2, v0

    :goto_2
    if-eqz p2, :cond_4

    .line 15
    sget p2, Lcom/clevertap/android/pushtemplates/R$id;->big_image:I

    .line 16
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 17
    invoke-static {p2, p1, v0}, Le/h/a/b/g;->r(ILjava/lang/String;Landroid/widget/RemoteViews;)V

    .line 18
    sget-boolean p1, Le/h/a/b/b;->a:Z

    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 20
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 21
    :cond_4
    iget-object p1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 22
    sget p2, Lcom/clevertap/android/pushtemplates/R$id;->big_image:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_5
    :goto_3
    return-void
.end method
