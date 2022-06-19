.class public final Le/a/d/c0/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/f0;
.implements Lq3/a/i0;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/q2/a;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Le/a/d/c0/j1;

.field public final e:Le/a/d/g;

.field public final f:Le/a/d/c0/y1/b;

.field public final g:Lcom/truecaller/clevertap/CleverTapManager;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/q2/a;Lo3/a;Le/a/d/c0/j1;Le/a/d/g;Le/a/d/c0/y1/b;Lcom/truecaller/clevertap/CleverTapManager;)V
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
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;",
            "Le/a/d/c0/j1;",
            "Le/a/d/g;",
            "Le/a/d/c0/y1/b;",
            "Lcom/truecaller/clevertap/CleverTapManager;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleverTap"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/k0;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c0/k0;->b:Le/a/q2/a;

    iput-object p3, p0, Le/a/d/c0/k0;->c:Lo3/a;

    iput-object p4, p0, Le/a/d/c0/k0;->d:Le/a/d/c0/j1;

    iput-object p5, p0, Le/a/d/c0/k0;->e:Le/a/d/g;

    iput-object p6, p0, Le/a/d/c0/k0;->f:Le/a/d/c0/y1/b;

    iput-object p7, p0, Le/a/d/c0/k0;->g:Lcom/truecaller/clevertap/CleverTapManager;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/voip/util/VoipInvitationFailureReason;)V
    .locals 4

    const-string v0, "reason"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/c0/k0;->b:Le/a/q2/a;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/voip/util/VoipInvitationFailureReason;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Reason"

    .line 4
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Le/a/q2/g$b$a;

    const-string v2, "GroupVoiceInvitationFailure"

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v1, v3}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v1, "AnalyticsEvent.Builder(E\u2026\n                .build()"

    .line 6
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    const-string v0, "channelId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/c0/k0;->b:Le/a/q2/a;

    .line 2
    sget-object v1, Le/a/l5/a/y2;->d:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/y2$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/y2$b;-><init>(Le/a/l5/a/y2$a;)V

    .line 3
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 4
    iput-object p1, v1, Le/a/l5/a/y2$b;->a:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v2, 0x1

    aput-boolean v2, p1, v3

    .line 6
    invoke-virtual {v1}, Le/a/l5/a/y2$b;->a()Le/a/l5/a/y2;

    move-result-object p1

    const-string v1, "AppVoipServiceStartNotAl\u2026hannel(channelId).build()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public c(Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;)V
    .locals 6

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/truecaller/voip/util/VoipAnalyticsContext;->VOIP_IN_CALL_UI:Lcom/truecaller/voip/util/VoipAnalyticsContext;

    invoke-virtual {v1}, Lcom/truecaller/voip/util/VoipAnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v2, v5

    .line 2
    :cond_0
    invoke-static {v3, v0, v3, v5, v2}, Le/d/c/a/a;->p1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    .line 3
    iget-object v2, p0, Le/a/d/c0/k0;->b:Le/a/q2/a;

    invoke-static {v0, v2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 4
    iget-object v0, p0, Le/a/d/c0/k0;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 5
    invoke-static {}, Le/a/l5/a/l2;->a()Le/a/l5/a/l2$b;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Le/a/l5/a/l2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 7
    invoke-virtual {v1}, Lcom/truecaller/voip/util/VoipAnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Le/a/l5/a/l2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 8
    invoke-virtual {v2}, Le/a/l5/a/l2$b;->a()Le/a/l5/a/l2;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public d(Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V
    .locals 5

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Le/a/d/c0/e0;->h:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Le/a/q2/g$b;

    const-string v1, "GroupVoipStateChanged"

    invoke-direct {v0, v1}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Le/a/q2/g$b;

    const-string v1, "VoipStateChanged"

    invoke-direct {v0, v1}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object v1, p1, Le/a/d/c0/e0;->a:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    .line 5
    invoke-virtual {v1}, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Direction"

    invoke-virtual {v0, v2, v1}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 6
    invoke-virtual {p2}, Lcom/truecaller/voip/util/VoipAnalyticsState;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "State"

    invoke-virtual {v0, v2, v1}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    const-string v1, "fbEventBuilder\n         \u2026PARAM_STATE, state.value)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p3}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "Reason"

    .line 8
    invoke-virtual {v0, v3, v2}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 9
    :goto_2
    iget-object v2, p1, Le/a/d/c0/e0;->g:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    const-string v3, "CrossDcIsoCode"

    .line 10
    invoke-virtual {v0, v3, v2}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 11
    :goto_3
    iget-object v2, p0, Le/a/d/c0/k0;->b:Le/a/q2/a;

    invoke-virtual {v0}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object v0

    const-string v3, "fbEventBuilder.build()"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 12
    iget-boolean v0, p1, Le/a/d/c0/e0;->h:Z

    if-nez v0, :cond_5

    .line 13
    sget-object v0, Le/a/l5/a/z2;->k:Lorg/apache/avro/Schema;

    new-instance v0, Le/a/l5/a/z2$b;

    invoke-direct {v0, v1}, Le/a/l5/a/z2$b;-><init>(Le/a/l5/a/z2$a;)V

    .line 14
    iget-object v2, p1, Le/a/d/c0/e0;->a:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    .line 15
    invoke-virtual {v2}, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 17
    iput-object v2, v0, Le/a/l5/a/z2$b;->a:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v3, 0x1

    aput-boolean v3, v2, v4

    .line 19
    invoke-virtual {p2}, Lcom/truecaller/voip/util/VoipAnalyticsState;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-virtual {v0, v2, p2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 21
    iput-object p2, v0, Le/a/l5/a/z2$b;->b:Ljava/lang/CharSequence;

    .line 22
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p2

    aput-boolean v3, p2, v4

    .line 23
    iget-object p2, p1, Le/a/d/c0/e0;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v4, 0x5

    aget-object v2, v2, v4

    invoke-virtual {v0, v2, p2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 25
    iput-object p2, v0, Le/a/l5/a/z2$b;->d:Ljava/lang/CharSequence;

    .line 26
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p2

    aput-boolean v3, p2, v4

    if-eqz p3, :cond_4

    .line 27
    invoke-virtual {p3}, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 28
    :cond_4
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    const/4 p3, 0x4

    aget-object p2, p2, p3

    invoke-virtual {v0, p2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 29
    iput-object v1, v0, Le/a/l5/a/z2$b;->c:Ljava/lang/CharSequence;

    .line 30
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p2

    aput-boolean v3, p2, p3

    .line 31
    iget-object p2, p1, Le/a/d/c0/e0;->c:Ljava/lang/String;

    .line 32
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p3

    const/4 v1, 0x6

    aget-object p3, p3, v1

    invoke-virtual {v0, p3, p2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 33
    iput-object p2, v0, Le/a/l5/a/z2$b;->e:Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p2

    aput-boolean v3, p2, v1

    .line 35
    iget-object p2, p1, Le/a/d/c0/e0;->e:Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p3

    const/4 v1, 0x7

    aget-object p3, p3, v1

    invoke-virtual {v0, p3, p2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 37
    iput-object p2, v0, Le/a/l5/a/z2$b;->f:Ljava/lang/CharSequence;

    .line 38
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p2

    aput-boolean v3, p2, v1

    .line 39
    iget-object p2, p1, Le/a/d/c0/e0;->d:Ljava/lang/Integer;

    .line 40
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p3

    const/16 v1, 0x8

    aget-object p3, p3, v1

    invoke-virtual {v0, p3, p2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 41
    iput-object p2, v0, Le/a/l5/a/z2$b;->g:Ljava/lang/Integer;

    .line 42
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p2

    aput-boolean v3, p2, v1

    .line 43
    iget-object p1, p1, Le/a/d/c0/e0;->f:Ljava/lang/Integer;

    .line 44
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    const/16 p3, 0x9

    aget-object p2, p2, p3

    invoke-virtual {v0, p2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 45
    iput-object p1, v0, Le/a/l5/a/z2$b;->h:Ljava/lang/Integer;

    .line 46
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v3, p1, p3

    .line 47
    iget-object p1, p0, Le/a/d/c0/k0;->c:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a0;

    invoke-virtual {v0}, Le/a/l5/a/z2$b;->a()Le/a/l5/a/z2;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_5
    return-void
.end method

.method public e(Ljava/lang/String;Lcom/truecaller/voip/util/VoipAnalyticsFailedCallAction;)V
    .locals 4

    const-string v0, "analyticsContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/voip/util/VoipAnalyticsFailedCallAction;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 2
    :goto_0
    invoke-static {v1, v0, v1, v3, v2}, Le/d/c/a/a;->p1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/d/c0/k0;->b:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 4
    iget-object v0, p0, Le/a/d/c0/k0;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 5
    invoke-static {}, Le/a/l5/a/l2;->a()Le/a/l5/a/l2$b;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p1}, Le/a/l5/a/l2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/voip/util/VoipAnalyticsFailedCallAction;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/a/l5/a/l2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 8
    invoke-virtual {v1}, Le/a/l5/a/l2$b;->a()Le/a/l5/a/l2;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public f(ZLjava/lang/String;JLjava/lang/Integer;)V
    .locals 4

    const-string v0, "channelId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "GroupVoipCallFinished"

    goto :goto_0

    :cond_0
    const-string p1, "VoipCallFinished"

    .line 1
    :goto_0
    iget-object v0, p0, Le/a/d/c0/k0;->b:Le/a/q2/a;

    .line 2
    new-instance v1, Le/a/q2/g$b;

    invoke-direct {v1, p1}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    long-to-double v2, p3

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 4
    iput-object p1, v1, Le/a/q2/g$b;->c:Ljava/lang/Double;

    if-eqz p5, :cond_1

    .line 5
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "Size"

    invoke-virtual {v1, v2, p1}, Le/a/q2/g$b;->b(Ljava/lang/String;I)Le/a/q2/g$b;

    .line 6
    :cond_1
    invoke-virtual {v1}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object p1

    const-string v1, "AnalyticsEvent.Builder(e\u2026\n                .build()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 8
    iget-object p1, p0, Le/a/d/c0/k0;->c:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a0;

    .line 9
    sget-object v0, Le/a/l5/a/x2;->f:Lorg/apache/avro/Schema;

    new-instance v0, Le/a/l5/a/x2$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l5/a/x2$b;-><init>(Le/a/l5/a/x2$a;)V

    .line 10
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 11
    iput-object p2, v0, Le/a/l5/a/x2$b;->b:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p2

    const/4 v1, 0x1

    aput-boolean v1, p2, v2

    .line 13
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    const/4 v2, 0x2

    aget-object p2, p2, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 14
    iput-wide p3, v0, Le/a/l5/a/x2$b;->a:J

    .line 15
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p2

    aput-boolean v1, p2, v2

    if-eqz p5, :cond_2

    .line 16
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    const/4 p3, 0x4

    aget-object p2, p2, p3

    invoke-virtual {v0, p2, p5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 17
    iput-object p5, v0, Le/a/l5/a/x2$b;->c:Ljava/lang/Integer;

    .line 18
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p2

    aput-boolean v1, p2, p3

    .line 19
    :cond_2
    invoke-virtual {v0}, Le/a/l5/a/x2$b;->a()Le/a/l5/a/x2;

    move-result-object p2

    .line 20
    invoke-interface {p1, p2}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6

    const-string v0, "voipId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/c0/k0;->b:Le/a/q2/a;

    .line 2
    new-instance v1, Le/a/q2/g$b;

    const-string v2, "VoipRTMLoginError"

    invoke-direct {v1, v2}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    const-string v3, "ErrorCode"

    .line 3
    invoke-virtual {v1, v3, p3}, Le/a/q2/g$b;->b(Ljava/lang/String;I)Le/a/q2/g$b;

    const-string v4, "IsRetryAttempt"

    .line 4
    invoke-virtual {v1, v4, p4}, Le/a/q2/g$b;->e(Ljava/lang/String;Z)Le/a/q2/g$b;

    .line 5
    invoke-virtual {v1}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object v1

    const-string v5, "AnalyticsEvent.Builder(E\u2026\n                .build()"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "VoipId"

    .line 10
    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Token"

    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 14
    invoke-virtual {p1, v0}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 15
    invoke-virtual {p1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    .line 16
    iget-object p2, p0, Le/a/d/c0/k0;->c:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/q2/a0;

    invoke-interface {p2, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/k0;->a:Ls1/w/f;

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;)V
    .locals 7

    const-string v0, "analyticsContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/d/c0/k0$a;

    const/4 p3, 0x0

    invoke-direct {v4, p0, p2, p1, p3}, Le/a/d/c0/k0$a;-><init>(Le/a/d/c0/k0;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public i(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Lcom/truecaller/voip/util/VoipCleverTapAction;)V
    .locals 3

    const-string v0, "direction"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipAnalyticsAction"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    sget-object p2, Lcom/truecaller/voip/util/VoipCleverTapEvents;->PRIORITY_VOIP_GROUP_CALL:Lcom/truecaller/voip/util/VoipCleverTapEvents;

    invoke-virtual {p2}, Lcom/truecaller/voip/util/VoipCleverTapEvents;->getValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p2, Lcom/truecaller/voip/util/VoipCleverTapEvents;->PRIORITY_VOIP_CALL:Lcom/truecaller/voip/util/VoipCleverTapEvents;

    invoke-virtual {p2}, Lcom/truecaller/voip/util/VoipCleverTapEvents;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 4
    :goto_0
    iget-object v0, p0, Le/a/d/c0/k0;->g:Lcom/truecaller/clevertap/CleverTapManager;

    invoke-virtual {p1}, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Ls1/k;

    const-string v2, "Direction"

    invoke-direct {v1, v2, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-static {v1}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lcom/truecaller/clevertap/CleverTapManager;->push(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public j(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "channelId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/c0/k0;->b:Le/a/q2/a;

    .line 2
    new-instance v1, Le/a/q2/g$b;

    const-string v2, "VoipRTCJoinChannelError"

    invoke-direct {v1, v2}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ReturnCode"

    invoke-virtual {v1, v4, v3}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    const-string v3, "State"

    .line 4
    invoke-virtual {v1, v3, p5}, Le/a/q2/g$b;->b(Ljava/lang/String;I)Le/a/q2/g$b;

    const-string v5, "Reason"

    .line 5
    invoke-virtual {v1, v5, p6}, Le/a/q2/g$b;->b(Ljava/lang/String;I)Le/a/q2/g$b;

    .line 6
    invoke-virtual {v1}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object v1

    const-string v6, "AnalyticsEvent.Builder(E\u2026\n                .build()"

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, v1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ChannelId"

    .line 10
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Token"

    .line 11
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UID"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Secret"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mode"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 19
    invoke-virtual {p1, v0}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 20
    invoke-virtual {p1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    .line 21
    iget-object p2, p0, Le/a/d/c0/k0;->c:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/q2/a0;

    invoke-interface {p2, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public k(Lq3/a/i0;Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/a;Ljava/lang/String;Lq3/a/w2/z;Lq3/a/w2/z;Lq3/a/w2/z;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;",
            "Ljava/lang/String;",
            "Ls1/z/b/a<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/z/b/a<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lq3/a/w2/z<",
            "Le/a/d/l;",
            ">;",
            "Lq3/a/w2/z<",
            "Lcom/truecaller/voip/VoipUser;",
            ">;",
            "Lq3/a/w2/z<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p9

    const-string v3, "scope"

    move-object/from16 v10, p1

    invoke-static {v10, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "direction"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "channelId"

    move-object/from16 v5, p3

    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "statesChannel"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "usersChannel"

    move-object/from16 v6, p8

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v12, Ls1/z/c/c0;

    invoke-direct {v12}, Ls1/z/c/c0;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v12, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 2
    new-instance v9, Le/a/d/c0/k0$b;

    move-object v11, v9

    move-object/from16 v13, p8

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    invoke-direct/range {v11 .. v18}, Le/a/d/c0/k0$b;-><init>(Ls1/z/c/c0;Lq3/a/w2/z;Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/a;Ljava/lang/String;)V

    .line 3
    iget-object v5, v0, Le/a/d/c0/k0;->a:Ls1/w/f;

    new-instance v7, Le/a/d/c0/i0;

    invoke-direct {v7, v0, v1, v9, v3}, Le/a/d/c0/i0;-><init>(Le/a/d/c0/k0;Lq3/a/w2/z;Ls1/z/b/a;Ls1/w/d;)V

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object v12, v9

    move-object v9, v11

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v4

    .line 4
    new-instance v5, Le/a/d/c0/j0;

    invoke-direct {v5, v1}, Le/a/d/c0/j0;-><init>(Lq3/a/w2/z;)V

    check-cast v4, Lq3/a/u1;

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 5
    invoke-virtual {v4, v1, v6, v5}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    if-eqz v2, :cond_0

    .line 6
    iget-object v4, v0, Le/a/d/c0/k0;->a:Ls1/w/f;

    new-instance v5, Le/a/d/c0/g0;

    invoke-direct {v5, v0, v2, v12, v3}, Le/a/d/c0/g0;-><init>(Le/a/d/c0/k0;Lq3/a/w2/z;Ls1/z/b/a;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object/from16 p2, v4

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move/from16 p5, v7

    move-object/from16 p6, v8

    invoke-static/range {p1 .. p6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v3

    .line 7
    new-instance v4, Le/a/d/c0/h0;

    invoke-direct {v4, v2}, Le/a/d/c0/h0;-><init>(Lq3/a/w2/z;)V

    check-cast v3, Lq3/a/u1;

    .line 8
    invoke-virtual {v3, v1, v6, v4}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;Lcom/truecaller/voip/util/VoipAnalyticsNotificationAction;)V
    .locals 4

    const-string v0, "analyticsContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/voip/util/VoipAnalyticsNotificationAction;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 2
    :goto_0
    invoke-static {v1, v0, v1, v3, v2}, Le/d/c/a/a;->p1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/d/c0/k0;->b:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 4
    iget-object v0, p0, Le/a/d/c0/k0;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 5
    invoke-static {}, Le/a/l5/a/l2;->a()Le/a/l5/a/l2$b;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p1}, Le/a/l5/a/l2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/voip/util/VoipAnalyticsNotificationAction;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/a/l5/a/l2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 8
    invoke-virtual {v1}, Le/a/l5/a/l2$b;->a()Le/a/l5/a/l2;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public final m(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;)Lcom/truecaller/voip/util/VoipAnalyticsState;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->INIT_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsState;->FAILED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    :goto_0
    return-object p1
.end method
