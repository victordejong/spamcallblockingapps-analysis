.class public final Le/a/d0/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d0/b/j;


# instance fields
.field public final a:Le/a/d0/b/d;

.field public final b:Le/a/d0/b/b;

.field public final c:Le/a/p5/a0;

.field public final d:Le/a/p5/c;

.field public final e:Le/a/h/o0/g;

.field public final f:Le/a/b0/q/z;

.field public final g:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

.field public final h:Le/a/p5/g;

.field public final i:Landroid/telephony/TelephonyManager;

.field public final j:Le/a/q2/a;

.field public final k:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/d0/b/d;Le/a/d0/b/b;Le/a/p5/a0;Le/a/p5/c;Le/a/h/o0/g;Le/a/b0/q/z;Lcom/truecaller/callerid/CallerIdPerformanceTracker;Le/a/p5/g;Landroid/telephony/TelephonyManager;Le/a/q2/a;Ls1/w/f;)V
    .locals 1
    .param p11    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callProcessor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBlocker"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAlertUtils"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "perfTracker"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telephonyManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/b/k;->a:Le/a/d0/b/d;

    iput-object p2, p0, Le/a/d0/b/k;->b:Le/a/d0/b/b;

    iput-object p3, p0, Le/a/d0/b/k;->c:Le/a/p5/a0;

    iput-object p4, p0, Le/a/d0/b/k;->d:Le/a/p5/c;

    iput-object p5, p0, Le/a/d0/b/k;->e:Le/a/h/o0/g;

    iput-object p6, p0, Le/a/d0/b/k;->f:Le/a/b0/q/z;

    iput-object p7, p0, Le/a/d0/b/k;->g:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    iput-object p8, p0, Le/a/d0/b/k;->h:Le/a/p5/g;

    iput-object p9, p0, Le/a/d0/b/k;->i:Landroid/telephony/TelephonyManager;

    iput-object p10, p0, Le/a/d0/b/k;->j:Le/a/q2/a;

    iput-object p11, p0, Le/a/d0/b/k;->k:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/d0/b/k;->c:Le/a/p5/a0;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "android.permission.READ_CONTACTS"

    const-string v4, "android.permission.WRITE_CONTACTS"

    .line 2
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {v1, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Le/a/d0/b/k;->d:Le/a/p5/c;

    .line 5
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    .line 6
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "incoming_number"

    .line 7
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-static {v0, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    new-instance p2, Le/a/d0/b/i$a;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v0

    invoke-direct {p2, v4, v0, v1}, Le/a/d0/b/i$a;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-static {v0, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Le/a/d0/b/i$d;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1c

    move-object v3, p2

    invoke-direct/range {v3 .. v10}, Le/a/d0/b/i$d;-><init>(Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Integer;Lcom/truecaller/blocking/FilterMatch;I)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-static {v0, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Le/a/d0/b/i$b;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Le/a/d0/b/i$b;-><init>(Ljava/lang/String;JLjava/lang/Integer;I)V

    goto :goto_0

    .line 11
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    move-object p2, v2

    :goto_0
    if-eqz p2, :cond_c

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone state changed from broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    iget-object v0, p0, Le/a/d0/b/k;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 14
    instance-of v1, p2, Le/a/d0/b/i$a;

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 15
    iget-object p1, p0, Le/a/d0/b/k;->j:Le/a/q2/a;

    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p2

    const-string v0, "PhoneStateDoesntMatch"

    invoke-virtual {p2, v0}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {p2}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p2

    const-string v0, "GenericAnalyticsEvent.ne\u2026DoesntMatch.NAME).build()"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void

    .line 16
    :cond_4
    instance-of v0, p2, Le/a/d0/b/i$d;

    const/4 v1, 0x0

    const/16 v3, 0x18

    if-eqz v0, :cond_7

    .line 17
    iget-object v4, p0, Le/a/d0/b/k;->h:Le/a/p5/g;

    invoke-interface {v4}, Le/a/p5/g;->q()I

    move-result v4

    if-ge v4, v3, :cond_5

    move v4, v1

    goto :goto_1

    .line 18
    :cond_5
    iget-object v4, p0, Le/a/d0/b/k;->h:Le/a/p5/g;

    invoke-interface {v4}, Le/a/p5/g;->q()I

    move-result v4

    const/16 v5, 0x1d

    if-gt v4, v5, :cond_6

    iget-object v4, p0, Le/a/d0/b/k;->h:Le/a/p5/g;

    invoke-interface {v4}, Le/a/p5/g;->f()Z

    move-result v4

    goto :goto_1

    .line 19
    :cond_6
    sget-boolean v4, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->h:Z

    :goto_1
    if-eqz v4, :cond_7

    return-void

    :cond_7
    if-eqz v0, :cond_a

    .line 20
    iget-object v0, p2, Le/a/d0/b/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 21
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    if-eqz v1, :cond_a

    .line 22
    iget-object v0, p0, Le/a/d0/b/k;->h:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    if-lt v0, v3, :cond_a

    .line 23
    iget-object v0, p0, Le/a/d0/b/k;->h:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 24
    :cond_a
    iget-object v0, p0, Le/a/d0/b/k;->g:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    sget-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->PHONESTATEHANDLER_NORMALIZATION:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    new-instance v3, Le/a/d0/b/k$b;

    invoke-direct {v3, p0, p2}, Le/a/d0/b/k$b;-><init>(Le/a/d0/b/k;Le/a/d0/b/i;)V

    invoke-interface {v0, v1, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->c(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 25
    iget-object v1, p0, Le/a/d0/b/k;->e:Le/a/h/o0/g;

    invoke-interface {v1, v0}, Le/a/h/o0/g;->a(Ljava/lang/String;)V

    .line 26
    :cond_b
    sget-object v3, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v4, p0, Le/a/d0/b/k;->k:Ls1/w/f;

    const/4 v5, 0x0

    new-instance v6, Le/a/d0/b/k$c;

    invoke-direct {v6, p0, p1, p2, v2}, Le/a/d0/b/k$c;-><init>(Le/a/d0/b/k;Landroid/content/Context;Le/a/d0/b/i;Ls1/w/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_c
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d0/b/k;->c:Le/a/p5/a0;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.READ_CONTACTS"

    const-string v3, "android.permission.WRITE_CONTACTS"

    const-string v4, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 2
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/b0/g/a;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/d0/b/k;->k:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/d0/b/k$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, p1, v0}, Le/a/d0/b/k$a;-><init>(Le/a/d0/b/k;Landroid/content/Intent;Landroid/content/Context;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
