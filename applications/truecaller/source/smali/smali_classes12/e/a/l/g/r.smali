.class public final Le/a/l/g/r;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.gift.GoldGiftNotificationHandler$handleNotification$1"
    f = "GoldGiftNotificationHandler.kt"
    l = {
        0x25
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/g/s;

.field public final synthetic g:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;


# direct methods
.method public constructor <init>(Le/a/l/g/s;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    iput-object p2, p0, Le/a/l/g/r;->g:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/g/r;

    iget-object v0, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    iget-object v1, p0, Le/a/l/g/r;->g:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/g/r;-><init>(Le/a/l/g/s;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/g/r;

    iget-object v0, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    iget-object v1, p0, Le/a/l/g/r;->g:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/g/r;-><init>(Le/a/l/g/s;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/g/r;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/l/g/r;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 5
    iget-object p1, p1, Le/a/l/g/s;->a:Le/a/l/p2/r0;

    .line 6
    iput v3, p0, Le/a/l/g/r;->e:I

    invoke-interface {p1, p0}, Le/a/l/p2/r0;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/l/g/r;->g:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    const-string v1, "f"

    invoke-virtual {p1, v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "notification.getApplicat\u2026LL_NAME) ?: return@launch"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Le/a/l/g/r;->g:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    const-string v2, "n"

    invoke-virtual {v1, v2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 9
    iget-object v2, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 10
    iget-object v2, v2, Le/a/l/g/s;->e:Le/a/b0/q/z;

    const-string v4, "this"

    .line 11
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 12
    iget-object v2, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 13
    iget-object v2, v2, Le/a/l/g/s;->b:Landroid/content/Context;

    const v4, 0x7f1202bb

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 14
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "context.getString(R.stri\u2026ationMessage, senderName)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v4, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 16
    iget-object v4, v4, Le/a/l/g/s;->b:Landroid/content/Context;

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v7, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 19
    iget-object v7, v7, Le/a/l/g/s;->b:Landroid/content/Context;

    const-string v8, "messages"

    const-string v9, "GoldGift"

    .line 20
    invoke-static {v7, v8, v9}, Lcom/truecaller/ui/TruecallerInit;->xa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 21
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v7, Lcom/truecaller/premium/gift/GoldGiftDialogActivity;->d:Lcom/truecaller/premium/gift/GoldGiftDialogActivity$a;

    iget-object v7, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 23
    iget-object v7, v7, Le/a/l/g/s;->b:Landroid/content/Context;

    const-string v10, "context"

    .line 24
    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "name"

    invoke-static {p1, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "number"

    invoke-static {v1, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/truecaller/premium/gift/GoldGiftDialogActivity;

    invoke-direct {v10, v7, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v7, 0x10000000

    .line 26
    invoke-virtual {v10, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    const-string v10, "EXTRA_SENDER_NAME"

    .line 27
    invoke-virtual {v7, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v7, "EXTRA_SENDER_NUMBER"

    .line 28
    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v7, "Intent(context, GoldGift\u2026RA_SENDER_NUMBER, number)"

    invoke-static {p1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const-string v7, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    if-nez p1, :cond_4

    .line 31
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/Intent;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    .line 32
    new-instance v5, Landroid/content/Intent;

    aget-object v10, p1, v6

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v10, 0x1000c000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    aput-object v5, p1, v6

    const/high16 v5, 0x8000000

    const/4 v11, 0x0

    .line 33
    invoke-static {v4, v6, p1, v5, v11}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 34
    iget-object v4, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 35
    iget-object v4, v4, Le/a/l/g/s;->b:Landroid/content/Context;

    .line 36
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v13, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 38
    iget-object v13, v13, Le/a/l/g/s;->b:Landroid/content/Context;

    .line 39
    invoke-static {v13, v8, v9}, Lcom/truecaller/ui/TruecallerInit;->xa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 40
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v8, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 42
    iget-object v13, v8, Le/a/l/g/s;->d:Le/a/l/g/t;

    .line 43
    iget-object v8, v8, Le/a/l/g/s;->b:Landroid/content/Context;

    .line 44
    invoke-virtual {v13, v8, v1}, Le/a/l/g/t;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 45
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 47
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/Intent;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/Intent;

    .line 48
    new-instance v7, Landroid/content/Intent;

    aget-object v8, v1, v6

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    aput-object v7, v1, v6

    .line 49
    invoke-static {v4, v6, v1, v5, v11}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 50
    new-instance v4, Ln3/k/a/q;

    iget-object v5, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 51
    iget-object v7, v5, Le/a/l/g/s;->b:Landroid/content/Context;

    .line 52
    iget-object v5, v5, Le/a/l/g/s;->c:Le/a/i4/e;

    .line 53
    invoke-interface {v5}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    iget-object v5, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 55
    iget-object v5, v5, Le/a/l/g/s;->b:Landroid/content/Context;

    const v7, 0x7f1202bc

    .line 56
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 57
    invoke-virtual {v4, v2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 58
    new-instance v5, Ln3/k/a/o;

    invoke-direct {v5}, Ln3/k/a/o;-><init>()V

    invoke-virtual {v5, v2}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v4, v5}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 59
    iget-object v2, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 60
    iget-object v2, v2, Le/a/l/g/s;->b:Landroid/content/Context;

    .line 61
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0804c6

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v4, v2}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 62
    iget-object v2, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 63
    iget-object v2, v2, Le/a/l/g/s;->b:Landroid/content/Context;

    const v5, 0x7f06068b

    .line 64
    sget-object v7, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 65
    invoke-static {v2, v5}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 66
    iput v2, v4, Ln3/k/a/q;->D:I

    const/4 v2, -0x1

    .line 67
    invoke-virtual {v4, v2}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    const v2, 0x7f0816fb

    .line 68
    iget-object v5, v4, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v2, v5, Landroid/app/Notification;->icon:I

    .line 69
    iput-object p1, v4, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 v2, 0x10

    .line 70
    invoke-virtual {v4, v2, v3}, Ln3/k/a/q;->p(IZ)V

    .line 71
    iget-object v2, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 72
    iget-object v2, v2, Le/a/l/g/s;->b:Landroid/content/Context;

    const v3, 0x7f120718

    .line 73
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2, p1}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 74
    iget-object p1, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 75
    iget-object p1, p1, Le/a/l/g/s;->b:Landroid/content/Context;

    const v2, 0x7f1202bd

    .line 76
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v6, p1, v1}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    const-string p1, "NotificationCompat.Build\u2026hankYou), thankYouIntent)"

    invoke-static {v4, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Le/a/l/g/r;->f:Le/a/l/g/s;

    .line 78
    iget-object p1, p1, Le/a/l/g/s;->c:Le/a/i4/e;

    const v1, 0x7f0a0d66

    .line 79
    invoke-virtual {v4}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v2

    const-string v3, "builder.build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {p1, v1, v2, v9}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    return-object v0

    .line 81
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-object v0
.end method
