.class public Le/h/a/b/i/n;
.super Le/h/a/b/i/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\u0017\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0000\u00a2\u0006\u0002\u0008\u000eJ!\u0010\u000f\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\rH\u0000\u00a2\u0006\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/content/TimerSmallContentView;",
        "Lcom/clevertap/android/pushtemplates/content/ContentView;",
        "context",
        "Landroid/content/Context;",
        "timer_end",
        "",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "layoutId",
        "(Landroid/content/Context;Ljava/lang/Integer;Lcom/clevertap/android/pushtemplates/TemplateRenderer;I)V",
        "setCustomContentViewChronometerBackgroundColour",
        "",
        "pt_bg",
        "",
        "setCustomContentViewChronometerBackgroundColour$clevertap_pushtemplates_release",
        "setCustomContentViewChronometerTitleColour",
        "pt_chrono_title_clr",
        "pt_title_clr",
        "setCustomContentViewChronometerTitleColour$clevertap_pushtemplates_release",
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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;Le/h/a/b/d;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p4, p3}, Le/h/a/b/i/c;-><init>(Landroid/content/Context;ILe/h/a/b/d;)V

    .line 2
    invoke-virtual {p0}, Le/h/a/b/i/c;->a()V

    .line 3
    iget-object p1, p3, Le/h/a/b/d;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->i(Ljava/lang/String;)V

    .line 5
    iget-object p1, p3, Le/h/a/b/d;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->f(Ljava/lang/String;)V

    .line 7
    iget-object p1, p3, Le/h/a/b/d;->r:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->b(Ljava/lang/String;)V

    .line 9
    iget-object p1, p3, Le/h/a/b/d;->r:Ljava/lang/String;

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p4

    :goto_0
    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 12
    sget v2, Lcom/clevertap/android/pushtemplates/R$id;->chronometer:I

    const-string v3, "#FFFFFF"

    .line 13
    invoke-static {p1, v3}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string v3, "setBackgroundColor"

    .line 14
    invoke-virtual {v1, v2, v3, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 15
    :cond_1
    iget-object p1, p3, Le/h/a/b/d;->h:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->j(Ljava/lang/String;)V

    .line 17
    iget-object p1, p3, Le/h/a/b/d;->j:Ljava/lang/String;

    .line 18
    iget-object v1, p3, Le/h/a/b/d;->h:Ljava/lang/String;

    const-string v2, "#000000"

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, p4

    :goto_1
    if-eqz v3, :cond_3

    .line 20
    iget-object p4, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 21
    sget v1, Lcom/clevertap/android/pushtemplates/R$id;->chronometer:I

    .line 22
    invoke-static {p1, v2}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 23
    invoke-virtual {p4, v1, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_5

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    move p4, v0

    :cond_4
    if-eqz p4, :cond_5

    .line 25
    iget-object p1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 26
    sget p4, Lcom/clevertap/android/pushtemplates/R$id;->chronometer:I

    .line 27
    invoke-static {v1, v2}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 28
    invoke-virtual {p1, p4, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 29
    :cond_5
    :goto_2
    iget-object p1, p3, Le/h/a/b/d;->i:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->g(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 32
    sget p1, Lcom/clevertap/android/pushtemplates/R$id;->chronometer:I

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    invoke-static {p2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v2, p2

    add-long v3, p3, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p1

    .line 34
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 35
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_6

    .line 36
    iget-object p2, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 37
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    .line 38
    :cond_6
    invoke-virtual {p0}, Le/h/a/b/i/c;->h()V

    .line 39
    invoke-virtual {p0}, Le/h/a/b/i/c;->c()V

    return-void
.end method
