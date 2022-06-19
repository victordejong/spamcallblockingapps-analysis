.class public Le/a/q4/x;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/v0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Lcom/truecaller/referral/BulkSmsView;",
        ">;",
        "Le/a/v0<",
        "Le/a/q4/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/q4/y;

.field public final e:Le/a/w/b/b;

.field public final f:Le/a/o5/f0;

.field public final g:Lcom/truecaller/data/entity/messaging/Participant;

.field public final h:Le/a/p5/c0;

.field public final i:Le/a/p5/a0;

.field public final j:Le/a/s4/a;

.field public final k:Le/a/q4/j0;

.field public l:Lcom/truecaller/referral/BulkSmsView$PromoLayout;

.field public m:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public final n:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q4/h0;",
            ">;"
        }
    .end annotation
.end field

.field public o:Le/a/r2/j;

.field public p:Le/a/r2/a;

.field public q:Ljava/lang/String;

.field public r:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/q4/y;Le/a/w/b/b;Le/a/o5/f0;Lcom/truecaller/data/entity/Contact;Le/a/p5/c0;Le/a/r2/f;Le/a/r2/j;Le/a/p5/a0;Le/a/s4/a;Le/a/q4/j0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/a/q4/y;",
            "Le/a/w/b/b;",
            "Le/a/o5/f0;",
            "Lcom/truecaller/data/entity/Contact;",
            "Le/a/p5/c0;",
            "Le/a/r2/f<",
            "Le/a/q4/h0;",
            ">;",
            "Le/a/r2/j;",
            "Le/a/p5/a0;",
            "Le/a/s4/a;",
            "Le/a/q4/j0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Le/a/q4/x;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Le/a/q4/x;->d:Le/a/q4/y;

    .line 5
    iput-object p3, p0, Le/a/q4/x;->e:Le/a/w/b/b;

    .line 6
    iput-object p4, p0, Le/a/q4/x;->f:Le/a/o5/f0;

    const/4 p1, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    .line 7
    invoke-static {p5, p2}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object p2

    .line 8
    invoke-static {p5, p1, p1, p2}, Lcom/truecaller/data/entity/messaging/Participant;->b(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Le/a/b0/q/z;Landroid/net/Uri;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p1

    .line 9
    :cond_0
    iput-object p1, p0, Le/a/q4/x;->g:Lcom/truecaller/data/entity/messaging/Participant;

    .line 10
    iput-object p6, p0, Le/a/q4/x;->h:Le/a/p5/c0;

    .line 11
    iput-object p7, p0, Le/a/q4/x;->n:Le/a/r2/f;

    .line 12
    iput-object p8, p0, Le/a/q4/x;->o:Le/a/r2/j;

    .line 13
    iput-object p9, p0, Le/a/q4/x;->i:Le/a/p5/a0;

    .line 14
    iput-object p10, p0, Le/a/q4/x;->j:Le/a/s4/a;

    .line 15
    iput-object p11, p0, Le/a/q4/x;->k:Le/a/q4/j0;

    return-void
.end method


# virtual methods
.method public bridge synthetic G(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Le/a/q4/s;

    invoke-virtual {p0, p1, p2}, Le/a/q4/x;->Lj(Le/a/q4/s;I)V

    return-void
.end method

.method public final Hj(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Le/a/q4/x;->g:Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 6
    check-cast p1, Lcom/truecaller/referral/BulkSmsView;

    invoke-interface {p1}, Lcom/truecaller/referral/BulkSmsView;->ih()V

    .line 7
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/referral/BulkSmsView;

    invoke-virtual {p0, p1}, Le/a/q4/x;->Pj(Lcom/truecaller/referral/BulkSmsView;)V

    :cond_1
    return-void
.end method

.method public final Ij(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/q4/x;->Jj()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SingleSMS"

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/q4/x;->e:Le/a/w/b/b;

    const-string v0, "featureReferralShareApps"

    invoke-interface {p1, v0}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    iget-object v0, p0, Le/a/q4/x;->k:Le/a/q4/j0;

    invoke-interface {v0, p1}, Le/a/q4/j0;->a(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/q4/x;->i:Le/a/p5/a0;

    const-string v0, "android.permission.SEND_SMS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/referral/BulkSmsView;

    const/16 v0, 0x66

    invoke-interface {p1, v0}, Lcom/truecaller/referral/BulkSmsView;->q0(I)V

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    iget-object v0, p0, Le/a/q4/x;->g:Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    iget-object v0, p0, Le/a/q4/x;->d:Le/a/q4/y;

    iget-object v8, p0, Le/a/q4/x;->b:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    .line 13
    iget-object v3, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v2, "qaReferralFakeSendSms"

    .line 14
    invoke-static {v2}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 15
    iget-object v2, v0, Le/a/q4/y;->a:Landroid/telephony/SmsManager;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 17
    iget-object v0, p0, Le/a/q4/x;->h:Le/a/p5/c0;

    const v2, 0x7f100046

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, p1, v3}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/referral/BulkSmsView;

    iget-object v3, p0, Le/a/q4/x;->h:Le/a/p5/c0;

    const v4, 0x7f120e96

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x1

    aput-object v0, v5, p1

    invoke-interface {v3, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/truecaller/referral/BulkSmsView;->Nf(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Le/a/q4/x;->Jj()Z

    move-result p1

    if-nez p1, :cond_6

    .line 20
    iget-object p1, p0, Le/a/q4/x;->e:Le/a/w/b/b;

    const-string v0, "smsReferralPrefetchBatch"

    invoke-interface {p1, v0}, Le/a/b0/g/b;->remove(Ljava/lang/String;)V

    .line 21
    :cond_6
    iget-object p1, p0, Le/a/q4/x;->e:Le/a/w/b/b;

    const-string v0, "smsReferralSentTo"

    invoke-interface {p1, v0}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ","

    if-nez v3, :cond_7

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_7
    iget-object v1, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/entity/messaging/Participant;

    .line 26
    iget-object v3, v3, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 27
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 29
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-interface {p1, v0, v1}, Le/a/b0/g/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/referral/BulkSmsView;

    invoke-interface {p1}, Lcom/truecaller/referral/BulkSmsView;->finish()V

    return-void
.end method

.method public final Jj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q4/x;->g:Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/q4/x;->j:Le/a/s4/a;

    const-string v1, "inviteMore_17575"

    invoke-interface {v0, v1}, Le/a/s4/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bulkInvite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Kb()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/q4/x;->Jj()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public Kj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/q4/x;->i:Le/a/p5/a0;

    const-string v1, "android.permission.SEND_SMS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/referral/BulkSmsView;

    const/16 v1, 0x67

    invoke-interface {v0, v1}, Lcom/truecaller/referral/BulkSmsView;->q0(I)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/referral/BulkSmsView;

    iget-object v1, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/truecaller/referral/BulkSmsView;->Ek(Ljava/util/ArrayList;)V

    return-void
.end method

.method public Lj(Le/a/q4/s;I)V
    .locals 6

    .line 1
    invoke-virtual {p0, p2}, Le/a/q4/x;->Za(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/data/entity/messaging/Participant;

    .line 3
    invoke-static {p2}, Le/a/c/p/a;->v0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p2}, Le/a/c/p/a;->J0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Le/a/q4/x;->f:Le/a/o5/f0;

    iget-wide v4, p2, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    iget-object p2, p2, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    invoke-interface {v3, v4, v5, p2, v1}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/q4/s;->u(Landroid/net/Uri;)V

    .line 6
    invoke-interface {p1, v0}, Le/a/q4/s;->setName(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1, v2}, Le/a/q4/s;->setPhoneNumber(Ljava/lang/String;)V

    .line 8
    invoke-static {v0, v2}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-interface {p1, p2}, Le/a/q4/s;->z4(Z)V

    :goto_0
    return-void
.end method

.method public final Mj()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/a/q4/x;->Oj()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/referral/BulkSmsView;

    invoke-interface {v0}, Le/a/q4/t0;->Lu()I

    move-result v0

    .line 3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/referral/BulkSmsView;

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iget-object v3, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Le/a/q4/t0;->Uo(Z)V

    :cond_1
    return-void
.end method

.method public final Nj(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/q4/x;->Oj()Z

    move-result v0

    .line 3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/referral/BulkSmsView;

    invoke-interface {v1, p1, v0}, Lcom/truecaller/referral/BulkSmsView;->P6(ZI)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/referral/BulkSmsView;

    invoke-interface {p1, v1}, Le/a/q4/t0;->tw(Z)V

    :cond_0
    return-void
.end method

.method public final Oj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/x;->g:Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Pj(Lcom/truecaller/referral/BulkSmsView;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/q4/x;->g:Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-interface {p1, v0}, Lcom/truecaller/referral/BulkSmsView;->xt(Z)V

    .line 2
    invoke-virtual {p0, v1}, Le/a/q4/x;->Nj(Z)V

    .line 3
    invoke-virtual {p0}, Le/a/q4/x;->Mj()V

    .line 4
    iget-object v0, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Le/a/q4/x;->g:Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Le/a/q4/x;->j:Le/a/s4/a;

    const-string v3, "inviteMore_17575"

    invoke-interface {v0, v3}, Le/a/s4/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "bulkInvite"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Le/a/q4/x;->h:Le/a/p5/c0;

    const v3, 0x7f120e9d

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/truecaller/referral/BulkSmsView;->Ja(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0, v2}, Lcom/truecaller/referral/BulkSmsView;->Ja(Ljava/lang/String;Z)V

    goto :goto_3

    .line 9
    :cond_3
    iget-object v0, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10
    iget-object v3, p0, Le/a/q4/x;->h:Le/a/p5/c0;

    const v4, 0x7f10005d

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v0, v5}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 11
    iget-object v4, p0, Le/a/q4/x;->g:Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v4, :cond_4

    .line 12
    iget-object v4, p0, Le/a/q4/x;->h:Le/a/p5/c0;

    const v7, 0x7f120e9c

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    aput-object v3, v6, v1

    .line 13
    iget-object v0, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-interface {v4, v7, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 15
    :cond_4
    iget-object v4, p0, Le/a/q4/x;->h:Le/a/p5/c0;

    const v7, 0x7f120e9b

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    aput-object v3, v6, v1

    .line 16
    iget-object v0, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-interface {v4, v7, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 18
    :goto_2
    invoke-interface {p1, v0, v1}, Lcom/truecaller/referral/BulkSmsView;->Ja(Ljava/lang/String;Z)V

    .line 19
    :goto_3
    invoke-interface {p1, v2}, Lcom/truecaller/referral/BulkSmsView;->f(Z)V

    return-void
.end method

.method public Za(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q4/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Le/a/q4/x;->Oj()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0}, Le/a/q4/x;->Oj()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    :cond_3
    move p1, v1

    :goto_1
    return p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/a/q4/x;->p:Le/a/r2/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/r2/a;->b()V

    :cond_0
    return-void
.end method

.method public gc(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
