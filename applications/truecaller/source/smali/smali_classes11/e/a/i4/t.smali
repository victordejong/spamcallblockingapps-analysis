.class public final Le/a/i4/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i4/s;


# instance fields
.field public final a:Le/a/i4/e;


# direct methods
.method public constructor <init>(Le/a/i4/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "notificationManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i4/t;->a:Le/a/i4/e;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;IILjava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/ui/TruecallerInit;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "EXTRA_REG_NUDGE"

    .line 3
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance p4, Ln3/k/a/q;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Le/a/j2;->a1()Le/a/h4/n;

    move-result-object v1

    invoke-interface {v1}, Le/a/h4/n;->d()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-direct {p4, p1, v1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 9
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 10
    new-instance p2, Ln3/k/a/o;

    invoke-direct {p2}, Ln3/k/a/o;-><init>()V

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {p4, p2}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    const p2, 0x7f06068b

    .line 11
    sget-object p3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 12
    invoke-static {p1, p2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p2

    .line 13
    iput p2, p4, Ln3/k/a/q;->D:I

    const/4 p2, -0x1

    .line 14
    invoke-virtual {p4, p2}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    const p2, 0x7f0816fb

    .line 15
    iget-object p3, p4, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p2, p3, Landroid/app/Notification;->icon:I

    const/4 p2, 0x0

    const/high16 p3, 0x4000000

    .line 16
    invoke-static {p1, p2, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 17
    iput-object p1, p4, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/4 p1, 0x1

    const/16 p2, 0x10

    .line 18
    invoke-virtual {p4, p2, p1}, Ln3/k/a/q;->p(IZ)V

    const-string p1, "NotificationCompat.Build\u2026     .setAutoCancel(true)"

    .line 19
    invoke-static {p4, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Le/a/i4/t;->a:Le/a/i4/e;

    const p2, 0x7f0a0605

    invoke-virtual {p4}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p3

    const-string p4, "builder.build()"

    invoke-static {p3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "notificationRegistrationNudge"

    invoke-interface {p1, p2, p3, p4}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    return-void
.end method
