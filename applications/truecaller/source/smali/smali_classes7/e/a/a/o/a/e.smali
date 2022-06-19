.class public final Le/a/a/o/a/e;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/a/o/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/o/a/c;",
        ">;",
        "Le/a/a/o/a/d;"
    }
.end annotation


# static fields
.field public static final synthetic i:[Ls1/a/l;


# instance fields
.field public final b:Le/a/a/o/a/f;

.field public final c:Le/a/a/o/a/f;

.field public final d:Le/a/a/o/a/b;

.field public final e:Le/a/b0/q/h0;

.field public final f:Le/a/p5/c0;

.field public final g:Le/a/o5/b0;

.field public final h:Le/a/x2/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/a/o/a/e;

    const-string v2, "historyEventCursor"

    const-string v3, "getHistoryEventCursor()Lcom/truecaller/callhistory/data/cursor/HistoryEventCursor;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/a/o/a/e;->i:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/a/o/a/f;Le/a/a/o/a/b;Le/a/b0/q/h0;Le/a/p5/c0;Le/a/o5/b0;Le/a/x2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "listModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemCallback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialNumberResolver"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactAvatarXConfigProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/o/a/e;->c:Le/a/a/o/a/f;

    iput-object p2, p0, Le/a/a/o/a/e;->d:Le/a/a/o/a/b;

    iput-object p3, p0, Le/a/a/o/a/e;->e:Le/a/b0/q/h0;

    iput-object p4, p0, Le/a/a/o/a/e;->f:Le/a/p5/c0;

    iput-object p5, p0, Le/a/a/o/a/e;->g:Le/a/o5/b0;

    iput-object p6, p0, Le/a/a/o/a/e;->h:Le/a/x2/a;

    .line 2
    iput-object p1, p0, Le/a/a/o/a/e;->b:Le/a/a/o/a/f;

    return-void
.end method


# virtual methods
.method public final A(I)Lcom/truecaller/data/entity/HistoryEvent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/o/a/e;->B()Le/a/l0/u/d/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public final B()Le/a/l0/u/d/b;
    .locals 3

    iget-object v0, p0, Le/a/a/o/a/e;->b:Le/a/a/o/a/f;

    sget-object v1, Le/a/a/o/a/e;->i:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/a/o/a/f;->kj(Le/a/a/o/a/d;Ls1/a/l;)Le/a/l0/u/d/b;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 5

    .line 1
    check-cast p1, Le/a/a/o/a/c;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Le/a/a/o/a/e;->A(I)Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 4
    iget-object v0, p2, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 5
    invoke-static {v0}, Le/a/n/g0;->c0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Le/a/a/o/a/e;->f:Le/a/p5/c0;

    iget-object v2, p0, Le/a/a/o/a/e;->e:Le/a/b0/q/h0;

    invoke-static {v0, p2, v1, v2}, Le/a/n/g0;->J0(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/HistoryEvent;Le/a/p5/c0;Le/a/b0/q/h0;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    .line 7
    iget-object v1, p2, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz v1, :cond_2

    const-string v2, "historyEvent.callRecording ?: return"

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GUIUtils.bidiFormat(contact.displayNameOrNumber)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Le/a/a/o/a/c;->setTitle(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Le/a/a/o/a/e;->c:Le/a/a/o/a/f;

    .line 11
    iget-object v3, v1, Lcom/truecaller/data/entity/CallRecording;->c:Ljava/lang/String;

    .line 12
    invoke-interface {v2, v3}, Le/a/a/o/a/f;->w3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-interface {p1, v2}, Le/a/a/o/a/c;->c(Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Le/a/a/o/a/e;->g:Le/a/o5/b0;

    .line 14
    iget-wide v3, p2, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 15
    invoke-interface {v2, v3, v4}, Le/a/o5/b0;->n(J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/a/o/a/c;->p(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Le/a/a/o/a/e;->h:Le/a/x2/a;

    invoke-virtual {p2, v0}, Le/a/x2/a;->b(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/a/o/a/c;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 17
    iget-object p2, p0, Le/a/a/o/a/e;->c:Le/a/a/o/a/f;

    invoke-interface {p2}, Le/a/a/o/a/f;->f1()Ljava/util/Set;

    move-result-object p2

    .line 18
    iget-wide v0, v1, Lcom/truecaller/data/entity/CallRecording;->a:J

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p1, p2}, Le/a/a/o/a/c;->b(Z)V

    :cond_2
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/o/a/e;->B()Le/a/l0/u/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/a/o/a/e;->B()Le/a/l0/u/d/b;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz p1, :cond_0

    .line 5
    iget-wide v1, p1, Lcom/truecaller/data/entity/CallRecording;->a:J

    :cond_0
    return-wide v1
.end method

.method public v(Le/a/o2/h;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Le/a/o2/h;->b:I

    .line 2
    invoke-virtual {p0, v0}, Le/a/a/o/a/e;->A(I)Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, v0, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz v0, :cond_3

    const-string v2, "getEvent(event.position)\u2026Recording ?: return false"

    .line 4
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v2, "ItemEvent.CLICKED"

    .line 6
    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Le/a/a/o/a/e;->d:Le/a/a/o/a/b;

    invoke-interface {p1, v0}, Le/a/a/o/a/b;->Qi(Lcom/truecaller/data/entity/CallRecording;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const-string v2, "ItemEvent.LONG_CLICKED"

    .line 7
    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Le/a/a/o/a/e;->d:Le/a/a/o/a/b;

    invoke-interface {p1, v0}, Le/a/a/o/a/b;->yi(Lcom/truecaller/data/entity/CallRecording;)Z

    move-result v1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v2, Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;->PLAY_CALL_RECORDING:Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;

    invoke-virtual {v2}, Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Le/a/a/o/a/e;->d:Le/a/a/o/a/b;

    invoke-interface {p1, v0}, Le/a/a/o/a/b;->z4(Lcom/truecaller/data/entity/CallRecording;)Z

    move-result v1

    goto :goto_0

    .line 9
    :cond_2
    sget-object v2, Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;->DELETE_CALL_RECORDING:Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;

    invoke-virtual {v2}, Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/a/o/a/e;->d:Le/a/a/o/a/b;

    invoke-interface {p1, v0}, Le/a/a/o/a/b;->B5(Lcom/truecaller/data/entity/CallRecording;)Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method
