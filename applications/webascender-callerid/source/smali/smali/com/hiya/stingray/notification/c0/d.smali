.class public abstract Lcom/hiya/stingray/notification/c0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/hiya/stingray/manager/i1;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/i1;)V
    .locals 1

    const-string v0, "appSettingsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/notification/c0/d;->a:Lcom/hiya/stingray/manager/i1;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/app/j$e;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraKey"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationClass"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3, p8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {v0, p7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x8000000

    .line 4
    invoke-static {p3, p6, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p3, p5, p2}, Landroidx/core/app/j$e;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/j$e;

    return-void
.end method

.method public final d(Landroid/content/Context;Landroidx/core/app/j$e;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroidx/core/app/j$e;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f060048

    .line 1
    invoke-static {p1, v0}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/app/j$e;->i(I)Landroidx/core/app/j$e;

    .line 2
    invoke-virtual {p2, p3}, Landroidx/core/app/j$e;->l(Ljava/lang/CharSequence;)Landroidx/core/app/j$e;

    .line 3
    new-instance p1, Landroidx/core/app/j$c;

    invoke-direct {p1}, Landroidx/core/app/j$c;-><init>()V

    invoke-virtual {p1, p4}, Landroidx/core/app/j$c;->g(Ljava/lang/CharSequence;)Landroidx/core/app/j$c;

    invoke-virtual {p2, p1}, Landroidx/core/app/j$e;->B(Landroidx/core/app/j$f;)Landroidx/core/app/j$e;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p2, p1}, Landroidx/core/app/j$e;->f(Z)Landroidx/core/app/j$e;

    const p1, 0x7f08012b

    .line 5
    invoke-virtual {p2, p1}, Landroidx/core/app/j$e;->z(I)Landroidx/core/app/j$e;

    .line 6
    invoke-virtual {p2, p5}, Landroidx/core/app/j$e;->r(Landroid/graphics/Bitmap;)Landroidx/core/app/j$e;

    .line 7
    invoke-virtual {p2, p7}, Landroidx/core/app/j$e;->o(Landroid/app/PendingIntent;)Landroidx/core/app/j$e;

    .line 8
    invoke-virtual {p2, p6}, Landroidx/core/app/j$e;->j(Landroid/app/PendingIntent;)Landroidx/core/app/j$e;

    const-string p1, "builder.setColor(Context\u2026tentIntent(contentIntent)"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Landroid/app/PendingIntent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraKey"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationClass"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {v0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x8000000

    .line 4
    invoke-static {p1, p5, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getBroadcast(context, re\u2026tent.FLAG_UPDATE_CURRENT)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Class;)Landroid/app/PendingIntent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationClass"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 3
    invoke-static {p1, p3, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getBroadcast(context, requestCode, intent, 0)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final g(Lcom/hiya/stingray/notification/p;)I
    .locals 2

    const-string v0, "notificationType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/notification/c0/c;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/notification/c0/d;->a:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/i1;->f()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/notification/c0/d;->a:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/i1;->b()I

    move-result v0

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/hiya/stingray/notification/c0/d;->a:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/i1;->a()I

    move-result v0

    :cond_3
    :goto_0
    return v0
.end method

.method public final h(Lcom/hiya/stingray/notification/p;)V
    .locals 3

    const-string v0, "notificationType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/notification/c0/d;->g(Lcom/hiya/stingray/notification/p;)I

    move-result v0

    .line 2
    sget-object v1, Lcom/hiya/stingray/notification/c0/c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/notification/c0/d;->a:Lcom/hiya/stingray/manager/i1;

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/manager/i1;->o(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/notification/c0/d;->a:Lcom/hiya/stingray/manager/i1;

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/manager/i1;->k(I)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/hiya/stingray/notification/c0/d;->a:Lcom/hiya/stingray/manager/i1;

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/manager/i1;->i(I)V

    :goto_0
    return-void
.end method

.method public final i(Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;)Z
    .locals 2

    const-string v0, "localNotificationItem"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationType"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/notification/c0/c;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/hiya/stingray/notification/c0/d;->a:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {p2}, Lcom/hiya/stingray/manager/i1;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/hiya/stingray/notification/c0/d;->a:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {p2}, Lcom/hiya/stingray/manager/i1;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    xor-int/2addr p1, v0

    :goto_1
    return p1
.end method

.method public final j(Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;)V
    .locals 1

    const-string v0, "localNotificationItem"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationType"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/notification/p;->BLOCKED_CALL:Lcom/hiya/stingray/notification/p;

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/notification/c0/d;->a:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/manager/i1;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/hiya/stingray/notification/p;->POST_CALL:Lcom/hiya/stingray/notification/p;

    if-ne p2, v0, :cond_1

    .line 4
    iget-object p2, p0, Lcom/hiya/stingray/notification/c0/d;->a:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/manager/i1;->n(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
