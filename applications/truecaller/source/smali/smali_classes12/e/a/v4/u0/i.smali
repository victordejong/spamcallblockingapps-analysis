.class public final Le/a/v4/u0/i;
.super Le/a/v4/u0/a;
.source "SourceFile"


# instance fields
.field public final j:Lcom/truecaller/sdk/push/PushAppData;

.field public final k:Landroid/app/NotificationManager;

.field public final l:Le/a/v4/b0;

.field public final m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/app/NotificationManager;Le/a/v4/b0;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/l;Le/a/v4/v;Landroid/os/Handler;I)V
    .locals 6

    and-int/lit16 p8, p9, 0x80

    if-eqz p8, :cond_0

    .line 1
    new-instance p8, Landroid/os/Handler;

    invoke-direct {p8}, Landroid/os/Handler;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p8, 0x0

    :goto_0
    const-string p9, "extras"

    .line 2
    invoke-static {p1, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "notificationManager"

    invoke-static {p2, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "sdkWebRepository"

    invoke-static {p3, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "coreSettings"

    invoke-static {p4, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "accountSettings"

    invoke-static {p5, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "eventsTrackerHolder"

    invoke-static {p6, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "sdkAccountManager"

    invoke-static {p7, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "handler"

    invoke-static {p8, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 3
    invoke-direct/range {v0 .. v5}, Le/a/v4/u0/a;-><init>(Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/l;Le/a/v4/v;)V

    iput-object p2, p0, Le/a/v4/u0/i;->k:Landroid/app/NotificationManager;

    iput-object p3, p0, Le/a/v4/u0/i;->l:Le/a/v4/b0;

    iput-object p8, p0, Le/a/v4/u0/i;->m:Landroid/os/Handler;

    const-string p2, "a"

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/sdk/push/PushAppData;

    iput-object p1, p0, Le/a/v4/u0/i;->j:Lcom/truecaller/sdk/push/PushAppData;

    return-void
.end method


# virtual methods
.method public C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/i;->j:Lcom/truecaller/sdk/push/PushAppData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/v4/u0/h;->b:Z

    .line 2
    iget-object v1, p0, Le/a/v4/u0/i;->j:Lcom/truecaller/sdk/push/PushAppData;

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v0, p0, Le/a/v4/u0/a;->i:Z

    .line 4
    iget-object v0, p0, Le/a/v4/u0/i;->l:Le/a/v4/b0;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, v1, Lcom/truecaller/sdk/push/PushAppData;->a:Ljava/lang/String;

    .line 7
    sget-object v1, Lcom/truecaller/common/network/util/KnownEndpoints;->API:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v2, Le/a/v4/m0;

    invoke-static {v1, v2}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/v4/m0;

    invoke-interface {v1, v0}, Le/a/v4/m0;->a(Ljava/lang/String;)Lx3/b;

    move-result-object v0

    .line 8
    invoke-interface {v0, p0}, Lx3/b;->enqueue(Lx3/d;)V

    .line 9
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Le/a/v4/w0/b;->S1()V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "web_api"

    return-object v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    .line 2
    iget-object v1, p0, Le/a/v4/u0/i;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.0"

    return-object v0
.end method

.method public h()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    .line 2
    invoke-interface {v0}, Le/a/v4/u0/k/a;->d()V

    .line 3
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0}, Le/a/v4/w0/b;->M3()V

    .line 5
    iget-object v0, p0, Le/a/v4/u0/i;->k:Landroid/app/NotificationManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 6
    iget-object v0, p0, Le/a/v4/u0/h;->d:Landroid/os/Bundle;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "timout_left"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 9
    iget-object v0, p0, Le/a/v4/u0/i;->j:Lcom/truecaller/sdk/push/PushAppData;

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/truecaller/sdk/push/PushAppData;->c:I

    int-to-long v6, v1

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long/2addr v6, v2

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    cmp-long v1, v6, v4

    if-lez v1, :cond_1

    .line 10
    iget-object v0, p0, Le/a/v4/u0/i;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Le/a/v4/u0/i;->m:Landroid/os/Handler;

    new-instance v1, Le/a/v4/u0/i$a;

    invoke-direct {v1, p0}, Le/a/v4/u0/i$a;-><init>(Le/a/v4/u0/i;)V

    new-instance v2, Le/a/v4/u0/j;

    invoke-direct {v2, v1}, Le/a/v4/u0/j;-><init>(Ls1/z/b/a;)V

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 12
    iget-object v1, p0, Le/a/v4/u0/i;->l:Le/a/v4/b0;

    invoke-virtual {v1, v0}, Le/a/v4/b0;->b(Lcom/truecaller/sdk/push/PushAppData;)V

    .line 13
    :cond_2
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0}, Le/a/v4/w0/b;->V1()V

    :cond_3
    :goto_1
    return-void
.end method

.method public m()Le/a/t/b/c/c;
    .locals 3

    .line 1
    new-instance v0, Le/a/t/b/c/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Le/a/t/b/c/c;-><init>(IILcom/truecaller/android/sdk/clients/CustomDataBundle;)V

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/v4/u0/i;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/u0/i;->j:Lcom/truecaller/sdk/push/PushAppData;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/v4/u0/i;->l:Le/a/v4/b0;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, v0, Lcom/truecaller/sdk/push/PushAppData;->a:Ljava/lang/String;

    .line 5
    sget-object p2, Lcom/truecaller/common/network/util/KnownEndpoints;->API:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v0, Le/a/v4/m0;

    invoke-static {p2, v0}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/v4/m0;

    invoke-interface {p2, p1}, Le/a/v4/m0;->a(Ljava/lang/String;)Lx3/b;

    move-result-object p1

    .line 6
    invoke-interface {p1, p0}, Lx3/b;->enqueue(Lx3/d;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    .line 8
    invoke-interface {p1, p2}, Le/a/v4/u0/k/a;->c(I)V

    .line 9
    iget-object p1, p0, Le/a/v4/u0/i;->l:Le/a/v4/b0;

    invoke-virtual {p1, v0}, Le/a/v4/b0;->b(Lcom/truecaller/sdk/push/PushAppData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/i;->j:Lcom/truecaller/sdk/push/PushAppData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/truecaller/sdk/push/PushAppData;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
