.class public final Le/a/n2/c/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/g0/h;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/i4/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo3/a;Le/a/i4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo3/a<",
            "Le/a/g0/h;",
            ">;",
            "Le/a/i4/e;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suspensionNotificationManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n2/c/b/b;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/n2/c/b/b;->b:Lo3/a;

    iput-object p3, p0, Le/a/n2/c/b/b;->c:Le/a/i4/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/n2/c/b/b;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g0/h;

    invoke-interface {v0}, Le/a/g0/h;->b()Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->getTitle()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->getContent()I

    move-result v2

    const-string v3, "notificationAccountSuspended"

    .line 4
    invoke-virtual {p0, v1, v2, v3}, Le/a/n2/c/b/b;->b(IILjava/lang/String;)V

    .line 5
    iget-object v1, p0, Le/a/n2/c/b/b;->b:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/g0/h;

    invoke-interface {v1, v0}, Le/a/g0/h;->a(Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;)V

    return-void
.end method

.method public final b(IILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/n2/c/b/b;->c:Le/a/i4/e;

    invoke-interface {v0}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Le/a/n2/c/b/b;->a:Landroid/content/Context;

    const-class v3, Lcom/truecaller/ui/TruecallerInit;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    new-instance v2, Ln3/k/a/q;

    iget-object v3, p0, Le/a/n2/c/b/b;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/n2/c/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 6
    iget-object p1, p0, Le/a/n2/c/b/b;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 7
    new-instance p1, Ln3/k/a/o;

    invoke-direct {p1}, Ln3/k/a/o;-><init>()V

    iget-object v0, p0, Le/a/n2/c/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v2, p1}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 8
    iget-object p1, p0, Le/a/n2/c/b/b;->a:Landroid/content/Context;

    .line 9
    sget-object p2, Ln3/k/b/a;->a:Ljava/lang/Object;

    const p2, 0x7f06068b

    .line 10
    invoke-static {p1, p2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 11
    iput p1, v2, Ln3/k/a/q;->D:I

    const/4 p1, -0x1

    .line 12
    invoke-virtual {v2, p1}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    .line 13
    iget-object p1, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    const p2, 0x7f0816fb

    iput p2, p1, Landroid/app/Notification;->icon:I

    .line 14
    iget-object p1, p0, Le/a/n2/c/b/b;->a:Landroid/content/Context;

    const/4 p2, 0x0

    const/high16 v0, 0x4000000

    invoke-static {p1, p2, v1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 15
    iput-object p1, v2, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 p1, 0x10

    const/4 p2, 0x1

    .line 16
    invoke-virtual {v2, p1, p2}, Ln3/k/a/q;->p(IZ)V

    const-string p1, "NotificationCompat.Build\u2026     .setAutoCancel(true)"

    .line 17
    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Le/a/n2/c/b/b;->c:Le/a/i4/e;

    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p2

    const-string v0, "builder.build()"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a0046

    invoke-interface {p1, v0, p2, p3}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    return-void
.end method
