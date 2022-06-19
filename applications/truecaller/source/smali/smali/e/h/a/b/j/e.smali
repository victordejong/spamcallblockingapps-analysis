.class public final Le/h/a/b/j/e;
.super Le/h/a/b/j/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0003H\u0014J\"\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0014J\"\u0010\u000f\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0018\u0010\u0010\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0003H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/styles/ManualCarouselStyle;",
        "Lcom/clevertap/android/pushtemplates/styles/Style;",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "extras",
        "Landroid/os/Bundle;",
        "(Lcom/clevertap/android/pushtemplates/TemplateRenderer;Landroid/os/Bundle;)V",
        "makeBigContentView",
        "Landroid/widget/RemoteViews;",
        "context",
        "Landroid/content/Context;",
        "makeDismissIntent",
        "Landroid/app/PendingIntent;",
        "notificationId",
        "",
        "makePendingIntent",
        "makeSmallContentView",
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
.field public b:Le/h/a/b/d;

.field public c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Le/h/a/b/d;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "renderer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/h/a/b/j/h;-><init>(Le/h/a/b/d;)V

    iput-object p1, p0, Le/h/a/b/j/e;->b:Le/h/a/b/d;

    iput-object p2, p0, Le/h/a/b/j/e;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Le/h/a/b/d;)Landroid/widget/RemoteViews;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/h/a/b/i/f;

    iget-object v1, p0, Le/h/a/b/j/e;->c:Landroid/os/Bundle;

    invoke-direct {v0, p1, p2, v1}, Le/h/a/b/i/f;-><init>(Landroid/content/Context;Le/h/a/b/d;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method public c(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/PendingIntent;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v6, p0, Le/h/a/b/j/e;->b:Le/h/a/b/d;

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    .line 2
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/PendingIntent;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras_from"

    .line 1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "PTReceiver"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    .line 3
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x3

    .line 4
    iget-object v5, p0, Le/h/a/b/j/e;->b:Le/h/a/b/d;

    move-object v0, p1

    move v1, p3

    move-object v2, p2

    .line 5
    invoke-static/range {v0 .. v5}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public e(Landroid/content/Context;Le/h/a/b/d;)Landroid/widget/RemoteViews;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/h/a/b/i/l;

    .line 2
    sget v1, Lcom/clevertap/android/pushtemplates/R$layout;->content_view_small_single_line_msg:I

    .line 3
    invoke-direct {v0, p1, p2, v1}, Le/h/a/b/i/l;-><init>(Landroid/content/Context;Le/h/a/b/d;I)V

    .line 4
    iget-object p1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    return-object p1
.end method
