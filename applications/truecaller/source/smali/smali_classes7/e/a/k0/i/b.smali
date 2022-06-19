.class public final Le/a/k0/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/i/a;


# instance fields
.field public final a:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/i/b;->a:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/callrecording/recorder/RecordingError;)V
    .locals 4

    const-string v0, "recordingError"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/callrecording/recorder/RecordingError;->NONE:Lcom/truecaller/callrecording/recorder/RecordingError;

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RecordingError.None is not allowed here"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/k0/i/b;->a:Le/a/q2/a;

    .line 4
    sget-object v1, Le/a/l5/a/z;->d:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/z$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/z$b;-><init>(Le/a/l5/a/z$a;)V

    const-string v2, "$this$toAnalyticsError"

    .line 5
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "Unmapped"

    goto :goto_0

    :pswitch_0
    const-string p1, "WatchdogTriggered"

    goto :goto_0

    :pswitch_1
    const-string p1, "ResetWithOngoingSession"

    goto :goto_0

    :pswitch_2
    const-string p1, "MissingSession"

    goto :goto_0

    :pswitch_3
    const-string p1, "InvalidStorageState"

    goto :goto_0

    :pswitch_4
    const-string p1, "CreateDirectoryFailed"

    goto :goto_0

    :pswitch_5
    const-string p1, "CreateFileFailed"

    goto :goto_0

    :pswitch_6
    const-string p1, "RecorderError"

    goto :goto_0

    :pswitch_7
    const-string p1, "StopFailed"

    goto :goto_0

    :pswitch_8
    const-string p1, "StartFailed"

    .line 7
    :goto_0
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 8
    iput-object p1, v1, Le/a/l5/a/z$b;->a:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v2, 0x1

    aput-boolean v2, p1, v3

    .line 10
    invoke-virtual {v1}, Le/a/l5/a/z$b;->a()Le/a/l5/a/z;

    move-result-object p1

    const-string v1, "AppCallRecordingFailure.\u2026\n                .build()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
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

.method public b(Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;)V
    .locals 6

    const-string v0, "launchContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "step"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$toAnalyticsSource"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v3, "CallRecordingOnBoardingLaunchContext context not mapped"

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->BUBBLE:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->INCALLUI:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    goto :goto_0

    .line 6
    :cond_2
    sget-object p1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->RECORDING_LIST:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    :goto_0
    if-eqz p1, :cond_3

    .line 7
    iget-object v3, p0, Le/a/k0/i/b;->a:Le/a/q2/a;

    .line 8
    sget-object v4, Le/a/l5/a/a0;->e:Lorg/apache/avro/Schema;

    new-instance v4, Le/a/l5/a/a0$b;

    invoke-direct {v4, v0}, Le/a/l5/a/a0$b;-><init>(Le/a/l5/a/a0$a;)V

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v4}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-virtual {v4, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 11
    iput-object p1, v4, Le/a/l5/a/a0$b;->a:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {v4}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v2, p1, v5

    .line 13
    invoke-virtual {p2}, Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {v4}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {v4, p2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 15
    iput-object p1, v4, Le/a/l5/a/a0$b;->b:Ljava/lang/CharSequence;

    .line 16
    invoke-virtual {v4}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v2, p1, v1

    .line 17
    invoke-virtual {v4}, Le/a/l5/a/a0$b;->a()Le/a/l5/a/a0;

    move-result-object p1

    const-string p2, "AppCallRecordingOnboardi\u2026                 .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {v3, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_3
    return-void
.end method

.method public c(Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;II)V
    .locals 5

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k0/i/b;->a:Le/a/q2/a;

    .line 2
    sget-object v1, Le/a/l5/a/c0;->f:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/c0$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/c0$b;-><init>(Le/a/l5/a/c0$a;)V

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-object p1, v1, Le/a/l5/a/c0$b;->a:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v2, 0x1

    aput-boolean v2, p1, v3

    .line 7
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p1

    const/4 v3, 0x3

    aget-object p1, p1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 8
    iput p2, v1, Le/a/l5/a/c0$b;->b:I

    .line 9
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v2, p1, v3

    .line 10
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p1

    const/4 p2, 0x4

    aget-object p1, p1, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 11
    iput p3, v1, Le/a/l5/a/c0$b;->c:I

    .line 12
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v2, p1, p2

    .line 13
    invoke-virtual {v1}, Le/a/l5/a/c0$b;->a()Le/a/l5/a/c0;

    move-result-object p1

    const-string p2, "AppCallRecordingSuccessf\u2026\n                .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public d(Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;)V
    .locals 4

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k0/i/b;->a:Le/a/q2/a;

    .line 2
    sget-object v1, Le/a/l5/a/b0;->d:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/b0$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/b0$b;-><init>(Le/a/l5/a/b0$a;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-object p1, v1, Le/a/l5/a/b0$b;->a:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v2, 0x1

    aput-boolean v2, p1, v3

    .line 7
    invoke-virtual {v1}, Le/a/l5/a/b0$b;->a()Le/a/l5/a/b0;

    move-result-object p1

    const-string v1, "AppCallRecordingReEnable\u2026\n                .build()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public e(Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;Lcom/truecaller/callrecording/analytics/RecordingAction;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k0/i/b;->a:Le/a/q2/a;

    .line 2
    invoke-static {}, Le/a/l5/a/l2;->a()Le/a/l5/a/l2$b;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/a/l5/a/l2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/callrecording/analytics/RecordingAction;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/a/l5/a/l2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 5
    invoke-virtual {v1}, Le/a/l5/a/l2$b;->a()Le/a/l5/a/l2;

    move-result-object p1

    const-string p2, "AppUserInteraction.newBu\u2026\n                .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method
