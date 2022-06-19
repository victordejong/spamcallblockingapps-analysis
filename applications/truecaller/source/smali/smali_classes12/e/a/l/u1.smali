.class public final Le/a/l/u1;
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
    c = "com.truecaller.premium.PremiumPushNotificationHandler$handleNotification$1"
    f = "PremiumPushNotificationHandler.kt"
    l = {
        0x24
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/v1;

.field public final synthetic g:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;


# direct methods
.method public constructor <init>(Le/a/l/v1;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/u1;->f:Le/a/l/v1;

    iput-object p2, p0, Le/a/l/u1;->g:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

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

    new-instance p1, Le/a/l/u1;

    iget-object v0, p0, Le/a/l/u1;->f:Le/a/l/v1;

    iget-object v1, p0, Le/a/l/u1;->g:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/u1;-><init>(Le/a/l/v1;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/u1;

    iget-object v0, p0, Le/a/l/u1;->f:Le/a/l/v1;

    iget-object v1, p0, Le/a/l/u1;->g:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/u1;-><init>(Le/a/l/v1;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/u1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/l/u1;->e:I

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
    iget-object p1, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 5
    iget-object p1, p1, Le/a/l/v1;->b:Le/a/l/p2/r0;

    .line 6
    iput v3, p0, Le/a/l/u1;->e:I

    invoke-interface {p1, p0}, Le/a/l/p2/r0;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Ls1/k;

    .line 7
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Le/a/l/p2/x;

    .line 9
    iget-object p1, p1, Le/a/l/p2/x;->m:Lcom/truecaller/premium/provider/Store;

    .line 10
    sget-object v1, Lcom/truecaller/premium/provider/Store;->WEB:Lcom/truecaller/premium/provider/Store;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    .line 11
    iget-object p1, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 12
    iget-object p1, p1, Le/a/l/v1;->g:Le/a/l/p2/t1;

    .line 13
    iget-object v1, p1, Le/a/l/p2/t1;->a:Le/a/l/p2/v0;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v4, v5}, Le/a/l/p2/v0;->X1(J)V

    .line 14
    iget-object v1, p1, Le/a/l/p2/t1;->a:Le/a/l/p2/v0;

    invoke-interface {v1, v2}, Le/a/l/p2/v0;->X(Z)V

    .line 15
    iget-object p1, p1, Le/a/l/p2/t1;->b:Le/a/l/c2;

    invoke-interface {p1, v2}, Le/a/l/c2;->y0(Z)V

    .line 16
    :cond_3
    iget-object p1, p0, Le/a/l/u1;->g:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    const-string v1, "ro"

    invoke-virtual {p1, v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->I3(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    .line 18
    :cond_4
    iget-object p1, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 19
    iget-object p1, p1, Le/a/l/v1;->f:Le/a/l/g/t;

    .line 20
    invoke-virtual {p1}, Le/a/l/g/t;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 22
    iget-object p1, p1, Le/a/l/v1;->a:Landroid/content/Context;

    .line 23
    sget-object v1, Lcom/truecaller/premium/gift/GoldGiftDialogActivity;->d:Lcom/truecaller/premium/gift/GoldGiftDialogActivity$a;

    .line 24
    invoke-virtual {v1, p1, v2}, Lcom/truecaller/premium/gift/GoldGiftDialogActivity$a;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    .line 25
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v0

    .line 26
    :cond_5
    iget-object p1, p0, Le/a/l/u1;->g:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    const-string v1, "pl"

    invoke-virtual {p1, v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "regular"

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move-object p1, v1

    :goto_1
    const-string v4, "notification.getApplicat\u2026M_LEVEL) ?: Level.PREMIUM"

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v4, p0, Le/a/l/u1;->g:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    const-string v5, "d"

    invoke-virtual {v4, v5}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    iget-object v5, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 29
    iget-object v5, v5, Le/a/l/v1;->a:Landroid/content/Context;

    const v6, 0x7f1204e4

    .line 30
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "context.getString(R.stri\u2026emiumObtainedDialogTitle)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_7

    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 32
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 33
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_7
    move v6, v2

    .line 34
    :goto_2
    iget-object v7, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 35
    iget-object v7, v7, Le/a/l/v1;->a:Landroid/content/Context;

    const v8, 0x7f1204e3

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 36
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v9, v2

    .line 37
    iget-object v10, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 38
    iget-object v10, v10, Le/a/l/v1;->a:Landroid/content/Context;

    .line 39
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f10005f

    invoke-virtual {v10, v11, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v3

    .line 40
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(\n     \u2026tionInDays)\n            )"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v7, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 42
    iget-object v7, v7, Le/a/l/v1;->d:Le/a/l/p2/f;

    .line 43
    iget-object v8, p0, Le/a/l/u1;->g:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    const-string v9, "pid"

    invoke-virtual {v8, v9}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 44
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "free_to_paid_test"

    .line 45
    invoke-static {v9, v8, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 46
    invoke-virtual {v7}, Le/a/l/p2/f;->a()V

    .line 47
    iget-object v7, v7, Le/a/l/p2/f;->a:Le/a/z4/d;

    const-string v9, "premiumFreePromoReceived"

    invoke-interface {v7, v9, v3}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    if-eqz v8, :cond_9

    .line 48
    iget-object p1, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 49
    iget-object p1, p1, Le/a/l/v1;->a:Landroid/content/Context;

    const v2, 0x7f1204de

    .line 50
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "context.getString(R.stri\u2026DialogFreePromotionTitle)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 52
    iget-object v2, v2, Le/a/l/v1;->a:Landroid/content/Context;

    const v3, 0x7f1204dd

    .line 53
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.stri\u2026alogFreePromotionMessage)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const-string v1, "gold"

    .line 54
    invoke-static {v1, p1, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 55
    iget-object v1, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 56
    iget-object v1, v1, Le/a/l/v1;->a:Landroid/content/Context;

    const v6, 0x7f1204b9

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    .line 57
    invoke-virtual {v1, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "context.getString(R.stri\u2026oldObtainedMessage, days)"

    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 58
    :cond_a
    iget-object v1, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 59
    iget-object v1, v1, Le/a/l/v1;->e:Le/a/l/a/o;

    .line 60
    invoke-virtual {v1}, Le/a/l/a/o;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 61
    iget-object v1, v1, Le/a/l/v1;->c:Le/a/l/a/y;

    .line 62
    invoke-virtual {v1}, Le/a/l/a/y;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 63
    iget-object v1, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 64
    iget-object v1, v1, Le/a/l/v1;->a:Landroid/content/Context;

    const v2, 0x7f1204dc

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "context.getString(R.stri\u2026edDialogFreePremiumTitle)"

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 67
    iget-object v1, v1, Le/a/l/v1;->a:Landroid/content/Context;

    const v2, 0x7f1204db

    .line 68
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "context.getString(R.stri\u2026DialogFreePremiumMessage)"

    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    :goto_3
    move-object v1, p1

    move-object p1, v5

    move-object v2, v6

    .line 69
    :goto_4
    iget-object v3, p0, Le/a/l/u1;->f:Le/a/l/v1;

    .line 70
    iget-object v3, v3, Le/a/l/v1;->a:Landroid/content/Context;

    const-string v4, "context"

    .line 71
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "title"

    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "level"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    .line 73
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "ARG_TITLE"

    .line 74
    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v4, "ARG_TEXT"

    .line 75
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "ARG_LEVEL"

    .line 76
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 77
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v0
.end method
