.class public Lcom/hiya/stingray/notification/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/notification/NotificationReceiver$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/hiya/stingray/notification/NotificationReceiver$a;


# instance fields
.field public a:Lcom/hiya/stingray/notification/y;

.field public b:Lcom/hiya/stingray/manager/e1;

.field private c:Lcom/hiya/stingray/s/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/notification/NotificationReceiver$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/notification/NotificationReceiver$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/notification/NotificationReceiver;->d:Lcom/hiya/stingray/notification/NotificationReceiver$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final b(Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/notification/c0/f;Lcom/hiya/stingray/ui/o;Landroid/content/Context;ZLg/g/b/c/r;)V
    .locals 7

    move-object v0, p3

    move-object v1, p1

    move-object v2, p5

    move-object v3, p2

    move-object v4, p4

    move v5, p6

    move-object v6, p7

    .line 1
    invoke-interface/range {v0 .. v6}, Lcom/hiya/stingray/notification/c0/f;->a(Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2
    new-instance p1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {p1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string p3, "notification"

    invoke-virtual {p1, p3}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 3
    sget-object p3, Lcom/hiya/stingray/notification/t;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    const-string p5, "analyticsManager"

    const-string p6, "user_prompt_view"

    if-eq p2, p3, :cond_6

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    const/4 p3, 0x4

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/hiya/stingray/notification/NotificationReceiver;->b:Lcom/hiya/stingray/manager/e1;

    if-eqz p2, :cond_1

    const-string p3, "ended"

    .line 5
    invoke-virtual {p1, p3}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {p1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p6, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    goto :goto_0

    :cond_1
    invoke-static {p5}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p4

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/hiya/stingray/notification/NotificationReceiver;->b:Lcom/hiya/stingray/manager/e1;

    if-eqz p2, :cond_3

    const-string p3, "first_id"

    .line 8
    invoke-virtual {p1, p3}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {p1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    .line 9
    invoke-virtual {p2, p6, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    goto :goto_0

    :cond_3
    invoke-static {p5}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p4

    .line 10
    :cond_4
    iget-object p2, p0, Lcom/hiya/stingray/notification/NotificationReceiver;->b:Lcom/hiya/stingray/manager/e1;

    if-eqz p2, :cond_5

    const-string p3, "missed"

    .line 11
    invoke-virtual {p1, p3}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {p1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    .line 12
    invoke-virtual {p2, p6, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    goto :goto_0

    :cond_5
    invoke-static {p5}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p4

    .line 13
    :cond_6
    iget-object p2, p0, Lcom/hiya/stingray/notification/NotificationReceiver;->b:Lcom/hiya/stingray/manager/e1;

    if-eqz p2, :cond_7

    const-string p3, "blocked"

    .line 14
    invoke-virtual {p1, p3}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {p1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    .line 15
    invoke-virtual {p2, p6, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    goto :goto_0

    :cond_7
    invoke-static {p5}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p4

    :cond_8
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/NotificationReceiver;->c:Lcom/hiya/stingray/s/d/c;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/hiya/stingray/s/a;->c(Landroid/content/Context;)Lcom/hiya/stingray/s/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/notification/NotificationReceiver;->c:Lcom/hiya/stingray/s/d/c;

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/notification/NotificationReceiver;->a(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/notification/NotificationReceiver;->c:Lcom/hiya/stingray/s/d/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-interface {v0, p0}, Lcom/hiya/stingray/s/d/c;->e(Lcom/hiya/stingray/notification/NotificationReceiver;)V

    const-string v0, "call_notification_item_type"

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v2, v0, Lcom/hiya/stingray/notification/p;

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    move-object v4, v0

    check-cast v4, Lcom/hiya/stingray/notification/p;

    const-string v0, "notification_type"

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v2, v0, Lcom/hiya/stingray/notification/v;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/hiya/stingray/notification/v;

    const-string v2, "CALLER_ID_SOURCE"

    .line 5
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    instance-of v3, v2, Lg/g/b/c/r;

    if-nez v3, :cond_2

    move-object v2, v1

    :cond_2
    move-object v9, v2

    check-cast v9, Lg/g/b/c/r;

    const-string v2, "notifierFactory"

    if-eqz v0, :cond_a

    .line 6
    iget-object v3, p0, Lcom/hiya/stingray/notification/NotificationReceiver;->a:Lcom/hiya/stingray/notification/y;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v0}, Lcom/hiya/stingray/notification/y;->b(Lcom/hiya/stingray/notification/v;)Lcom/hiya/stingray/notification/c0/h;

    move-result-object v2

    const-string v3, "notification_bundle"

    .line 7
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    instance-of v3, p2, Ljava/util/Map;

    if-nez v3, :cond_3

    move-object p2, v1

    :cond_3
    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    invoke-static {}, Lkotlin/s/b0;->e()Ljava/util/Map;

    move-result-object p2

    .line 9
    :goto_0
    invoke-interface {v2, p1, v0, p2}, Lcom/hiya/stingray/notification/c0/h;->b(Landroid/content/Context;Lcom/hiya/stingray/notification/v;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 10
    new-instance p1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {p1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string p2, "notification"

    .line 11
    invoke-virtual {p1, p2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 12
    sget-object p2, Lcom/hiya/stingray/notification/t;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    const-string v2, "analyticsManager"

    const-string v3, "user_prompt_view"

    if-eq p2, v0, :cond_7

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    goto/16 :goto_3

    .line 13
    :cond_5
    iget-object p2, p0, Lcom/hiya/stingray/notification/NotificationReceiver;->b:Lcom/hiya/stingray/manager/e1;

    if-eqz p2, :cond_6

    const-string v0, "subscription_end"

    .line 14
    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {p1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    .line 15
    invoke-virtual {p2, v3, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    goto :goto_3

    :cond_6
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_7
    iget-object p2, p0, Lcom/hiya/stingray/notification/NotificationReceiver;->b:Lcom/hiya/stingray/manager/e1;

    if-eqz p2, :cond_8

    const-string v0, "selected_ended"

    .line 17
    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {p1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    .line 18
    invoke-virtual {p2, v3, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    goto :goto_3

    :cond_8
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_9
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_a
    const/4 v0, 0x0

    if-eqz v4, :cond_f

    .line 20
    iget-object v3, p0, Lcom/hiya/stingray/notification/NotificationReceiver;->a:Lcom/hiya/stingray/notification/y;

    if-eqz v3, :cond_e

    invoke-virtual {v3, v4}, Lcom/hiya/stingray/notification/y;->a(Lcom/hiya/stingray/notification/p;)Lcom/hiya/stingray/notification/c0/f;

    move-result-object v5

    const-string v2, "NOTIFICATION_CONTENT_DISPLAY_TYPE"

    .line 21
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    instance-of v3, v2, Lcom/hiya/stingray/ui/o;

    if-nez v3, :cond_b

    goto :goto_1

    :cond_b
    move-object v1, v2

    :goto_1
    move-object v6, v1

    check-cast v6, Lcom/hiya/stingray/ui/o;

    const-string v1, "NOTIFICATION_ITEM"

    .line 22
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 23
    move-object v3, v1

    check-cast v3, Lcom/hiya/stingray/t/s0;

    const-string v1, "NOTIFICATION_IS_MISSED_CALL"

    .line 24
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v3, :cond_d

    if-nez v6, :cond_c

    goto :goto_2

    :cond_c
    move-object v2, p0

    move-object v7, p1

    .line 25
    invoke-direct/range {v2 .. v9}, Lcom/hiya/stingray/notification/NotificationReceiver;->b(Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/notification/c0/f;Lcom/hiya/stingray/ui/o;Landroid/content/Context;ZLg/g/b/c/r;)V

    goto :goto_3

    :cond_d
    :goto_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "No notification item found. Not showing notification."

    .line 26
    invoke-static {p2, p1}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 27
    :cond_e
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "No notification type found. Not showing notification."

    .line 28
    invoke-static {p2, p1}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    :goto_3
    return-void

    .line 29
    :cond_11
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method
