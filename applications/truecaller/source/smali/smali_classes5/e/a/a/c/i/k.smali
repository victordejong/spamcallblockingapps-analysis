.class public final Le/a/a/c/i/k;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/i/j;
.implements Le/a/a/c/i/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/a/c/i/l;",
        ">;",
        "Le/a/a/c/i/j;",
        "Le/a/a/c/i/d$a;"
    }
.end annotation


# instance fields
.field public final b:Lcom/truecaller/data/entity/messaging/Participant;

.field public final c:J

.field public final d:J

.field public final e:Z

.field public final f:Z

.field public final g:Lcom/truecaller/flashsdk/models/FlashContact;

.field public final h:Le/a/a/c/i/d;

.field public final i:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/a/r2/l;

.field public final k:Le/a/d/c0/s1;

.field public final l:Le/a/a/c/l5;

.field public final m:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/messaging/Participant;JJZZLcom/truecaller/flashsdk/models/FlashContact;Le/a/a/c/i/d;Le/a/r2/f;Le/a/r2/l;Le/a/d/c0/s1;Le/a/a/c/l5;Le/a/p5/c0;)V
    .locals 1
    .param p1    # Lcom/truecaller/data/entity/messaging/Participant;
        .annotation runtime Ljavax/inject/Named;
            value = "Participant"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Ljavax/inject/Named;
            value = "MessageStartDate"
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Ljavax/inject/Named;
            value = "MessageEndDate"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "VoipCapable"
        .end annotation
    .end param
    .param p7    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "IsFlash"
        .end annotation
    .end param
    .param p8    # Lcom/truecaller/flashsdk/models/FlashContact;
        .annotation runtime Ljavax/inject/Named;
            value = "FlashContact"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "JJZZ",
            "Lcom/truecaller/flashsdk/models/FlashContact;",
            "Le/a/a/c/i/d;",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;",
            "Le/a/r2/l;",
            "Le/a/d/c0/s1;",
            "Le/a/a/c/l5;",
            "Le/a/p5/c0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSource"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHistoryManager"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actorsThreads"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipUtil"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationResourceProvider"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/a/c/i/k;->b:Lcom/truecaller/data/entity/messaging/Participant;

    iput-wide p2, p0, Le/a/a/c/i/k;->c:J

    iput-wide p4, p0, Le/a/a/c/i/k;->d:J

    iput-boolean p6, p0, Le/a/a/c/i/k;->e:Z

    iput-boolean p7, p0, Le/a/a/c/i/k;->f:Z

    iput-object p8, p0, Le/a/a/c/i/k;->g:Lcom/truecaller/flashsdk/models/FlashContact;

    iput-object p9, p0, Le/a/a/c/i/k;->h:Le/a/a/c/i/d;

    iput-object p10, p0, Le/a/a/c/i/k;->i:Le/a/r2/f;

    iput-object p11, p0, Le/a/a/c/i/k;->j:Le/a/r2/l;

    iput-object p12, p0, Le/a/a/c/i/k;->k:Le/a/d/c0/s1;

    iput-object p13, p0, Le/a/a/c/i/k;->l:Le/a/a/c/l5;

    iput-object p14, p0, Le/a/a/c/i/k;->m:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public final Hj()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/a/c/i/k;->b:Lcom/truecaller/data/entity/messaging/Participant;

    iget v1, v0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 2
    iget-object v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v1, "participant.normalizedAddress"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v2, v0

    .line 3
    iget-object v0, p0, Le/a/a/c/i/k;->i:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/l0/c;

    .line 4
    iget-wide v3, p0, Le/a/a/c/i/k;->c:J

    .line 5
    iget-wide v5, p0, Le/a/a/c/i/k;->d:J

    .line 6
    iget-boolean v0, p0, Le/a/a/c/i/k;->f:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;->ONLY_FLASH_EVENTS:Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;->ONLY_CALL_EVENTS:Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;

    :goto_1
    move-object v7, v0

    .line 7
    invoke-interface/range {v1 .. v7}, Le/a/l0/c;->k(Ljava/lang/String;JJLcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)Le/a/r2/x;

    move-result-object v0

    .line 8
    iget-object v1, p0, Le/a/a/c/i/k;->j:Le/a/r2/l;

    invoke-interface {v1}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v1

    new-instance v2, Le/a/a/c/i/k$a;

    invoke-direct {v2, p0}, Le/a/a/c/i/k$a;-><init>(Le/a/a/c/i/k;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    return-void
.end method

.method public O6()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/i/k;->g:Lcom/truecaller/flashsdk/models/FlashContact;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/i/l;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/a/c/i/l;->K1(Lcom/truecaller/flashsdk/models/FlashContact;)V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Le/a/a/c/i/l;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/a/c/i/k;->b:Lcom/truecaller/data/entity/messaging/Participant;

    iget v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-interface {p1, v0}, Le/a/a/c/i/l;->Xb(Z)V

    .line 5
    iget-boolean v0, p0, Le/a/a/c/i/k;->e:Z

    invoke-interface {p1, v0}, Le/a/a/c/i/l;->ug(Z)V

    .line 6
    iget-object v0, p0, Le/a/a/c/i/k;->g:Lcom/truecaller/flashsdk/models/FlashContact;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-interface {p1, v2}, Le/a/a/c/i/l;->zv(Z)V

    .line 7
    invoke-virtual {p0}, Le/a/a/c/i/k;->Hj()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/a/a/c/i/k;->h:Le/a/a/c/i/d;

    invoke-interface {v0}, Le/a/a/c/i/d;->n0()V

    return-void
.end method

.method public i6()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/i/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/a/c/i/k;->b:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v1, v1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v2, "participant.normalizedAddress"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/a/c/i/l;->Co(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDataChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/a/c/i/k;->Hj()V

    return-void
.end method

.method public zh()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/i/k;->k:Le/a/d/c0/s1;

    iget-object v1, p0, Le/a/a/c/i/k;->b:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v1, v1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v2, "participant.normalizedAddress"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "conversation"

    invoke-interface {v0, v1, v2}, Le/a/d/c0/s1;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
