.class public final Le/h/a/b/j/j;
.super Le/h/a/b/j/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0014J\"\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0014J\"\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/styles/ZeroBezelStyle;",
        "Lcom/clevertap/android/pushtemplates/styles/Style;",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "(Lcom/clevertap/android/pushtemplates/TemplateRenderer;)V",
        "makeBigContentView",
        "Landroid/widget/RemoteViews;",
        "context",
        "Landroid/content/Context;",
        "makeDismissIntent",
        "Landroid/app/PendingIntent;",
        "extras",
        "Landroid/os/Bundle;",
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


# direct methods
.method public constructor <init>(Le/h/a/b/d;)V
    .locals 1

    const-string v0, "renderer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/h/a/b/j/h;-><init>(Le/h/a/b/d;)V

    iput-object p1, p0, Le/h/a/b/j/j;->b:Le/h/a/b/d;

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Le/h/a/b/d;)Landroid/widget/RemoteViews;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/h/a/b/i/o;

    invoke-direct {v0, p1, p2}, Le/h/a/b/i/o;-><init>(Landroid/content/Context;Le/h/a/b/d;)V

    .line 2
    iget-object p1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method public c(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/PendingIntent;
    .locals 0

    const-string p3, "context"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/PendingIntent;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v6, p0, Le/h/a/b/j/j;->b:Le/h/a/b/d;

    const/4 v4, 0x1

    const/16 v5, 0x1d

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    .line 2
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;Le/h/a/b/d;)Landroid/widget/RemoteViews;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p2, Le/h/a/b/d;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "text_only"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Le/h/a/b/i/r;

    invoke-direct {v0, p1, p2}, Le/h/a/b/i/r;-><init>(Landroid/content/Context;Le/h/a/b/d;)V

    .line 4
    iget-object p1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Le/h/a/b/i/p;

    invoke-direct {v0, p1, p2}, Le/h/a/b/i/p;-><init>(Landroid/content/Context;Le/h/a/b/d;)V

    .line 6
    iget-object p1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    :goto_1
    return-object p1
.end method
