.class public Le/h/a/b/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0016\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0006\u0010\u001c\u001a\u00020\u0018J\u0010\u0010\u001d\u001a\u00020\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010\u001e\u001a\u00020\u00182\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010 \u001a\u00020\u00182\u0008\u0010!\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010\"\u001a\u00020\u00182\u0008\u0010#\u001a\u0004\u0018\u00010\u001bJ\u0006\u0010$\u001a\u00020\u0018J\u0010\u0010%\u001a\u00020\u00182\u0008\u0010&\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010\'\u001a\u00020\u00182\u0008\u0010(\u001a\u0004\u0018\u00010\u001bJ\u0008\u0010)\u001a\u00020\u0018H\u0002R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006*"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/content/ContentView;",
        "",
        "context",
        "Landroid/content/Context;",
        "layoutId",
        "",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "(Landroid/content/Context;ILcom/clevertap/android/pushtemplates/TemplateRenderer;)V",
        "getContext$clevertap_pushtemplates_release",
        "()Landroid/content/Context;",
        "setContext$clevertap_pushtemplates_release",
        "(Landroid/content/Context;)V",
        "remoteView",
        "Landroid/widget/RemoteViews;",
        "getRemoteView$clevertap_pushtemplates_release",
        "()Landroid/widget/RemoteViews;",
        "setRemoteView$clevertap_pushtemplates_release",
        "(Landroid/widget/RemoteViews;)V",
        "getRenderer$clevertap_pushtemplates_release",
        "()Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "setRenderer$clevertap_pushtemplates_release",
        "(Lcom/clevertap/android/pushtemplates/TemplateRenderer;)V",
        "setCustomContentViewBasicKeys",
        "",
        "setCustomContentViewCollapsedBackgroundColour",
        "pt_bg",
        "",
        "setCustomContentViewDotSep",
        "setCustomContentViewExpandedBackgroundColour",
        "setCustomContentViewLargeIcon",
        "pt_large_icon",
        "setCustomContentViewMessage",
        "pt_msg",
        "setCustomContentViewMessageColour",
        "pt_msg_clr",
        "setCustomContentViewSmallIcon",
        "setCustomContentViewTitle",
        "pt_title",
        "setCustomContentViewTitleColour",
        "pt_title_clr",
        "setDotSep",
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
.field public a:Landroid/content/Context;

.field public b:Le/h/a/b/d;

.field public c:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILe/h/a/b/d;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/h/a/b/i/c;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 4
    new-instance p1, Landroid/widget/RemoteViews;

    iget-object p3, p0, Le/h/a/b/i/c;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    sget v1, Lcom/clevertap/android/pushtemplates/R$id;->app_name:I

    iget-object v2, p0, Le/h/a/b/i/c;->a:Landroid/content/Context;

    invoke-static {v2}, Le/h/a/b/g;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    sget v2, Lcom/clevertap/android/pushtemplates/R$id;->timestamp:I

    iget-object v3, p0, Le/h/a/b/i/c;->a:Landroid/content/Context;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 6
    iget-object v0, v0, Le/h/a/b/d;->O:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_1

    .line 9
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 10
    sget v4, Lcom/clevertap/android/pushtemplates/R$id;->subtitle:I

    .line 11
    iget-object v5, p0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 12
    iget-object v5, v5, Le/h/a/b/d;->O:Ljava/lang/String;

    .line 13
    invoke-static {v5, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    .line 14
    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    sget v4, Lcom/clevertap/android/pushtemplates/R$id;->subtitle:I

    iget-object v5, p0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 16
    iget-object v5, v5, Le/h/a/b/d;->O:Ljava/lang/String;

    .line 17
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 18
    :cond_2
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    sget v4, Lcom/clevertap/android/pushtemplates/R$id;->subtitle:I

    const/16 v5, 0x8

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 19
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    sget v4, Lcom/clevertap/android/pushtemplates/R$id;->sep_subtitle:I

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 20
    :goto_1
    iget-object v0, p0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 21
    iget-object v0, v0, Le/h/a/b/d;->G:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 22
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    if-eqz v6, :cond_4

    .line 23
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 24
    iget-object v3, p0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 25
    iget-object v3, v3, Le/h/a/b/d;->G:Ljava/lang/String;

    const-string v4, "#A6A6A6"

    .line 26
    invoke-static {v3, v4}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 27
    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 28
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 29
    iget-object v1, p0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 30
    iget-object v1, v1, Le/h/a/b/d;->G:Ljava/lang/String;

    .line 31
    invoke-static {v1, v4}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 33
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 34
    sget v1, Lcom/clevertap/android/pushtemplates/R$id;->subtitle:I

    .line 35
    iget-object v2, p0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 36
    iget-object v2, v2, Le/h/a/b/d;->G:Ljava/lang/String;

    .line 37
    invoke-static {v2, v4}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 39
    :try_start_0
    iget-object v0, p0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    iget-object v1, p0, Le/h/a/b/i/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "pt_dot_sep"

    const-string v3, "drawable"

    .line 40
    iget-object v4, p0, Le/h/a/b/i/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 42
    iput v1, v0, Le/h/a/b/d;->v:I

    .line 43
    iget-object v0, p0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    iget-object v1, p0, Le/h/a/b/i/c;->a:Landroid/content/Context;

    .line 44
    iget v2, v0, Le/h/a/b/d;->v:I

    .line 45
    iget-object v3, v0, Le/h/a/b/d;->G:Ljava/lang/String;

    .line 46
    invoke-static {v1, v2, v3}, Le/h/a/b/g;->u(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 47
    iput-object v1, v0, Le/h/a/b/d;->K:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 3
    sget v1, Lcom/clevertap/android/pushtemplates/R$id;->content_view_small:I

    const-string v2, "#FFFFFF"

    .line 4
    invoke-static {p1, v2}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string v2, "setBackgroundColor"

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 2
    iget-object v0, v0, Le/h/a/b/d;->K:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    sget v1, Lcom/clevertap/android/pushtemplates/R$id;->sep:I

    iget-object v2, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 4
    invoke-virtual {v2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 5
    sget v0, Lcom/clevertap/android/pushtemplates/R$id;->sep_subtitle:I

    iget-object v1, p0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 6
    iget-object v1, v1, Le/h/a/b/d;->K:Landroid/graphics/Bitmap;

    .line 7
    iget-object v2, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 8
    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 3
    sget v1, Lcom/clevertap/android/pushtemplates/R$id;->content_view_big:I

    const-string v2, "#FFFFFF"

    .line 4
    invoke-static {p1, v2}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string v2, "setBackgroundColor"

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    sget v0, Lcom/clevertap/android/pushtemplates/R$id;->large_icon:I

    iget-object v1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    invoke-static {v0, p1, v1}, Le/h/a/b/g;->r(ILjava/lang/String;Landroid/widget/RemoteViews;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    sget v0, Lcom/clevertap/android/pushtemplates/R$id;->large_icon:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

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
    sget v2, Lcom/clevertap/android/pushtemplates/R$id;->msg:I

    .line 5
    invoke-static {p1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    .line 6
    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    sget v1, Lcom/clevertap/android/pushtemplates/R$id;->msg:I

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 3
    sget v1, Lcom/clevertap/android/pushtemplates/R$id;->msg:I

    const-string v2, "#000000"

    .line 4
    invoke-static {p1, v2}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/b/i/c;->b:Le/h/a/b/d;

    .line 2
    iget-object v1, v0, Le/h/a/b/d;->J:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 3
    sget v0, Lcom/clevertap/android/pushtemplates/R$id;->small_icon:I

    iget-object v2, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 4
    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 5
    :cond_0
    sget v1, Lcom/clevertap/android/pushtemplates/R$id;->small_icon:I

    .line 6
    iget v0, v0, Le/h/a/b/d;->u:I

    .line 7
    iget-object v2, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 8
    invoke-virtual {v2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

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
    sget v2, Lcom/clevertap/android/pushtemplates/R$id;->title:I

    .line 5
    invoke-static {p1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    .line 6
    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    sget v1, Lcom/clevertap/android/pushtemplates/R$id;->title:I

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 3
    sget v1, Lcom/clevertap/android/pushtemplates/R$id;->title:I

    const-string v2, "#000000"

    .line 4
    invoke-static {p1, v2}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_1
    return-void
.end method
