.class public abstract Le/h/a/b/j/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0006H\u0016J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H$J\"\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH$J\"\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH$J\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H$JD\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0011H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/styles/Style;",
        "",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "(Lcom/clevertap/android/pushtemplates/TemplateRenderer;)V",
        "builderFromStyle",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "context",
        "Landroid/content/Context;",
        "extras",
        "Landroid/os/Bundle;",
        "notificationId",
        "",
        "nb",
        "makeBigContentView",
        "Landroid/widget/RemoteViews;",
        "makeDismissIntent",
        "Landroid/app/PendingIntent;",
        "makePendingIntent",
        "makeSmallContentView",
        "setNotificationBuilderBasics",
        "notificationBuilder",
        "contentViewSmall",
        "contentViewBig",
        "pt_title",
        "",
        "pIntent",
        "dIntent",
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
.field public a:Le/h/a/b/d;


# direct methods
.method public constructor <init>(Le/h/a/b/d;)V
    .locals 1

    const-string v0, "renderer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/h/a/b/j/h;->a:Le/h/a/b/d;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;ILn3/k/a/q;)Ln3/k/a/q;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nb"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/h/a/b/j/h;->a:Le/h/a/b/d;

    invoke-virtual {p0, p1, v0}, Le/h/a/b/j/h;->e(Landroid/content/Context;Le/h/a/b/d;)Landroid/widget/RemoteViews;

    move-result-object v3

    iget-object v0, p0, Le/h/a/b/j/h;->a:Le/h/a/b/d;

    invoke-virtual {p0, p1, v0}, Le/h/a/b/j/h;->b(Landroid/content/Context;Le/h/a/b/d;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 2
    iget-object v0, p0, Le/h/a/b/j/h;->a:Le/h/a/b/d;

    .line 3
    iget-object v5, v0, Le/h/a/b/d;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Le/h/a/b/j/h;->d(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Le/h/a/b/j/h;->c(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/PendingIntent;

    move-result-object v7

    move-object v1, p0

    move-object v2, p4

    .line 6
    invoke-virtual/range {v1 .. v7}, Le/h/a/b/j/h;->f(Ln3/k/a/q;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Ln3/k/a/q;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Landroid/content/Context;Le/h/a/b/d;)Landroid/widget/RemoteViews;
.end method

.method public abstract c(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/PendingIntent;
.end method

.method public abstract d(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/PendingIntent;
.end method

.method public abstract e(Landroid/content/Context;Le/h/a/b/d;)Landroid/widget/RemoteViews;
.end method

.method public f(Ln3/k/a/q;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Ln3/k/a/q;
    .locals 1

    const-string v0, "notificationBuilder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    .line 1
    iget-object v0, p1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object p6, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iput-object p2, p1, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    :cond_1
    if-eqz p3, :cond_2

    .line 3
    iput-object p3, p1, Ln3/k/a/q;->H:Landroid/widget/RemoteViews;

    .line 4
    :cond_2
    iget-object p2, p0, Le/h/a/b/j/h;->a:Le/h/a/b/d;

    .line 5
    iget p2, p2, Le/h/a/b/d;->u:I

    .line 6
    iget-object p3, p1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p2, p3, Landroid/app/Notification;->icon:I

    .line 7
    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 8
    iput-object p5, p1, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/4 p2, 0x1

    new-array p3, p2, [J

    const/4 p4, 0x0

    const-wide/16 p5, 0x0

    aput-wide p5, p3, p4

    .line 9
    iget-object p4, p1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object p3, p4, Landroid/app/Notification;->vibrate:[J

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 11
    iget-object p5, p1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide p3, p5, Landroid/app/Notification;->when:J

    .line 12
    iget-object p3, p0, Le/h/a/b/j/h;->a:Le/h/a/b/d;

    .line 13
    iget-object p3, p3, Le/h/a/b/d;->I:Ljava/lang/String;

    if-nez p3, :cond_3

    const-string p3, "#FFFFFF"

    .line 14
    :cond_3
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    .line 15
    iput p3, p1, Ln3/k/a/q;->D:I

    const/16 p3, 0x10

    .line 16
    invoke-virtual {p1, p3, p2}, Ln3/k/a/q;->p(IZ)V

    const/16 p3, 0x8

    .line 17
    invoke-virtual {p1, p3, p2}, Ln3/k/a/q;->p(IZ)V

    const-string p2, "notificationBuilder.setS\u2026  .setOnlyAlertOnce(true)"

    .line 18
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
