.class public Lcom/hiya/stingray/notification/c0/k;
.super Lcom/hiya/stingray/notification/c0/d;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/notification/c0/h;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/i1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/notification/c0/d;-><init>(Lcom/hiya/stingray/manager/i1;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Lcom/hiya/stingray/notification/v;Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hiya/stingray/notification/v;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/hiya/stingray/ui/LauncherActivity;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p3, 0x10008000

    .line 2
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    new-instance p2, Landroidx/core/app/j$e;

    const-string p3, "select_expired"

    invoke-direct {p2, p1, p3}, Landroidx/core/app/j$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p3, 0x7f11027b

    .line 4
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const p3, 0x7f11027e

    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/hiya/stingray/ui/LauncherActivity;

    invoke-direct {p3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v8, 0x0

    const/high16 v0, 0x8000000

    .line 6
    invoke-static {p1, v8, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 7
    invoke-virtual/range {v0 .. v7}, Lcom/hiya/stingray/notification/c0/d;->d(Landroid/content/Context;Landroidx/core/app/j$e;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroidx/core/app/j$e;

    const-string p3, "notification"

    .line 8
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    const/16 p3, 0x1b5c

    .line 9
    invoke-virtual {p2}, Landroidx/core/app/j$e;->b()Landroid/app/Notification;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v8
.end method
