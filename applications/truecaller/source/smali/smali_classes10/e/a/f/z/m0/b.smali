.class public final Le/a/f/z/m0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/z/m0/a;
.implements Lq3/a/i0;


# instance fields
.field public a:Z

.field public final b:Ls1/w/f;

.field public final c:Le/a/q2/a;

.field public final d:Le/a/f/w/c;

.field public final e:Le/a/f/y/c;

.field public final f:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/q2/a;Le/a/f/w/c;Le/a/f/y/c;Le/a/r2/f;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/q2/a;",
            "Le/a/f/w/c;",
            "Le/a/f/y/c;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerInfoRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/z/m0/b;->b:Ls1/w/f;

    iput-object p2, p0, Le/a/f/z/m0/b;->c:Le/a/q2/a;

    iput-object p3, p0, Le/a/f/z/m0/b;->d:Le/a/f/w/c;

    iput-object p4, p0, Le/a/f/z/m0/b;->e:Le/a/f/y/c;

    iput-object p5, p0, Le/a/f/z/m0/b;->f:Le/a/r2/f;

    return-void
.end method

.method public static final k(Le/a/f/z/m0/b;Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;)Lq3/a/n0;
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v3, Le/a/f/z/m0/c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/f/z/m0/c;-><init>(Le/a/f/z/m0/b;Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/a/f/z/m0/b;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/a/f/z/m0/b;->a:Z

    .line 3
    iget-object v0, p0, Le/a/f/z/m0/b;->e:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->h()Lq3/a/w2/h;

    move-result-object v0

    new-instance v1, Le/a/f/z/m0/b$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/f/z/m0/b$c;-><init>(Le/a/f/z/m0/b;Ls1/w/d;)V

    invoke-static {p0, v0, v1}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    return-void
.end method

.method public b(Lcom/truecaller/incallui/service/CallState;)V
    .locals 4

    const-string v0, "callState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    .line 2
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->INCALLUI_CALL:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 4
    invoke-static {v0, v1, v2, p1, v3}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->k(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/f/z/m0/b;->c:Le/a/q2/a;

    invoke-static {p1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public c(J)V
    .locals 5

    .line 1
    sget-object v0, Le/a/l5/a/x1;->e:Lorg/apache/avro/Schema;

    new-instance v0, Le/a/l5/a/x1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l5/a/x1$b;-><init>(Le/a/l5/a/x1$a;)V

    .line 2
    sget-object v1, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->INCALLUI:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 4
    iput-object v1, v0, Le/a/l5/a/x1$b;->a:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x1

    aput-boolean v2, v1, v3

    .line 6
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 7
    iput-wide p1, v0, Le/a/l5/a/x1$b;->b:J

    .line 8
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v2, p1, v3

    .line 9
    invoke-virtual {v0}, Le/a/l5/a/x1$b;->a()Le/a/l5/a/x1;

    move-result-object p1

    .line 10
    iget-object p2, p0, Le/a/f/z/m0/b;->f:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/q2/a0;

    invoke-interface {p2, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public d(Lq3/a/w2/h;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/h<",
            "Lcom/truecaller/incallui/service/ServiceUIEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/f/z/m0/b$f;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/f/z/m0/b$f;-><init>(Le/a/f/z/m0/b;Lq3/a/w2/h;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public e(Lq3/a/w2/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/h<",
            "Lcom/truecaller/callbubbles/CallBubbleUIEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/f/z/m0/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/f/z/m0/b$b;-><init>(Le/a/f/z/m0/b;Ls1/w/d;)V

    invoke-static {p0, p1, v0}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    return-void
.end method

.method public f(Lq3/a/w2/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/h<",
            "Lcom/truecaller/incallui/callui/incoming/IncomingCallUIEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/f/z/m0/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/f/z/m0/b$d;-><init>(Le/a/f/z/m0/b;Ls1/w/d;)V

    invoke-static {p0, p1, v0}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    return-void
.end method

.method public g(Le/a/b0/a/x/a;)V
    .locals 4

    const-string v0, "properties"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->FULL_SCREEN_PROFILE_PICTURE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$this$toMap"

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    sget-object v2, Lcom/truecaller/incallui/utils/analytics/events/FullScreenPictureEvent;->DENSITY:Lcom/truecaller/incallui/utils/analytics/events/FullScreenPictureEvent;

    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/analytics/events/FullScreenPictureEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget p1, p1, Le/a/b0/a/x/a;->a:I

    const/16 v3, 0x140

    if-ge p1, v3, :cond_0

    const-string p1, "low"

    goto :goto_0

    :cond_0
    const/16 v3, 0x1e0

    if-ge p1, v3, :cond_1

    const-string p1, "medium"

    goto :goto_0

    :cond_1
    const-string p1, "high"

    .line 6
    :goto_0
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v2, "viewId"

    .line 7
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 8
    invoke-static {v1}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    :goto_1
    new-instance v2, Le/a/q2/y0/a/a;

    invoke-direct {v2, v0, p1, v1}, Le/a/q2/y0/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 10
    iget-object p1, p0, Le/a/f/z/m0/b;->c:Le/a/q2/a;

    invoke-static {v2, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/z/m0/b;->b:Ls1/w/f;

    return-object v0
.end method

.method public h(Lq3/a/w2/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/h<",
            "Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/f/z/m0/b$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/f/z/m0/b$e;-><init>(Le/a/f/z/m0/b;Ls1/w/d;)V

    invoke-static {p0, p1, v0}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    return-void
.end method

.method public i(Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;)V
    .locals 4

    const-string v0, "uiEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->NOTIFICATION:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->SPEAKER_OFF:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    goto :goto_0

    .line 4
    :pswitch_1
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->SPEAKER_ON:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    goto :goto_0

    .line 5
    :pswitch_2
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->UNMUTE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    goto :goto_0

    .line 6
    :pswitch_3
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->MUTE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    goto :goto_0

    .line 7
    :pswitch_4
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->HANG_UP:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    goto :goto_0

    .line 8
    :pswitch_5
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->DECLINE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    goto :goto_0

    .line 9
    :pswitch_6
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->ANSWER:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    goto :goto_0

    .line 10
    :pswitch_7
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->NOTIFICATION:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    .line 11
    :goto_0
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    invoke-virtual {v0}, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, p1, v0, v2, v3}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->k(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    iget-object v0, p0, Le/a/f/z/m0/b;->c:Le/a/q2/a;

    invoke-static {p1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j(Le/a/f/a/g;Ljava/lang/String;)V
    .locals 2

    const-string v0, "callerInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Le/a/f/a/g;->p:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p1, Le/a/f/a/g;->u:Z

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p1, Le/a/f/a/g;->k:Z

    if-nez v0, :cond_0

    const-string v0, "cred"

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p1, Le/a/f/a/g;->r:Z

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v0, p1, Le/a/f/a/g;->k:Z

    if-nez v0, :cond_1

    const-string v0, "priority"

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v0, p1, Le/a/f/a/g;->t:Z

    if-eqz v0, :cond_2

    const-string v0, "verified_business"

    .line 7
    :goto_0
    invoke-static {}, Le/a/l5/a/o;->a()Le/a/l5/a/o$b;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Le/a/l5/a/o$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/o$b;

    .line 9
    invoke-virtual {v1, p2}, Le/a/l5/a/o$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/o$b;

    .line 10
    iget-object p1, p1, Le/a/f/a/g;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, p1}, Le/a/l5/a/o$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/o$b;

    .line 12
    invoke-virtual {v1}, Le/a/l5/a/o$b;->a()Le/a/l5/a/o;

    move-result-object p1

    .line 13
    iget-object p2, p0, Le/a/f/z/m0/b;->f:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/q2/a0;

    invoke-interface {p2, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_2
    return-void
.end method

.method public final l(Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/incallui/utils/analytics/events/CallerType;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/f/z/m0/b$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/f/z/m0/b$a;

    iget v1, v0, Le/a/f/z/m0/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/f/z/m0/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f/z/m0/b$a;

    invoke-direct {v0, p0, p1}, Le/a/f/z/m0/b$a;-><init>(Le/a/f/z/m0/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/f/z/m0/b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/f/z/m0/b$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Le/a/f/z/m0/b$a;->i:Ljava/lang/Object;

    check-cast v2, Lq3/a/w2/l;

    iget-object v5, v0, Le/a/f/z/m0/b$a;->h:Ljava/lang/Object;

    check-cast v5, Lq3/a/w2/z;

    iget-object v6, v0, Le/a/f/z/m0/b$a;->g:Ljava/lang/Object;

    check-cast v6, Le/a/f/z/m0/b;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/f/z/m0/b;->d:Le/a/f/w/c;

    invoke-interface {p1}, Le/a/f/w/c;->a()Lq3/a/w2/h;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lq3/a/w2/h;->p2()Lq3/a/w2/z;

    move-result-object v5

    .line 6
    :try_start_1
    invoke-interface {v5}, Lq3/a/w2/z;->iterator()Lq3/a/w2/l;

    move-result-object p1

    move-object v6, p0

    move-object v2, p1

    :cond_3
    :goto_1
    iput-object v6, v0, Le/a/f/z/m0/b$a;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/f/z/m0/b$a;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/f/z/m0/b$a;->i:Ljava/lang/Object;

    iput v4, v0, Le/a/f/z/m0/b$a;->e:I

    invoke-interface {v2, v0}, Lq3/a/w2/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v2}, Lq3/a/w2/l;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f/w/f;

    .line 7
    instance-of v7, p1, Le/a/f/w/f$c;

    if-eqz v7, :cond_5

    goto :goto_1

    .line 8
    :cond_5
    instance-of v7, p1, Le/a/f/w/f$b;

    if-eqz v7, :cond_6

    check-cast p1, Le/a/f/w/f$b;

    .line 9
    iget-object p1, p1, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 10
    invoke-virtual {v6, p1}, Le/a/f/z/m0/b;->m(Le/a/f/a/g;)Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-static {v5, v3, v4, v3}, Ls1/a/a/a/v0/f/d;->U(Lq3/a/w2/z;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-object p1

    .line 12
    :cond_6
    :try_start_2
    instance-of p1, p1, Le/a/f/w/f$a;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->UNKNOWN:Lcom/truecaller/incallui/utils/analytics/events/CallerType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    invoke-static {v5, v3, v4, v3}, Ls1/a/a/a/v0/f/d;->U(Lq3/a/w2/z;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-object p1

    :cond_7
    invoke-static {v5, v3, v4, v3}, Ls1/a/a/a/v0/f/d;->U(Lq3/a/w2/z;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 14
    sget-object p1, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->UNKNOWN:Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    return-object p1

    :catchall_0
    move-exception p1

    .line 15
    invoke-static {v5, v3, v4, v3}, Ls1/a/a/a/v0/f/d;->U(Lq3/a/w2/z;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    throw p1
.end method

.method public final m(Le/a/f/a/g;)Lcom/truecaller/incallui/utils/analytics/events/CallerType;
    .locals 1

    .line 1
    iget-boolean v0, p1, Le/a/f/a/g;->k:Z

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p1, Le/a/f/a/g;->n:Lcom/truecaller/incallui/utils/BlockAction;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p1, Le/a/f/a/g;->r:Z

    if-eqz v0, :cond_1

    .line 4
    sget-object p1, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->PRIORITY:Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {p1}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->GOLD:Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p1}, Le/a/m0/a1$k;->E0(Le/a/f/a/g;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->PREMIUM:Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    goto :goto_1

    .line 7
    :cond_3
    iget-boolean v0, p1, Le/a/f/a/g;->p:Z

    if-eqz v0, :cond_4

    .line 8
    sget-object p1, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->PHONEBOOK:Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    goto :goto_1

    .line 9
    :cond_4
    iget-boolean p1, p1, Le/a/f/a/g;->o:Z

    if-eqz p1, :cond_5

    .line 10
    sget-object p1, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->UNKNOWN:Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    goto :goto_1

    .line 11
    :cond_5
    sget-object p1, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->IDENTIFIED:Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    goto :goto_1

    .line 12
    :cond_6
    :goto_0
    sget-object p1, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->SPAM:Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    :goto_1
    return-object p1
.end method
