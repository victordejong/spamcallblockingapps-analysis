.class public final Le/h/a/b/i/p;
.super Le/h/a/b/i/q;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/content/ZeroBezelMixedSmallContentView;",
        "Lcom/clevertap/android/pushtemplates/content/ZeroBezelSmallContentView;",
        "context",
        "Landroid/content/Context;",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "(Landroid/content/Context;Lcom/clevertap/android/pushtemplates/TemplateRenderer;)V",
        "setCustomContentViewBigImage",
        "",
        "pt_big_img",
        "",
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
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/clevertap/android/pushtemplates/R$layout;->cv_small_zero_bezel:I

    invoke-direct {p0, p1, v0, p2}, Le/h/a/b/i/q;-><init>(Landroid/content/Context;ILe/h/a/b/d;)V

    .line 2
    iget-object p1, p2, Le/h/a/b/d;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->f(Ljava/lang/String;)V

    .line 4
    iget-object p1, p2, Le/h/a/b/d;->g:Ljava/lang/String;

    const/16 p2, 0x8

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    sget v0, Lcom/clevertap/android/pushtemplates/R$id;->big_image:I

    .line 7
    iget-object v1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 8
    invoke-static {v0, p1, v1}, Le/h/a/b/g;->r(ILjava/lang/String;Landroid/widget/RemoteViews;)V

    .line 9
    sget-boolean p1, Le/h/a/b/b;->a:Z

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object p1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 13
    sget v0, Lcom/clevertap/android/pushtemplates/R$id;->big_image:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_2
    :goto_1
    return-void
.end method
