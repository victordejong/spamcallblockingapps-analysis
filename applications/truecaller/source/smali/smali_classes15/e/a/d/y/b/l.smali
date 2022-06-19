.class public final Le/a/d/y/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public a:Landroid/content/ComponentName;

.field public final synthetic b:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/y/b/l;->b:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Voip service connected to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/d/y/b/l;->b:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;

    invoke-static {v0}, Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;->g1(Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;)V

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/d/y/b/l;->a:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    const-string p1, "Already connected to the service: "

    .line 4
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Le/a/d/y/b/l;->a:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 5
    :cond_1
    iput-object p1, p0, Le/a/d/y/b/l;->a:Landroid/content/ComponentName;

    .line 6
    instance-of p1, p2, Le/a/d/b/a/s;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Le/a/d/y/b/l;->b:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;

    sget-object v1, Lcom/truecaller/voip/notification/inapp/ServiceType;->ONGOING:Lcom/truecaller/voip/notification/inapp/ServiceType;

    .line 8
    iput-object v1, p1, Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;->B:Lcom/truecaller/voip/notification/inapp/ServiceType;

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;->getPresenter()Le/a/d/y/b/b;

    move-result-object p1

    check-cast p2, Le/a/d/b/a/s;

    .line 10
    iget-object p2, p2, Le/a/d/b/a/s;->a:Le/a/d/b/a/d;

    .line 11
    check-cast p1, Le/a/d/y/b/h;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "binderView"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p2}, Le/a/d/b/a/d;->K1()Lq3/a/w2/h;

    move-result-object v1

    new-instance v2, Le/a/d/y/b/e;

    invoke-direct {v2, p1, p2, v0}, Le/a/d/y/b/e;-><init>(Le/a/d/y/b/h;Le/a/d/b/a/d;Ls1/w/d;)V

    invoke-static {p1, v1, v2}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    goto :goto_0

    .line 14
    :cond_2
    instance-of p1, p2, Le/a/d/b/b/d;

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Le/a/d/y/b/l;->b:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;

    sget-object v1, Lcom/truecaller/voip/notification/inapp/ServiceType;->INCOMING:Lcom/truecaller/voip/notification/inapp/ServiceType;

    .line 16
    iput-object v1, p1, Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;->B:Lcom/truecaller/voip/notification/inapp/ServiceType;

    .line 17
    invoke-virtual {p1}, Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;->getPresenter()Le/a/d/y/b/b;

    move-result-object p1

    check-cast p2, Le/a/d/b/b/d;

    .line 18
    iget-object p2, p2, Le/a/d/b/b/d;->a:Le/a/d/b/b/f;

    .line 19
    check-cast p1, Le/a/d/y/b/h;

    .line 20
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "binderPresenter"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p2}, Le/a/d/b/b/f;->K1()Lq3/a/w2/h;

    move-result-object p2

    new-instance v1, Le/a/d/y/b/f;

    invoke-direct {v1, p1, v0}, Le/a/d/y/b/f;-><init>(Le/a/d/y/b/h;Ls1/w/d;)V

    invoke-static {p1, p2, v1}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    goto :goto_0

    .line 22
    :cond_3
    instance-of p1, p2, Le/a/d/z/a;

    if-eqz p1, :cond_5

    .line 23
    iget-object p1, p0, Le/a/d/y/b/l;->b:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;

    sget-object p2, Lcom/truecaller/voip/notification/inapp/ServiceType;->GROUP:Lcom/truecaller/voip/notification/inapp/ServiceType;

    .line 24
    iput-object p2, p1, Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;->B:Lcom/truecaller/voip/notification/inapp/ServiceType;

    .line 25
    invoke-virtual {p1}, Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;->getPresenter()Le/a/d/y/b/b;

    move-result-object p1

    check-cast p1, Le/a/d/y/b/h;

    .line 26
    iget-object p2, p1, Le/a/d/y/b/h;->d:Lq3/a/p1;

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 27
    new-instance v4, Le/a/d/y/b/d;

    invoke-direct {v4, p1, v0}, Le/a/d/y/b/d;-><init>(Le/a/d/y/b/h;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p2

    iput-object p2, p1, Le/a/d/y/b/h;->d:Lq3/a/p1;

    :cond_5
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Voip service is disconnected. Component name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/d/y/b/l;->b:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;

    invoke-static {v0}, Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;->g1(Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;)V

    .line 3
    iget-object v0, p0, Le/a/d/y/b/l;->a:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/d/y/b/l;->b:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;

    invoke-virtual {p1}, Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;->getPresenter()Le/a/d/y/b/b;

    move-result-object p1

    check-cast p1, Le/a/d/y/b/h;

    .line 5
    iget-object v1, p1, Le/a/d/y/b/h;->d:Lq3/a/p1;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {v1, v2, v0, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    :cond_1
    iget-object v1, p1, Le/a/d/y/b/h;->e:Lq3/a/p1;

    if-eqz v1, :cond_2

    invoke-static {v1, v2, v0, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 7
    :cond_2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/y/b/c;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/d/y/b/c;->F0()V

    .line 8
    :cond_3
    iput-object v2, p0, Le/a/d/y/b/l;->a:Landroid/content/ComponentName;

    .line 9
    iget-object p1, p0, Le/a/d/y/b/l;->b:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;->h1()V

    return-void
.end method
