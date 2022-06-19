.class public final Le/a/c/i/l/a;
.super Le/f/a/r/k/h;
.source "SourceFile"


# instance fields
.field public final j:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/app/Notification;ILe/a/c/b/j;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteViews"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p5}, Le/f/a/r/k/h;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/app/Notification;I)V

    iput-object p6, p0, Le/a/c/i/l/a;->j:Le/a/c/b/j;

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;Le/f/a/r/l/d;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    const-string p2, "resource"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Le/f/a/r/k/h;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    sget-object p2, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p2, p1, v0, v1}, Le/a/c/h/l/b;->c(Le/a/c/h/l/b;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 5
    iget-object p1, p0, Le/a/c/i/l/a;->j:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->f()V

    :goto_0
    return-void
.end method
