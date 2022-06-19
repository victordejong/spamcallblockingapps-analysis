.class public final Le/a/g/j/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/j/h0;


# instance fields
.field public final a:Lcom/truecaller/settings/CallingSettings;

.field public final b:Le/a/o5/f0;

.field public final c:Le/a/o5/x1;

.field public final d:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final e:Le/a/u3/g;


# direct methods
.method public constructor <init>(Lcom/truecaller/settings/CallingSettings;Le/a/o5/f0;Le/a/o5/x1;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callingSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usageChecker"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/j/i0;->a:Lcom/truecaller/settings/CallingSettings;

    iput-object p2, p0, Le/a/g/j/i0;->b:Le/a/o5/f0;

    iput-object p3, p0, Le/a/g/j/i0;->c:Le/a/o5/x1;

    iput-object p4, p0, Le/a/g/j/i0;->d:Lcom/truecaller/callrecording/CallRecordingManager;

    iput-object p5, p0, Le/a/g/j/i0;->e:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/HistoryEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->s0()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/g/j/i0;->b:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/g/j/i0;->c:Le/a/o5/x1;

    invoke-interface {v0}, Le/a/o5/x1;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/g/j/i0;->d:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public b(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/blocking/FilterMatch;Z)Z
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterMatch"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, p0, Le/a/g/j/i0;->a:Lcom/truecaller/settings/CallingSettings;

    const-string v3, "afterCall"

    invoke-interface {v0, v3}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3
    iget-object v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Le/a/b0/q/c0;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5
    iget-object v0, p0, Le/a/g/j/i0;->a:Lcom/truecaller/settings/CallingSettings;

    const-string v3, "afterCallForPbContacts"

    invoke-interface {v0, v3}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 6
    iget-object v3, p0, Le/a/g/j/i0;->e:Le/a/u3/g;

    .line 7
    iget-object v4, v3, Le/a/u3/g;->U2:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0xca

    aget-object v5, v5, v6

    invoke-virtual {v4, v3, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v3

    .line 8
    invoke-interface {v3}, Le/a/u3/b;->isEnabled()Z

    move-result v3

    .line 9
    iget-object v4, p0, Le/a/g/j/i0;->e:Le/a/u3/g;

    invoke-virtual {v4}, Le/a/u3/g;->T()Le/a/u3/b;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/b;->isEnabled()Z

    move-result v4

    .line 10
    iget-object v5, p0, Le/a/g/j/i0;->e:Le/a/u3/g;

    invoke-virtual {v5}, Le/a/u3/g;->U()Le/a/u3/b;

    move-result-object v5

    invoke-interface {v5}, Le/a/u3/b;->isEnabled()Z

    move-result v5

    .line 11
    iget v6, p1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    if-eqz p3, :cond_1

    goto :goto_2

    .line 12
    :cond_1
    iget-object p3, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz p3, :cond_2

    .line 13
    invoke-virtual {p3}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result p3

    goto :goto_0

    :cond_2
    move p3, v2

    :goto_0
    if-nez p3, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    iget p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-ne p1, v1, :cond_4

    if-eqz v3, :cond_4

    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_5

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    if-ne p1, v7, :cond_6

    if-eqz v3, :cond_6

    if-eqz v0, :cond_7

    if-eqz v5, :cond_7

    :goto_1
    move v4, v1

    goto :goto_3

    :cond_6
    if-ne p1, v7, :cond_7

    if-nez v3, :cond_7

    move v4, v5

    goto :goto_3

    :cond_7
    :goto_2
    move v4, v2

    :goto_3
    if-eqz v4, :cond_8

    .line 15
    iget-object p1, p0, Le/a/g/j/i0;->b:Le/a/o5/f0;

    invoke-interface {p1}, Le/a/o5/f0;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Le/a/g/j/i0;->c:Le/a/o5/x1;

    invoke-interface {p1}, Le/a/o5/x1;->b()Z

    move-result p1

    if-nez p1, :cond_8

    .line 16
    iget-object p1, p2, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 17
    sget-object p2, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    if-eq p1, p2, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    return v1
.end method
