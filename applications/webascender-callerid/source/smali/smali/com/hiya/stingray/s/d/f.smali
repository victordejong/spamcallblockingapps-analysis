.class public final Lcom/hiya/stingray/s/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/s/d/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/s/d/f$c;,
        Lcom/hiya/stingray/s/d/f$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/s/d/h;

.field private b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/app/job/JobInfo$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/hiya/stingray/s/e/s0;Lcom/hiya/stingray/s/d/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/s/d/f;->A(Lcom/hiya/stingray/s/e/s0;Lcom/hiya/stingray/s/d/h;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hiya/stingray/s/e/s0;Lcom/hiya/stingray/s/d/h;Lcom/hiya/stingray/s/d/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/s/d/f;-><init>(Lcom/hiya/stingray/s/e/s0;Lcom/hiya/stingray/s/d/h;)V

    return-void
.end method

.method private A(Lcom/hiya/stingray/s/e/s0;Lcom/hiya/stingray/s/d/h;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/s/d/f$c;

    invoke-direct {v0, p2}, Lcom/hiya/stingray/s/d/f$c;-><init>(Lcom/hiya/stingray/s/d/h;)V

    iput-object v0, p0, Lcom/hiya/stingray/s/d/f;->b:Lj/a/a;

    .line 2
    invoke-static {p1, v0}, Lcom/hiya/stingray/s/e/t0;->a(Lcom/hiya/stingray/s/e/s0;Lj/a/a;)Lcom/hiya/stingray/s/e/t0;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/s/d/f;->c:Lj/a/a;

    return-void
.end method

.method private B(Lcom/hiya/stingray/notification/BlockedCallNotificationHandler;)Lcom/hiya/stingray/notification/BlockedCallNotificationHandler;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->j()Lcom/hiya/stingray/notification/n;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lcom/hiya/stingray/notification/o;->a(Lcom/hiya/stingray/notification/BlockedCallNotificationHandler;Lcom/hiya/stingray/notification/n;)V

    return-object p1
.end method

.method private C(Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;)Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->p()Lcom/hiya/stingray/notification/r;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lcom/hiya/stingray/notification/q;->a(Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;Lcom/hiya/stingray/notification/r;)V

    return-object p1
.end method

.method private D(Lcom/hiya/stingray/notification/NotificationReceiver;)Lcom/hiya/stingray/notification/NotificationReceiver;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->r()Lcom/hiya/stingray/notification/y;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/notification/u;->b(Lcom/hiya/stingray/notification/NotificationReceiver;Lcom/hiya/stingray/notification/y;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 3
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->M()Lcom/hiya/stingray/manager/e1;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 4
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/manager/e1;

    .line 5
    invoke-static {p1, v0}, Lcom/hiya/stingray/notification/u;->a(Lcom/hiya/stingray/notification/NotificationReceiver;Lcom/hiya/stingray/manager/e1;)V

    return-object p1
.end method

.method private E(Lcom/hiya/stingray/receiver/OnUpgradeReceiver;)Lcom/hiya/stingray/receiver/OnUpgradeReceiver;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 2
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->I()Lcom/hiya/stingray/q/d/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/q/d/a;

    .line 4
    invoke-static {p1, v0}, Lcom/hiya/stingray/receiver/a;->b(Lcom/hiya/stingray/receiver/OnUpgradeReceiver;Lcom/hiya/stingray/q/d/a;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 6
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->K()Landroid/app/job/JobScheduler;

    move-result-object v0

    .line 7
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 8
    invoke-static {p1, v0}, Lcom/hiya/stingray/receiver/a;->e(Lcom/hiya/stingray/receiver/OnUpgradeReceiver;Landroid/app/job/JobScheduler;)V

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 10
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->k()Ljava/util/Map;

    move-result-object v0

    .line 11
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 12
    invoke-static {p1, v0}, Lcom/hiya/stingray/receiver/a;->d(Lcom/hiya/stingray/receiver/OnUpgradeReceiver;Ljava/util/Map;)V

    .line 13
    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 14
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->J()Lcom/hiya/stingray/manager/p4/a;

    move-result-object v0

    .line 15
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/manager/p4/a;

    .line 16
    invoke-static {p1, v0}, Lcom/hiya/stingray/receiver/a;->f(Lcom/hiya/stingray/receiver/OnUpgradeReceiver;Lcom/hiya/stingray/manager/p4/a;)V

    .line 17
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->i()Lcom/hiya/stingray/manager/i1;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/receiver/a;->a(Lcom/hiya/stingray/receiver/OnUpgradeReceiver;Lcom/hiya/stingray/manager/i1;)V

    .line 18
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->m()Lcom/hiya/stingray/manager/o2;

    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/hiya/stingray/receiver/a;->c(Lcom/hiya/stingray/receiver/OnUpgradeReceiver;Lcom/hiya/stingray/manager/o2;)V

    return-object p1
.end method

.method private F(Lcom/hiya/stingray/notification/PostCallNotificationHandler;)Lcom/hiya/stingray/notification/PostCallNotificationHandler;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->u()Lcom/hiya/stingray/notification/z;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lcom/hiya/stingray/notification/a0;->a(Lcom/hiya/stingray/notification/PostCallNotificationHandler;Lcom/hiya/stingray/notification/z;)V

    return-object p1
.end method

.method private G(Lcom/hiya/stingray/receiver/RCSEventReceiver;)Lcom/hiya/stingray/receiver/RCSEventReceiver;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 2
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->z()Lcom/hiya/stingray/manager/q1;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/manager/q1;

    .line 4
    invoke-static {p1, v0}, Lcom/hiya/stingray/receiver/b;->a(Lcom/hiya/stingray/receiver/RCSEventReceiver;Lcom/hiya/stingray/manager/q1;)V

    return-object p1
.end method

.method private H(Lcom/hiya/stingray/receiver/SmsEventReceiver;)Lcom/hiya/stingray/receiver/SmsEventReceiver;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 2
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->z()Lcom/hiya/stingray/manager/q1;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/manager/q1;

    .line 4
    invoke-static {p1, v0}, Lcom/hiya/stingray/receiver/c;->a(Lcom/hiya/stingray/receiver/SmsEventReceiver;Lcom/hiya/stingray/manager/q1;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 6
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->K()Landroid/app/job/JobScheduler;

    move-result-object v0

    .line 7
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 8
    invoke-static {p1, v0}, Lcom/hiya/stingray/receiver/c;->c(Lcom/hiya/stingray/receiver/SmsEventReceiver;Landroid/app/job/JobScheduler;)V

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->c:Lj/a/a;

    .line 10
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo$Builder;

    .line 11
    invoke-static {p1, v0}, Lcom/hiya/stingray/receiver/c;->d(Lcom/hiya/stingray/receiver/SmsEventReceiver;Landroid/app/job/JobInfo$Builder;)V

    .line 12
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->m()Lcom/hiya/stingray/manager/o2;

    move-result-object v0

    .line 13
    invoke-static {p1, v0}, Lcom/hiya/stingray/receiver/c;->b(Lcom/hiya/stingray/receiver/SmsEventReceiver;Lcom/hiya/stingray/manager/o2;)V

    return-object p1
.end method

.method public static h()Lcom/hiya/stingray/s/d/f$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/s/d/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/s/d/f$b;-><init>(Lcom/hiya/stingray/s/d/f$a;)V

    return-object v0
.end method

.method private i()Lcom/hiya/stingray/manager/i1;
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/i1;

    iget-object v1, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 2
    invoke-interface {v1}, Lcom/hiya/stingray/s/d/h;->I()Lcom/hiya/stingray/q/d/a;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v1, v2}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/hiya/stingray/q/d/a;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/manager/i1;-><init>(Lcom/hiya/stingray/q/d/a;)V

    return-object v0
.end method

.method private j()Lcom/hiya/stingray/notification/n;
    .locals 5

    .line 1
    new-instance v0, Lcom/hiya/stingray/notification/n;

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->i()Lcom/hiya/stingray/manager/i1;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->q()Lcom/hiya/stingray/notification/s;

    move-result-object v2

    iget-object v3, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 4
    invoke-interface {v3}, Lcom/hiya/stingray/s/d/h;->M()Lcom/hiya/stingray/manager/e1;

    move-result-object v3

    const-string v4, "Cannot return null from a non-@Nullable component method"

    .line 5
    invoke-static {v3, v4}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/hiya/stingray/manager/e1;

    invoke-direct {v0, v1, v2, v3}, Lcom/hiya/stingray/notification/n;-><init>(Lcom/hiya/stingray/manager/i1;Lcom/hiya/stingray/notification/s;Lcom/hiya/stingray/manager/e1;)V

    return-object v0
.end method

.method private k()Lcom/hiya/stingray/notification/c0/e;
    .locals 5

    .line 1
    new-instance v0, Lcom/hiya/stingray/notification/c0/e;

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->i()Lcom/hiya/stingray/manager/i1;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/ui/q;

    invoke-direct {v2}, Lcom/hiya/stingray/ui/q;-><init>()V

    iget-object v3, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 3
    invoke-interface {v3}, Lcom/hiya/stingray/s/d/h;->i()Lcom/hiya/stingray/manager/u3;

    move-result-object v3

    const-string v4, "Cannot return null from a non-@Nullable component method"

    .line 4
    invoke-static {v3, v4}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/hiya/stingray/manager/u3;

    invoke-direct {v0, v1, v2, v3}, Lcom/hiya/stingray/notification/c0/e;-><init>(Lcom/hiya/stingray/manager/i1;Lcom/hiya/stingray/ui/q;Lcom/hiya/stingray/manager/u3;)V

    return-object v0
.end method

.method private l()Lcom/hiya/stingray/q/b/v;
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/v;

    iget-object v1, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 2
    invoke-interface {v1}, Lcom/hiya/stingray/s/d/h;->e()Lcom/hiya/stingray/q/b/w;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v1, v2}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/hiya/stingray/q/b/w;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/q/b/v;-><init>(Lcom/hiya/stingray/q/b/w;)V

    return-object v0
.end method

.method private m()Lcom/hiya/stingray/manager/o2;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/o2;

    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->z()Lcom/hiya/stingray/q/d/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hiya/stingray/manager/o2;-><init>(Lcom/hiya/stingray/q/d/f;)V

    return-object v0
.end method

.method private n()Lcom/hiya/stingray/manager/s2;
    .locals 8

    .line 1
    new-instance v6, Lcom/hiya/stingray/manager/s2;

    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 2
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 4
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->f()Lcom/hiya/stingray/manager/x3;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/hiya/stingray/manager/x3;

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->z()Lcom/hiya/stingray/q/d/f;

    move-result-object v4

    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 7
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->M()Lcom/hiya/stingray/manager/e1;

    move-result-object v0

    .line 8
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/hiya/stingray/manager/e1;

    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 9
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->C()Lcom/hiya/stingray/util/a0;

    move-result-object v0

    .line 10
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/hiya/stingray/util/a0;

    move-object v0, v6

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/manager/s2;-><init>(Landroid/content/Context;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/util/a0;)V

    return-object v6
.end method

.method private o()Lcom/hiya/stingray/notification/c0/g;
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/stingray/notification/c0/g;

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->i()Lcom/hiya/stingray/manager/i1;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/ui/q;

    invoke-direct {v2}, Lcom/hiya/stingray/ui/q;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/notification/c0/g;-><init>(Lcom/hiya/stingray/manager/i1;Lcom/hiya/stingray/ui/q;)V

    return-object v0
.end method

.method private p()Lcom/hiya/stingray/notification/r;
    .locals 4

    .line 1
    new-instance v0, Lcom/hiya/stingray/notification/r;

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->i()Lcom/hiya/stingray/manager/i1;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 3
    invoke-interface {v2}, Lcom/hiya/stingray/s/d/h;->M()Lcom/hiya/stingray/manager/e1;

    move-result-object v2

    const-string v3, "Cannot return null from a non-@Nullable component method"

    .line 4
    invoke-static {v2, v3}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/hiya/stingray/manager/e1;

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->q()Lcom/hiya/stingray/notification/s;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/hiya/stingray/notification/r;-><init>(Lcom/hiya/stingray/manager/i1;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/notification/s;)V

    return-object v0
.end method

.method private q()Lcom/hiya/stingray/notification/s;
    .locals 8

    .line 1
    new-instance v6, Lcom/hiya/stingray/notification/s;

    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 2
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 4
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->g()Lcom/hiya/stingray/manager/c2;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/hiya/stingray/manager/c2;

    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 6
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->c()Lcom/hiya/stingray/manager/o1;

    move-result-object v0

    .line 7
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/hiya/stingray/manager/o1;

    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 8
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->E()Lcom/hiya/stingray/manager/h4;

    move-result-object v0

    .line 9
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/hiya/stingray/manager/h4;

    .line 10
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->m()Lcom/hiya/stingray/manager/o2;

    move-result-object v7

    move-object v0, v6

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/s;-><init>(Landroid/content/Context;Lcom/hiya/stingray/manager/c2;Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/manager/o2;)V

    return-object v6
.end method

.method private r()Lcom/hiya/stingray/notification/y;
    .locals 7

    .line 1
    new-instance v6, Lcom/hiya/stingray/notification/y;

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->k()Lcom/hiya/stingray/notification/c0/e;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->o()Lcom/hiya/stingray/notification/c0/g;

    move-result-object v2

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->v()Lcom/hiya/stingray/notification/c0/j;

    move-result-object v3

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->w()Lcom/hiya/stingray/notification/c0/k;

    move-result-object v4

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->x()Lcom/hiya/stingray/notification/c0/l;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/y;-><init>(Lcom/hiya/stingray/notification/c0/e;Lcom/hiya/stingray/notification/c0/g;Lcom/hiya/stingray/notification/c0/j;Lcom/hiya/stingray/notification/c0/k;Lcom/hiya/stingray/notification/c0/l;)V

    return-object v6
.end method

.method private s()Lcom/hiya/stingray/ui/login/o;
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/login/o;

    iget-object v1, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 2
    invoke-interface {v1}, Lcom/hiya/stingray/s/d/h;->M()Lcom/hiya/stingray/manager/e1;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v1, v2}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/hiya/stingray/manager/e1;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/login/o;-><init>(Lcom/hiya/stingray/manager/e1;)V

    return-object v0
.end method

.method private t()Lcom/hiya/stingray/q/b/y;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/y;

    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->l()Lcom/hiya/stingray/q/b/v;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hiya/stingray/q/b/y;-><init>(Lcom/hiya/stingray/q/b/v;)V

    return-object v0
.end method

.method private u()Lcom/hiya/stingray/notification/z;
    .locals 10

    .line 1
    new-instance v8, Lcom/hiya/stingray/notification/z;

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->i()Lcom/hiya/stingray/manager/i1;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->q()Lcom/hiya/stingray/notification/s;

    move-result-object v2

    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 4
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->M()Lcom/hiya/stingray/manager/e1;

    move-result-object v0

    const-string v3, "Cannot return null from a non-@Nullable component method"

    .line 5
    invoke-static {v0, v3}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/hiya/stingray/manager/e1;

    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 6
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->g()Lcom/hiya/stingray/manager/c2;

    move-result-object v0

    .line 7
    invoke-static {v0, v3}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/hiya/stingray/manager/c2;

    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 8
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->E()Lcom/hiya/stingray/manager/h4;

    move-result-object v0

    .line 9
    invoke-static {v0, v3}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/hiya/stingray/manager/h4;

    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 10
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->d()Lcom/hiya/stingray/manager/j4;

    move-result-object v0

    .line 11
    invoke-static {v0, v3}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/hiya/stingray/manager/j4;

    .line 12
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->y()Lcom/hiya/stingray/r/a;

    move-result-object v9

    move-object v0, v8

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/hiya/stingray/notification/z;-><init>(Lcom/hiya/stingray/manager/i1;Lcom/hiya/stingray/notification/s;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/manager/c2;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/manager/j4;Lcom/hiya/stingray/r/a;)V

    return-object v8
.end method

.method private v()Lcom/hiya/stingray/notification/c0/j;
    .locals 8

    .line 1
    new-instance v6, Lcom/hiya/stingray/notification/c0/j;

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->i()Lcom/hiya/stingray/manager/i1;

    move-result-object v1

    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 3
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->i()Lcom/hiya/stingray/manager/u3;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 4
    invoke-static {v0, v2}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/hiya/stingray/manager/u3;

    new-instance v4, Lcom/hiya/stingray/ui/q;

    invoke-direct {v4}, Lcom/hiya/stingray/ui/q;-><init>()V

    iget-object v0, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 5
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->M()Lcom/hiya/stingray/manager/e1;

    move-result-object v0

    .line 6
    invoke-static {v0, v2}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/hiya/stingray/manager/e1;

    .line 7
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->y()Lcom/hiya/stingray/r/a;

    move-result-object v7

    move-object v0, v6

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;-><init>(Lcom/hiya/stingray/manager/i1;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/ui/q;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/r/a;)V

    return-object v6
.end method

.method private w()Lcom/hiya/stingray/notification/c0/k;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/notification/c0/k;

    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->i()Lcom/hiya/stingray/manager/i1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hiya/stingray/notification/c0/k;-><init>(Lcom/hiya/stingray/manager/i1;)V

    return-object v0
.end method

.method private x()Lcom/hiya/stingray/notification/c0/l;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/notification/c0/l;

    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->i()Lcom/hiya/stingray/manager/i1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hiya/stingray/notification/c0/l;-><init>(Lcom/hiya/stingray/manager/i1;)V

    return-object v0
.end method

.method private y()Lcom/hiya/stingray/r/a;
    .locals 5

    .line 1
    new-instance v0, Lcom/hiya/stingray/r/a;

    iget-object v1, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 2
    invoke-interface {v1}, Lcom/hiya/stingray/s/d/h;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v1, v2}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->n()Lcom/hiya/stingray/manager/s2;

    move-result-object v2

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->s()Lcom/hiya/stingray/ui/login/o;

    move-result-object v3

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/f;->t()Lcom/hiya/stingray/q/b/y;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hiya/stingray/r/a;-><init>(Landroid/content/Context;Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/q/b/y;)V

    return-object v0
.end method

.method private z()Lcom/hiya/stingray/q/d/f;
    .locals 4

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/d/f;

    iget-object v1, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 2
    invoke-interface {v1}, Lcom/hiya/stingray/s/d/h;->H()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v1, v2}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/hiya/stingray/s/d/f;->a:Lcom/hiya/stingray/s/d/h;

    .line 4
    invoke-interface {v3}, Lcom/hiya/stingray/s/d/h;->b()Landroid/content/Context;

    move-result-object v3

    .line 5
    invoke-static {v3, v2}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/hiya/stingray/q/d/f;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/s/d/f;->C(Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;)Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;

    return-void
.end method

.method public b(Lcom/hiya/stingray/receiver/OnUpgradeReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/s/d/f;->E(Lcom/hiya/stingray/receiver/OnUpgradeReceiver;)Lcom/hiya/stingray/receiver/OnUpgradeReceiver;

    return-void
.end method

.method public c(Lcom/hiya/stingray/receiver/RCSEventReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/s/d/f;->G(Lcom/hiya/stingray/receiver/RCSEventReceiver;)Lcom/hiya/stingray/receiver/RCSEventReceiver;

    return-void
.end method

.method public d(Lcom/hiya/stingray/notification/BlockedCallNotificationHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/s/d/f;->B(Lcom/hiya/stingray/notification/BlockedCallNotificationHandler;)Lcom/hiya/stingray/notification/BlockedCallNotificationHandler;

    return-void
.end method

.method public e(Lcom/hiya/stingray/notification/NotificationReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/s/d/f;->D(Lcom/hiya/stingray/notification/NotificationReceiver;)Lcom/hiya/stingray/notification/NotificationReceiver;

    return-void
.end method

.method public f(Lcom/hiya/stingray/notification/PostCallNotificationHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/s/d/f;->F(Lcom/hiya/stingray/notification/PostCallNotificationHandler;)Lcom/hiya/stingray/notification/PostCallNotificationHandler;

    return-void
.end method

.method public g(Lcom/hiya/stingray/receiver/SmsEventReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/s/d/f;->H(Lcom/hiya/stingray/receiver/SmsEventReceiver;)Lcom/hiya/stingray/receiver/SmsEventReceiver;

    return-void
.end method
