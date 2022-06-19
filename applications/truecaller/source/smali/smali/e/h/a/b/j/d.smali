.class public final Le/h/a/b/j/d;
.super Le/h/a/b/j/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0006H\u0016J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0014J\"\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0014J\"\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0014J\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0014JB\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0011H\u0014J*\u0010\u001c\u001a\u00020\u00062\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00192\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0006H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/styles/InputBoxStyle;",
        "Lcom/clevertap/android/pushtemplates/styles/Style;",
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
        "setStandardViewBigImageStyle",
        "pt_big_img",
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

    iput-object p1, p0, Le/h/a/b/j/d;->b:Le/h/a/b/d;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;ILn3/k/a/q;)Ln3/k/a/q;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nb"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Le/h/a/b/j/h;->a(Landroid/content/Context;Landroid/os/Bundle;ILn3/k/a/q;)Ln3/k/a/q;

    move-result-object p4

    .line 2
    iget-object v0, p0, Le/h/a/b/j/d;->b:Le/h/a/b/d;

    .line 3
    iget-object v0, v0, Le/h/a/b/d;->g:Ljava/lang/String;

    const-string v1, "BigTextStyle()\n         \u2026.bigText(renderer.pt_msg)"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    const-string v4, "http"

    .line 4
    invoke-static {v0, v4, v2, v3}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    :try_start_0
    invoke-static {v0, v2, p1}, Le/h/a/b/g;->n(Ljava/lang/String;ZLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "pt_msg_summary"

    .line 6
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Le/h/a/b/j/d;->b:Le/h/a/b/d;

    .line 8
    iget-object v3, v3, Le/h/a/b/d;->e:Ljava/lang/String;

    .line 9
    new-instance v4, Ln3/k/a/n;

    invoke-direct {v4}, Ln3/k/a/n;-><init>()V

    .line 10
    invoke-virtual {v4, v3}, Ln3/k/a/n;->k(Ljava/lang/CharSequence;)Ln3/k/a/n;

    .line 11
    iput-object v0, v4, Ln3/k/a/n;->e:Landroid/graphics/Bitmap;

    const-string v0, "{\n                    va\u2026(bpMap)\n                }"

    .line 12
    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance v4, Ln3/k/a/n;

    invoke-direct {v4}, Ln3/k/a/n;-><init>()V

    .line 14
    iget-object v3, p0, Le/h/a/b/j/d;->b:Le/h/a/b/d;

    .line 15
    iget-object v3, v3, Le/h/a/b/d;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {v4, v3}, Ln3/k/a/n;->k(Ljava/lang/CharSequence;)Ln3/k/a/n;

    .line 17
    iput-object v0, v4, Ln3/k/a/n;->e:Landroid/graphics/Bitmap;

    const-string v0, "{\n                    No\u2026(bpMap)\n                }"

    .line 18
    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Failed to fetch big picture!"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :catchall_0
    new-instance v4, Ln3/k/a/o;

    invoke-direct {v4}, Ln3/k/a/o;-><init>()V

    .line 21
    iget-object v0, p0, Le/h/a/b/j/d;->b:Le/h/a/b/d;

    .line 22
    iget-object v0, v0, Le/h/a/b/d;->d:Ljava/lang/String;

    .line 23
    invoke-virtual {v4, v0}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_2
    new-instance v4, Ln3/k/a/o;

    invoke-direct {v4}, Ln3/k/a/o;-><init>()V

    .line 25
    iget-object v0, p0, Le/h/a/b/j/d;->b:Le/h/a/b/d;

    .line 26
    iget-object v0, v0, Le/h/a/b/d;->d:Ljava/lang/String;

    .line 27
    invoke-virtual {v4, v0}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    :goto_0
    invoke-virtual {p4, v4}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 29
    iget-object v0, p0, Le/h/a/b/j/d;->b:Le/h/a/b/d;

    .line 30
    iget-object v0, v0, Le/h/a/b/d;->x:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 31
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    const/4 v6, 0x0

    .line 32
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 33
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 34
    iget-object v0, p0, Le/h/a/b/j/d;->b:Le/h/a/b/d;

    .line 35
    iget-object v5, v0, Le/h/a/b/d;->x:Ljava/lang/String;

    .line 36
    new-instance v0, Ln3/k/a/z;

    const-string v4, "pt_input_reply"

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ln3/k/a/z;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    const-string v3, "Builder(PTConstants.PT_I\u2026\n                .build()"

    .line 37
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x20

    .line 38
    iget-object v9, p0, Le/h/a/b/j/d;->b:Le/h/a/b/d;

    move-object v4, p1

    move v5, p3

    move-object v6, p2

    .line 39
    invoke-static/range {v4 .. v9}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 40
    new-instance v4, Ln3/k/a/m$a;

    const v5, 0x108008e

    .line 41
    iget-object v6, p0, Le/h/a/b/j/d;->b:Le/h/a/b/d;

    .line 42
    iget-object v6, v6, Le/h/a/b/d;->x:Ljava/lang/String;

    .line 43
    invoke-direct {v4, v5, v6, v3}, Ln3/k/a/m$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 44
    invoke-virtual {v4, v0}, Ln3/k/a/m$a;->a(Ln3/k/a/z;)Ln3/k/a/m$a;

    .line 45
    iput-boolean v1, v4, Ln3/k/a/m$a;->d:Z

    .line 46
    invoke-virtual {v4}, Ln3/k/a/m$a;->b()Ln3/k/a/m;

    move-result-object v0

    const-string v3, "Builder(\n               \u2026\n                .build()"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p4, v0}, Ln3/k/a/q;->b(Ln3/k/a/m;)Ln3/k/a/q;

    .line 48
    :cond_4
    iget-object v0, p0, Le/h/a/b/j/d;->b:Le/h/a/b/d;

    .line 49
    iget-object v0, v0, Le/h/a/b/d;->A:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 50
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    move v2, v1

    :cond_5
    if-eqz v2, :cond_6

    .line 51
    iget-object v0, p0, Le/h/a/b/j/d;->b:Le/h/a/b/d;

    .line 52
    iget-object v0, v0, Le/h/a/b/d;->A:Ljava/lang/String;

    const-string v1, "pt_dismiss_on_click"

    .line 53
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_6
    iget-object v1, p0, Le/h/a/b/j/d;->b:Le/h/a/b/d;

    .line 55
    iget-object v6, v1, Le/h/a/b/d;->N:Lorg/json/JSONArray;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 56
    invoke-interface/range {v1 .. v6}, Le/h/a/c/w0/e;->a(Landroid/content/Context;Landroid/os/Bundle;ILn3/k/a/q;Lorg/json/JSONArray;)Ln3/k/a/q;

    return-object p4
.end method

.method public b(Landroid/content/Context;Le/h/a/b/d;)Landroid/widget/RemoteViews;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "renderer"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

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
    iget-object v6, p0, Le/h/a/b/j/d;->b:Le/h/a/b/d;

    const/4 v4, 0x1

    const/16 v5, 0x1f

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    .line 2
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;Le/h/a/b/d;)Landroid/widget/RemoteViews;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "renderer"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Ln3/k/a/q;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Ln3/k/a/q;
    .locals 1

    const-string v0, "notificationBuilder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super/range {p0 .. p6}, Le/h/a/b/j/h;->f(Ln3/k/a/q;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 2
    iget-object p2, p0, Le/h/a/b/j/d;->b:Le/h/a/b/d;

    .line 3
    iget-object p2, p2, Le/h/a/b/d;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const-string p2, "super.setNotificationBui\u2026tentText(renderer.pt_msg)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
