.class public abstract Le/a/h/b/d/a/b/e;
.super Le/a/o2/d;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<View::",
        "Le/a/h/b/d/a/b/d;",
        ">",
        "Le/a/o2/d<",
        "TView;>;",
        "Le/a/h/b/d/a/b/c<",
        "TView;>;"
    }
.end annotation


# static fields
.field public static final synthetic h:[Ls1/a/l;


# instance fields
.field public final b:Le/a/h/b/d/a/b/b;

.field public final c:Le/a/h/b/d/a/b/b;

.field public final d:Le/a/h/b/p0;

.field public final e:Le/a/q2/a;

.field public final f:Le/a/h/b/f;

.field public final g:Le/a/d/c0/s1;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/h/b/d/a/b/e;

    const-string v2, "historyEvents"

    const-string v3, "getHistoryEvents()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/h/b/d/a/b/e;->h:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/h/b/d/a/b/b;Le/a/h/b/p0;Le/a/q2/a;Le/a/h/b/f;Le/a/d/c0/s1;)V
    .locals 1

    const-string v0, "callHistoryDataHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneActionsHandler"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionModeHandler"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/d;-><init>()V

    iput-object p1, p0, Le/a/h/b/d/a/b/e;->c:Le/a/h/b/d/a/b/b;

    iput-object p2, p0, Le/a/h/b/d/a/b/e;->d:Le/a/h/b/p0;

    iput-object p3, p0, Le/a/h/b/d/a/b/e;->e:Le/a/q2/a;

    iput-object p4, p0, Le/a/h/b/d/a/b/e;->f:Le/a/h/b/f;

    iput-object p5, p0, Le/a/h/b/d/a/b/e;->g:Le/a/d/c0/s1;

    .line 2
    iput-object p1, p0, Le/a/h/b/d/a/b/e;->b:Le/a/h/b/d/a/b/b;

    return-void
.end method


# virtual methods
.method public final A(I)Lcom/truecaller/data/entity/HistoryEvent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/b/e;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/b/d/b/i;

    .line 2
    iget-object p1, p1, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    return-object p1
.end method

.method public final B()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/h/b/d/b/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/h/b/d/a/b/e;->b:Le/a/h/b/d/a/b/b;

    sget-object v1, Le/a/h/b/d/a/b/e;->h:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/h/b/d/a/b/b;->Bh(Le/a/h/b/d/a/b/c;Ls1/a/l;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final C(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/calling/ActionType;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "historyEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v0, "callHistory"

    const/4 v1, 0x1

    if-eqz p2, :cond_6

    const-string v2, "it"

    const/4 v3, 0x0

    const-string v4, "historyEvent.normalizedNumber ?: return"

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    .line 2
    :pswitch_0
    sget-object p2, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->Companion:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;

    invoke-virtual {p2, p1}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;->a(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 4
    iget-object p2, p0, Le/a/h/b/d/a/b/e;->d:Le/a/h/b/p0;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v2, v3}, Le/a/h/b/p0;->Pq(J)V

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_7

    const-string p2, "contact"

    .line 6
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p1

    const-string p2, "contact.numbers"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/Number;

    if-eqz p1, :cond_7

    .line 7
    iget-object p2, p0, Le/a/h/b/d/a/b/e;->g:Le/a/d/c0/s1;

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    const-string p3, "number.normalizedNumber"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "callLog"

    .line 9
    invoke-interface {p2, p1, p3}, Le/a/d/c0/s1;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 10
    :pswitch_1
    iget-object p2, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 11
    invoke-static {p2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p3, p0, Le/a/h/b/d/a/b/e;->d:Le/a/h/b/p0;

    .line 13
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    const-string v2, "video"

    .line 14
    invoke-interface {p3, p1, p2, v2, v0}, Le/a/h/b/p0;->av(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 15
    :pswitch_2
    iget-object p2, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 16
    invoke-static {p2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p3, p0, Le/a/h/b/d/a/b/e;->d:Le/a/h/b/p0;

    .line 18
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    const-string v2, "call"

    .line 19
    invoke-interface {p3, p1, p2, v2, v0}, Le/a/h/b/p0;->av(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :pswitch_3
    invoke-virtual {p0, p1, v1, p3}, Le/a/h/b/d/a/b/e;->I(Lcom/truecaller/data/entity/HistoryEvent;ZLjava/lang/String;)V

    goto :goto_2

    .line 21
    :pswitch_4
    invoke-virtual {p0, p1, v3, p3}, Le/a/h/b/d/a/b/e;->I(Lcom/truecaller/data/entity/HistoryEvent;ZLjava/lang/String;)V

    goto :goto_2

    .line 22
    :pswitch_5
    sget-object p2, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->Companion:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;

    invoke-virtual {p2, p1}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;->a(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 23
    iget p2, p1, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    if-ne p2, v1, :cond_1

    .line 24
    sget-object p2, Lcom/truecaller/voip/VoipGroupCallHistoryStatus;->BLOCKED:Lcom/truecaller/voip/VoipGroupCallHistoryStatus;

    :goto_0
    move-object v6, p2

    goto :goto_1

    .line 25
    :cond_1
    iget p2, p1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-eq p2, v1, :cond_4

    const/4 p3, 0x2

    if-eq p2, p3, :cond_3

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    .line 26
    sget-object p2, Lcom/truecaller/voip/VoipGroupCallHistoryStatus;->UNKNOWN:Lcom/truecaller/voip/VoipGroupCallHistoryStatus;

    goto :goto_0

    .line 27
    :cond_2
    sget-object p2, Lcom/truecaller/voip/VoipGroupCallHistoryStatus;->MISSED:Lcom/truecaller/voip/VoipGroupCallHistoryStatus;

    goto :goto_0

    .line 28
    :cond_3
    sget-object p2, Lcom/truecaller/voip/VoipGroupCallHistoryStatus;->OUTGOING:Lcom/truecaller/voip/VoipGroupCallHistoryStatus;

    goto :goto_0

    .line 29
    :cond_4
    sget-object p2, Lcom/truecaller/voip/VoipGroupCallHistoryStatus;->RECEIVED:Lcom/truecaller/voip/VoipGroupCallHistoryStatus;

    goto :goto_0

    .line 30
    :goto_1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 31
    iget-object p3, p0, Le/a/h/b/d/a/b/e;->d:Le/a/h/b/p0;

    .line 32
    new-instance v0, Lcom/truecaller/voip/VoipCallHistory;

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 33
    iget-wide v7, p1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    move-object v3, v0

    .line 34
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/voip/VoipCallHistory;-><init>(JLcom/truecaller/voip/VoipGroupCallHistoryStatus;J)V

    .line 35
    invoke-interface {p3, v0}, Le/a/h/b/p0;->Fy(Lcom/truecaller/voip/VoipCallHistory;)V

    goto :goto_2

    .line 36
    :cond_5
    iget-object p2, p0, Le/a/h/b/d/a/b/e;->d:Le/a/h/b/p0;

    .line 37
    sget-object p3, Lcom/truecaller/details_view/analytics/SourceType;->CallLog:Lcom/truecaller/details_view/analytics/SourceType;

    .line 38
    invoke-interface {p2, p1, p3, v3, v3}, Le/a/h/b/o;->Bp(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/details_view/analytics/SourceType;ZZ)V

    goto :goto_2

    .line 39
    :cond_6
    iget-object p2, p0, Le/a/h/b/d/a/b/e;->d:Le/a/h/b/p0;

    .line 40
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    const-string p3, "historyEvent.rawNumber"

    .line 41
    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, v0}, Le/a/h/b/p0;->Q4(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final E(ILcom/truecaller/calling/ActionType;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/b/e;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/b/d/b/i;

    .line 2
    iget-object p1, p1, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 3
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$CallSubAction;->SWIPE:Lcom/truecaller/analytics/common/event/ViewActionEvent$CallSubAction;

    invoke-virtual {v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$CallSubAction;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Le/a/h/b/d/a/b/e;->C(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/calling/ActionType;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public abstract F(I)Z
.end method

.method public abstract H(Lcom/truecaller/calling/ActionType;I)Z
.end method

.method public final I(Lcom/truecaller/data/entity/HistoryEvent;ZLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/h/b/d/a/b/e;->d:Le/a/h/b/p0;

    .line 3
    iget-object v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->e:Ljava/lang/String;

    :goto_0
    const-string p1, "callHistory"

    .line 6
    invoke-interface {v1, v0, v2, p2, p1}, Le/a/h/b/p0;->Md(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string p1, "callLog"

    const-string p2, "context"

    .line 7
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "call"

    const-string v0, "action"

    .line 8
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v0, p2, p3, p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Le/a/h/b/d/a/b/e;->e:Le/a/q2/a;

    invoke-static {v0, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    :cond_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/b/e;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/b/e;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/b/d/b/i;

    .line 2
    iget-object p1, p1, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Le/a/o2/h;->b:I

    .line 2
    iget-object v1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    .line 3
    instance-of v2, v1, Lcom/truecaller/calling/ActionType;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Lcom/truecaller/calling/ActionType;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/truecaller/calling/ActionType;->CELLULAR_CALL:Lcom/truecaller/calling/ActionType;

    .line 4
    :goto_0
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "ItemEvent.INVALIDATE_ITEM"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Le/a/h/b/d/a/b/e;->c:Le/a/h/b/d/a/b/b;

    invoke-interface {p1}, Le/a/h/b/d/a/b/b;->sh()Le/a/h/y;

    move-result-object p1

    invoke-interface {p1, v0}, Le/a/h/y;->a(I)V

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "ItemEvent.SWIPE_START"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Le/a/h/b/d/a/b/e;->F(I)Z

    move-result v3

    goto :goto_2

    :sswitch_2
    const-string v2, "ItemEvent.SWIPE_COMPLETED_FROM_START"

    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0, v1}, Le/a/h/b/d/a/b/e;->E(ILcom/truecaller/calling/ActionType;)Z

    goto :goto_1

    :sswitch_3
    const-string v1, "ItemEvent.LONG_CLICKED"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    iget-boolean p1, p0, Le/a/o2/c;->a:Z

    if-eqz p1, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    iget-object p1, p0, Le/a/h/b/d/a/b/e;->f:Le/a/h/b/f;

    invoke-interface {p1, v4}, Le/a/h/b/f;->h8(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p0}, Le/a/h/b/d/a/b/e;->B()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/b/d/b/i;

    .line 14
    iget-object p1, p1, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 15
    iget-object v1, p0, Le/a/h/b/d/a/b/e;->c:Le/a/h/b/d/a/b/b;

    invoke-interface {v1, p1, v0}, Le/a/h/b/d/a/b/b;->qj(Lcom/truecaller/data/entity/HistoryEvent;I)V

    goto :goto_1

    :sswitch_4
    const-string v2, "ItemEvent.CLICKED"

    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    iget-boolean p1, p0, Le/a/o2/c;->a:Z

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p0}, Le/a/h/b/d/a/b/e;->B()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/b/d/b/i;

    .line 19
    iget-object p1, p1, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 20
    iget-object v1, p0, Le/a/h/b/d/a/b/e;->c:Le/a/h/b/d/a/b/b;

    invoke-interface {v1, p1, v0}, Le/a/h/b/d/a/b/b;->qj(Lcom/truecaller/data/entity/HistoryEvent;I)V

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p0, v1, v0}, Le/a/h/b/d/a/b/e;->H(Lcom/truecaller/calling/ActionType;I)Z

    move-result p1

    move v3, p1

    goto :goto_2

    :sswitch_5
    const-string v1, "ItemEvent.SWIPE_COMPLETED_FROM_END"

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/truecaller/calling/ActionType;->SMS:Lcom/truecaller/calling/ActionType;

    invoke-virtual {p0, v0, p1}, Le/a/h/b/d/a/b/e;->E(ILcom/truecaller/calling/ActionType;)Z

    :goto_1
    move v3, v4

    :cond_4
    :goto_2
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x6d80839a -> :sswitch_5
        -0x67eccfc0 -> :sswitch_4
        -0x4e5b1355 -> :sswitch_3
        -0xea602d3 -> :sswitch_2
        0x2568a96 -> :sswitch_1
        0x4400e6d0 -> :sswitch_0
    .end sparse-switch
.end method
