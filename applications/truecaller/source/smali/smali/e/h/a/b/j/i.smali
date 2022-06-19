.class public final Le/h/a/b/j/i;
.super Le/h/a/b/j/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000f\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0002\u0010\tJ\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0003H\u0014J\"\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0008H\u0014J\"\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0008H\u0014J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0003H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/styles/TimerStyle;",
        "Lcom/clevertap/android/pushtemplates/styles/Style;",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "extras",
        "Landroid/os/Bundle;",
        "(Lcom/clevertap/android/pushtemplates/TemplateRenderer;Landroid/os/Bundle;)V",
        "getTimerEnd",
        "",
        "()Ljava/lang/Integer;",
        "makeBigContentView",
        "Landroid/widget/RemoteViews;",
        "context",
        "Landroid/content/Context;",
        "makeDismissIntent",
        "Landroid/app/PendingIntent;",
        "notificationId",
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
.method public constructor <init>(Le/h/a/b/d;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "renderer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/h/a/b/j/h;-><init>(Le/h/a/b/d;)V

    iput-object p1, p0, Le/h/a/b/j/i;->b:Le/h/a/b/d;

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
    invoke-virtual {p0}, Le/h/a/b/j/i;->g()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Le/h/a/b/i/m;

    invoke-virtual {p0}, Le/h/a/b/j/i;->g()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Le/h/a/b/i/m;-><init>(Landroid/content/Context;Ljava/lang/Integer;Le/h/a/b/d;)V

    .line 3
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
    iget-object v6, p0, Le/h/a/b/j/i;->b:Le/h/a/b/d;

    const/4 v4, 0x1

    const/16 v5, 0x1e

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    .line 2
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;Le/h/a/b/d;)Landroid/widget/RemoteViews;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/h/a/b/j/i;->g()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Le/h/a/b/i/n;

    invoke-virtual {p0}, Le/h/a/b/j/i;->g()Ljava/lang/Integer;

    move-result-object v1

    .line 3
    sget v2, Lcom/clevertap/android/pushtemplates/R$layout;->timer_collapsed:I

    .line 4
    invoke-direct {v0, p1, v1, p2, v2}, Le/h/a/b/i/n;-><init>(Landroid/content/Context;Ljava/lang/Integer;Le/h/a/b/d;I)V

    .line 5
    iget-object p1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method public final g()Ljava/lang/Integer;
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/b/j/i;->b:Le/h/a/b/d;

    .line 2
    iget v1, v0, Le/h/a/b/d;->w:I

    const/4 v2, -0x1

    const/16 v3, 0xa

    if-eq v1, v2, :cond_0

    if-lt v1, v3, :cond_0

    mul-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v1, v1, 0x3e8

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget v0, v0, Le/h/a/b/d;->B:I

    if-lt v0, v3, :cond_1

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, 0x3e8

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
