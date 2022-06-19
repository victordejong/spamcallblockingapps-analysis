.class public final Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\'\u0008\u0087\u0008\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u001d\u001a\u00020\u0003\u0012\u0006\u0010\u001e\u001a\u00020\u0003\u0012\u0006\u0010\u001f\u001a\u00020\u0003\u0012\u0006\u0010 \u001a\u00020\u0003\u0012\u0006\u0010!\u001a\u00020\u0003\u0012\u0006\u0010\"\u001a\u00020\u0003\u0012\u0006\u0010#\u001a\u00020\u0002\u0012\u0006\u0010$\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010%\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010&\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\'\u001a\u00020\u001a\u00a2\u0006\u0004\u0008?\u0010@J\u0013\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\u0008\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000bJ\u0010\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u000bJ\u0010\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u000bJ\u0010\u0010\u0011\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0016H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u0012J\u0010\u0010\u001b\u001a\u00020\u001aH\u00c6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ~\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00032\u0008\u0008\u0002\u0010 \u001a\u00020\u00032\u0008\u0008\u0002\u0010!\u001a\u00020\u00032\u0008\u0008\u0002\u0010\"\u001a\u00020\u00032\u0008\u0008\u0002\u0010#\u001a\u00020\u00022\u0008\u0008\u0002\u0010$\u001a\u00020\u00132\u0008\u0008\u0002\u0010%\u001a\u00020\u00162\u0008\u0008\u0002\u0010&\u001a\u00020\u00022\u0008\u0008\u0002\u0010\'\u001a\u00020\u001aH\u00c6\u0001\u00a2\u0006\u0004\u0008(\u0010)J\u0010\u0010*\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008*\u0010\u000bJ\u0010\u0010+\u001a\u00020\u0013H\u00d6\u0001\u00a2\u0006\u0004\u0008+\u0010\u0015J\u001a\u0010-\u001a\u00020\u001a2\u0008\u0010,\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008-\u0010.R\u001c\u0010\u001e\u001a\u00020\u00038\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010/\u001a\u0004\u00080\u0010\u000bR\u001c\u0010%\u001a\u00020\u00168\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008%\u00101\u001a\u0004\u00082\u0010\u0018R\u001c\u0010\"\u001a\u00020\u00038\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\"\u0010/\u001a\u0004\u00083\u0010\u000bR\u001c\u0010&\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008&\u00104\u001a\u0004\u00085\u0010\u0012R\u001c\u0010 \u001a\u00020\u00038\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008 \u0010/\u001a\u0004\u00086\u0010\u000bR\u001c\u0010!\u001a\u00020\u00038\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008!\u0010/\u001a\u0004\u00087\u0010\u000bR\u001c\u0010\'\u001a\u00020\u001a8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\'\u00108\u001a\u0004\u00089\u0010\u001cR\u001c\u0010#\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008#\u00104\u001a\u0004\u0008:\u0010\u0012R\u001c\u0010\u001d\u001a\u00020\u00038\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010/\u001a\u0004\u0008;\u0010\u000bR\u001c\u0010$\u001a\u00020\u00138\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008$\u0010<\u001a\u0004\u0008=\u0010\u0015R\u001c\u0010\u001f\u001a\u00020\u00038\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010/\u001a\u0004\u0008>\u0010\u000b\u00a8\u0006A"
    }
    d2 = {
        "Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;",
        "",
        "Ljava/util/Date;",
        "",
        "formatDate",
        "(Ljava/util/Date;)Ljava/lang/String;",
        "Le/a/l5/a/e2;",
        "kotlin.jvm.PlatformType",
        "mapToAppSmsInsightsEvent",
        "()Le/a/l5/a/e2;",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "()Ljava/util/Date;",
        "",
        "component8",
        "()I",
        "",
        "component9",
        "()J",
        "component10",
        "",
        "component11",
        "()Z",
        "feature",
        "eventCategory",
        "eventInfo",
        "context",
        "actionType",
        "actionInfo",
        "eventDate",
        "counts",
        "aggEventId",
        "createdAt",
        "consumed",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IJLjava/util/Date;Z)Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;",
        "toString",
        "hashCode",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getEventCategory",
        "J",
        "getAggEventId",
        "getActionInfo",
        "Ljava/util/Date;",
        "getCreatedAt",
        "getContext",
        "getActionType",
        "Z",
        "getConsumed",
        "getEventDate",
        "getFeature",
        "I",
        "getCounts",
        "getEventInfo",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IJLjava/util/Date;Z)V",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final actionInfo:Ljava/lang/String;

.field private final actionType:Ljava/lang/String;

.field private final aggEventId:J

.field private final consumed:Z

.field private final context:Ljava/lang/String;

.field private final counts:I

.field private final createdAt:Ljava/util/Date;

.field private final eventCategory:Ljava/lang/String;

.field private final eventDate:Ljava/util/Date;

.field private final eventInfo:Ljava/lang/String;

.field private final feature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IJLjava/util/Date;Z)V
    .locals 1

    const-string v0, "feature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCategory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventInfo"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionInfo"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventDate"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->feature:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventCategory:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventInfo:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->context:Ljava/lang/String;

    iput-object p5, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionType:Ljava/lang/String;

    iput-object p6, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionInfo:Ljava/lang/String;

    iput-object p7, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventDate:Ljava/util/Date;

    iput p8, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->counts:I

    iput-wide p9, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->aggEventId:J

    iput-object p11, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->createdAt:Ljava/util/Date;

    iput-boolean p12, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->consumed:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IJLjava/util/Date;ZILs1/z/c/f;)V
    .locals 16

    move/from16 v0, p13

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v12, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v12, p9

    :goto_0
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    move-object v14, v1

    goto :goto_1

    :cond_1
    move-object/from16 v14, p11

    :goto_1
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v15, v0

    goto :goto_2

    :cond_2
    move/from16 v15, p12

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    .line 3
    invoke-direct/range {v3 .. v15}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IJLjava/util/Date;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IJLjava/util/Date;ZILjava/lang/Object;)Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->feature:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventCategory:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventInfo:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->context:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionType:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionInfo:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventDate:Ljava/util/Date;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->counts:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-wide v10, v0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->aggEventId:J

    goto :goto_8

    :cond_8
    move-wide/from16 v10, p9

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->createdAt:Ljava/util/Date;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->consumed:Z

    goto :goto_a

    :cond_a
    move/from16 v1, p12

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-wide/from16 p9, v10

    move-object/from16 p11, v12

    move/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IJLjava/util/Date;Z)Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;

    move-result-object v0

    return-object v0
.end method

.method private final formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v0}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v0

    new-instance v1, Lw3/b/a/p;

    invoke-direct {v1, p1}, Lw3/b/a/p;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lw3/b/a/i0/b;->g(Lw3/b/a/b0;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ANALYTICS_DATE_FORMAT.fo\u2026().print(LocalDate(this))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->consumed:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->context:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventDate:Ljava/util/Date;

    return-object v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->counts:I

    return v0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->aggEventId:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IJLjava/util/Date;Z)Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;
    .locals 14

    const-string v0, "feature"

    move-object v2, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCategory"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventInfo"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionInfo"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventDate"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;

    move-object v1, v0

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IJLjava/util/Date;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->feature:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->feature:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventCategory:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventCategory:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventInfo:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->context:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->context:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionType:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionType:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionInfo:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventDate:Ljava/util/Date;

    iget-object v1, p1, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventDate:Ljava/util/Date;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->counts:I

    iget v1, p1, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->counts:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->aggEventId:J

    iget-wide v2, p1, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->aggEventId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->createdAt:Ljava/util/Date;

    iget-object v1, p1, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->createdAt:Ljava/util/Date;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->consumed:Z

    iget-boolean p1, p1, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->consumed:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getActionInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getActionType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getAggEventId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->aggEventId:J

    return-wide v0
.end method

.method public final getConsumed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->consumed:Z

    return v0
.end method

.method public final getContext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->context:Ljava/lang/String;

    return-object v0
.end method

.method public final getCounts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->counts:I

    return v0
.end method

.method public final getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getEventCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getEventInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->feature:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventCategory:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventInfo:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->context:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionType:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionInfo:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventDate:Ljava/util/Date;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->counts:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->aggEventId:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->createdAt:Ljava/util/Date;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->consumed:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final mapToAppSmsInsightsEvent()Le/a/l5/a/e2;
    .locals 6

    .line 1
    sget-object v0, Le/a/l5/a/e2;->l:Lorg/apache/avro/Schema;

    new-instance v0, Le/a/l5/a/e2$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l5/a/e2$b;-><init>(Le/a/l5/a/e2$a;)V

    .line 2
    iget-object v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->feature:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 4
    iput-object v1, v0, Le/a/l5/a/e2$b;->a:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x1

    aput-boolean v2, v1, v3

    .line 6
    iget-object v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventCategory:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 8
    iput-object v1, v0, Le/a/l5/a/e2$b;->b:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 10
    iget-object v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventInfo:Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 12
    iput-object v1, v0, Le/a/l5/a/e2$b;->c:Ljava/lang/CharSequence;

    .line 13
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 14
    iget-object v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->context:Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 16
    iput-object v1, v0, Le/a/l5/a/e2$b;->d:Ljava/lang/CharSequence;

    .line 17
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 18
    iget-object v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionType:Ljava/lang/String;

    .line 19
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 20
    iput-object v1, v0, Le/a/l5/a/e2$b;->e:Ljava/lang/CharSequence;

    .line 21
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 22
    iget v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->counts:I

    .line 23
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 24
    iput v1, v0, Le/a/l5/a/e2$b;->f:I

    .line 25
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 26
    iget-object v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionInfo:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 28
    iput-object v1, v0, Le/a/l5/a/e2$b;->g:Ljava/lang/CharSequence;

    .line 29
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 30
    iget-object v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventDate:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 32
    iput-object v1, v0, Le/a/l5/a/e2$b;->h:Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 34
    invoke-virtual {v0}, Le/a/l5/a/e2$b;->a()Le/a/l5/a/e2;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AggregatedAnalyticsEventModel(feature="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->context:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->actionInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->eventDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", counts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->counts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aggEventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->aggEventId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;->consumed:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
