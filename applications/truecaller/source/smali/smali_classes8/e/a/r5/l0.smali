.class public final Le/a/r5/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/z4/d;

.field public final c:Le/a/i4/e;

.field public final d:Le/a/r5/k0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/z4/d;Le/a/i4/e;Le/a/r5/k0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r5/l0;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/r5/l0;->b:Le/a/z4/d;

    iput-object p3, p0, Le/a/r5/l0;->c:Le/a/i4/e;

    iput-object p4, p0, Le/a/r5/l0;->d:Le/a/r5/k0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;)V
    .locals 11

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launchContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r5/l0;->a:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/truecaller/whoviewedme/WhoViewedMeActivity$a;->a(Landroid/content/Context;Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;)Landroid/content/Intent;

    move-result-object p3

    .line 2
    iget-object v0, p0, Le/a/r5/l0;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {v0, v1, p3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 3
    iget-object v0, p0, Le/a/r5/l0;->c:Le/a/i4/e;

    const-string v1, "profile_views"

    invoke-interface {v0, v1}, Le/a/i4/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ln3/k/a/q;

    iget-object v2, p0, Le/a/r5/l0;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/r5/l0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Le/a/r5/l0;->d:Le/a/r5/k0;

    .line 6
    iget-object v3, v2, Le/a/r5/k0;->b:Le/a/z4/d;

    sget-object v4, Ls1/c0/c;->b:Ls1/c0/c$a;

    const/16 v5, 0x9

    const/4 v6, -0x1

    invoke-virtual {v4, v6, v5}, Ls1/c0/c$a;->d(II)I

    move-result v4

    const-string v5, "wvmNotificationIcon"

    invoke-interface {v3, v5, v4}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 7
    rem-int/lit8 v3, v3, 0xa

    .line 8
    iget-object v7, v2, Le/a/r5/k0;->b:Le/a/z4/d;

    invoke-interface {v7, v5, v3}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    .line 9
    iget-object v2, v2, Le/a/r5/k0;->a:[Ljava/lang/Integer;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 10
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 11
    invoke-virtual {v1, p1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 12
    invoke-virtual {v1, p1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 13
    invoke-virtual {v1, p2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 14
    iget-object p1, p0, Le/a/r5/l0;->a:Landroid/content/Context;

    const v2, 0x7f06068b

    .line 15
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 16
    invoke-static {p1, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 17
    iput p1, v1, Ln3/k/a/q;->D:I

    .line 18
    invoke-virtual {v1, v6}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    .line 19
    invoke-virtual {v1, v0}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    const p1, 0x7f0816fb

    .line 20
    iget-object v0, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 21
    new-instance p1, Ln3/k/a/o;

    invoke-direct {p1}, Ln3/k/a/o;-><init>()V

    invoke-virtual {p1, p2}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v1, p1}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 22
    iput-object p3, v1, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 p1, 0x10

    .line 23
    invoke-virtual {v1, p1, v4}, Ln3/k/a/q;->p(IZ)V

    .line 24
    invoke-virtual {v1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v8

    const-string p1, "builder.setContentTitle(\u2026rue)\n            .build()"

    invoke-static {v8, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v5, p0, Le/a/r5/l0;->c:Le/a/i4/e;

    const/4 v6, 0x0

    const v7, 0x7f0a142c

    const/4 v10, 0x0

    const-string v9, "notificationWhoViewedMe"

    invoke-interface/range {v5 .. v10}, Le/a/i4/e;->c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 26
    iget-object p1, p0, Le/a/r5/l0;->b:Le/a/z4/d;

    .line 27
    new-instance p2, Lw3/b/a/b;

    invoke-direct {p2}, Lw3/b/a/b;-><init>()V

    const-string p3, "DateTime.now()"

    .line 28
    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-wide p2, p2, Lw3/b/a/e0/e;->a:J

    const-string v0, "whoViewedMeNotificationTimestamp"

    .line 30
    invoke-interface {p1, v0, p2, p3}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    return-void
.end method
