.class public final Lcom/truecaller/whoviewedme/ReceiveProfileViewService;
.super Le/a/r5/e;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00087\u00108J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010.\u001a\u00020\'8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105\u00a8\u00069"
    }
    d2 = {
        "Lcom/truecaller/whoviewedme/ReceiveProfileViewService;",
        "Ln3/k/a/a0;",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onHandleWork",
        "(Landroid/content/Intent;)V",
        "Le/a/r5/i0;",
        "d",
        "Le/a/r5/i0;",
        "getWhoViewedMeManager",
        "()Le/a/r5/i0;",
        "setWhoViewedMeManager",
        "(Le/a/r5/i0;)V",
        "whoViewedMeManager",
        "Le/a/r5/l0;",
        "g",
        "Le/a/r5/l0;",
        "getWhoViewedMeNotifier",
        "()Le/a/r5/l0;",
        "setWhoViewedMeNotifier",
        "(Le/a/r5/l0;)V",
        "whoViewedMeNotifier",
        "Le/a/z4/d;",
        "e",
        "Le/a/z4/d;",
        "getGeneralSettings",
        "()Le/a/z4/d;",
        "setGeneralSettings",
        "(Le/a/z4/d;)V",
        "generalSettings",
        "Le/a/r5/j;",
        "i",
        "Le/a/r5/j;",
        "getProfileViewDao",
        "()Le/a/r5/j;",
        "setProfileViewDao",
        "(Le/a/r5/j;)V",
        "profileViewDao",
        "Le/a/k3/j/j;",
        "h",
        "Le/a/k3/j/j;",
        "getRawContactDao",
        "()Le/a/k3/j/j;",
        "setRawContactDao",
        "(Le/a/k3/j/j;)V",
        "rawContactDao",
        "Le/a/q2/a;",
        "f",
        "Le/a/q2/a;",
        "getAnalytics",
        "()Le/a/q2/a;",
        "setAnalytics",
        "(Le/a/q2/a;)V",
        "analytics",
        "<init>",
        "()V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic j:I


# instance fields
.field public d:Le/a/r5/i0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/z4/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/r5/l0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Le/a/k3/j/j;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Le/a/r5/j;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/r5/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleWork(Landroid/content/Intent;)V
    .locals 14

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->d:Le/a/r5/i0;

    const-string v1, "whoViewedMeManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Le/a/r5/i0;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->e:Le/a/z4/d;

    if-eqz v0, :cond_14

    const-string v3, "showProfileViewNotifications"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Le/a/z4/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string v0, "EXTRA_TC_ID"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "TC id is null in Who viewed me notifications"

    .line 3
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    const-string v3, "EXTRA_PROFILE_VIEW_EVENT_SOURCE"

    .line 4
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v3, "it"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/truecaller/whoviewedme/ProfileViewSource;->valueOf(Ljava/lang/String;)Lcom/truecaller/whoviewedme/ProfileViewSource;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type com.truecaller.whoviewedme.ProfileViewSource"

    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    sget-object p1, Lcom/truecaller/whoviewedme/ProfileViewSource;->UNKNOWN:Lcom/truecaller/whoviewedme/ProfileViewSource;

    .line 6
    :goto_1
    invoke-static {}, Le/a/w4/l;->a()Le/a/w4/m;

    move-result-object v3

    invoke-interface {v3, v0}, Le/a/w4/m;->e(Ljava/lang/String;)Lx3/b;

    move-result-object v0

    const/4 v3, 0x0

    .line 7
    :try_start_1
    invoke-static {v0}, Le/a/n/g0;->p0(Lx3/b;)Lx3/a0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v2

    :goto_2
    invoke-static {v5}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v0, :cond_8

    .line 9
    iget-object v0, v0, Lx3/a0;->b:Ljava/lang/Object;

    .line 10
    check-cast v0, Lcom/truecaller/data/dto/ContactDto;

    if-eqz v0, :cond_8

    const-string v5, "contactDto"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto;->data:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-static {v0, v3}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    goto :goto_3

    :cond_5
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_6

    .line 12
    iget-object v5, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->access:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v5, v2

    :goto_4
    const-string v6, "PRIVATE"

    invoke-static {v5, v6, v4}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v0, :cond_7

    .line 13
    iput-object v2, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->phones:Ljava/util/List;

    :cond_7
    if-eqz v0, :cond_8

    .line 14
    new-instance v5, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v5, v0}, Lcom/truecaller/data/entity/Contact;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    :cond_8
    move-object v5, v2

    :goto_5
    if-eqz v5, :cond_13

    .line 15
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v6, "contact.defaultAddress ?: return"

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v6, p0, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->h:Le/a/k3/j/j;

    if-eqz v6, :cond_12

    invoke-virtual {v6, v5}, Le/a/k3/j/j;->c(Lcom/truecaller/data/entity/Contact;)Z

    .line 17
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11

    const-string v7, "this.tcId ?: return"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 19
    iget-object v5, p0, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->i:Le/a/r5/j;

    const-string v7, "profileViewDao"

    if-eqz v5, :cond_10

    check-cast v5, Le/a/r5/n;

    .line 20
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "tcId"

    invoke-static {v6, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "source"

    invoke-static {p1, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v8, Lcom/truecaller/whoviewedme/ProfileViewType;->INCOMING:Lcom/truecaller/whoviewedme/ProfileViewType;

    invoke-virtual {v5, v6, p1, v8}, Le/a/r5/n;->b(Ljava/lang/String;Lcom/truecaller/whoviewedme/ProfileViewSource;Lcom/truecaller/whoviewedme/ProfileViewType;)V

    .line 22
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.truecaller.notification.action.NOTIFICATIONS_UPDATED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v6

    invoke-virtual {v6, v5}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    .line 24
    iget-object v5, p0, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->d:Le/a/r5/i0;

    if-eqz v5, :cond_f

    invoke-interface {v5}, Le/a/r5/i0;->m()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 25
    iget-object v8, p0, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->i:Le/a/r5/j;

    if-eqz v8, :cond_c

    iget-object v5, p0, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->d:Le/a/r5/i0;

    if-eqz v5, :cond_b

    invoke-interface {v5}, Le/a/r5/i0;->r()J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Le/a/p5/s0/g;->U(Le/a/r5/j;JLcom/truecaller/whoviewedme/ProfileViewSource;ILjava/lang/Object;)I

    move-result v1

    .line 26
    invoke-static {v0}, Le/a/p5/s0/g;->y0(Lcom/truecaller/data/entity/Address;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 27
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f100034

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {v0, v5, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 28
    :cond_9
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100035

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    aput-object v0, v7, v4

    .line 30
    invoke-virtual {v5, v6, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    const-string v1, "when (val location = def\u2026          )\n            }"

    .line 31
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1207d9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "resources.getString(stri\u2026wedMeNotificationMessage)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v3, p0, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->g:Le/a/r5/l0;

    if-eqz v3, :cond_a

    sget-object v4, Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;->NOTIFICATION:Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;

    invoke-virtual {v3, v0, v1, v4}, Le/a/r5/l0;->a(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;)V

    goto :goto_7

    :cond_a
    const-string p1, "whoViewedMeNotifier"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_b
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_d
    :goto_7
    new-instance v0, Le/a/r5/s0/b;

    invoke-direct {v0, p1}, Le/a/r5/s0/b;-><init>(Lcom/truecaller/whoviewedme/ProfileViewSource;)V

    iget-object p1, p0, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->f:Le/a/q2/a;

    if-eqz p1, :cond_e

    invoke-static {v0, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto :goto_8

    :cond_e
    const-string p1, "analytics"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_f
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_10
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_11
    return-void

    :cond_12
    const-string p1, "rawContactDao"

    .line 38
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_13
    :goto_8
    return-void

    :cond_14
    const-string p1, "generalSettings"

    .line 39
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_15
    :goto_9
    return-void

    :cond_16
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
