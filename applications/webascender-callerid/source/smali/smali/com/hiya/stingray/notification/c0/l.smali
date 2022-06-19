.class public final Lcom/hiya/stingray/notification/c0/l;
.super Lcom/hiya/stingray/notification/c0/d;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/notification/c0/h;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/i1;)V
    .locals 1

    const-string v0, "appSettingsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/notification/c0/d;-><init>(Lcom/hiya/stingray/manager/i1;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Lcom/hiya/stingray/notification/v;Ljava/util/Map;)Z
    .locals 12
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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationType"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    const-string v0, "subscriptionId"

    .line 1
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const-string p3, ""

    .line 2
    :goto_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    return v2

    .line 3
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const v3, 0x7f1102a4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v2

    const-string p3, "com.webascender.callerid"

    aput-object p3, v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    new-instance p3, Landroidx/core/app/j$e;

    const-string v3, "select_expired"

    invoke-direct {p3, p1, v3}, Landroidx/core/app/j$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f11022f

    new-array v4, v1, [Ljava/lang/Object;

    const v5, 0x7f110028

    .line 5
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "context.getString(R.stri\u2026tring(R.string.app_name))"

    invoke-static {v7, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f11022e

    .line 6
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v3, "context.getString(R.stri\u2026ication_will_expire_desc)"

    invoke-static {v8, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/high16 v3, 0x8000000

    .line 7
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    const/4 v11, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    .line 8
    invoke-virtual/range {v4 .. v11}, Lcom/hiya/stingray/notification/c0/d;->d(Landroid/content/Context;Landroidx/core/app/j$e;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroidx/core/app/j$e;

    const-string v0, "notification"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/app/NotificationManager;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move-object p2, p1

    :goto_3
    check-cast p2, Landroid/app/NotificationManager;

    if-eqz p2, :cond_5

    const/16 p1, 0x1b5c

    .line 10
    invoke-virtual {p3}, Landroidx/core/app/j$e;->b()Landroid/app/Notification;

    move-result-object p3

    .line 11
    invoke-virtual {p2, p1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    return v1
.end method
