.class public final enum Lcom/truecaller/analytics/TimingEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/analytics/TimingEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0016\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B3\u0008\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\r\u001a\u00020\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0004\u001a\u0004\u0008\u0012\u0010\u0006j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/truecaller/analytics/TimingEvent;",
        "",
        "",
        "eventGranularity",
        "[J",
        "getEventGranularity",
        "()[J",
        "",
        "event",
        "Ljava/lang/String;",
        "getEvent",
        "()Ljava/lang/String;",
        "",
        "unique",
        "Z",
        "getUnique",
        "()Z",
        "itemGranularity",
        "getItemGranularity",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;[J[JZ)V",
        "CALL_LOG_MERGE",
        "CALL_LOG_FETCH_AND_MERGE",
        "CALL_LOG_STARTUP",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/analytics/TimingEvent;

.field public static final enum CALL_LOG_FETCH_AND_MERGE:Lcom/truecaller/analytics/TimingEvent;

.field public static final enum CALL_LOG_MERGE:Lcom/truecaller/analytics/TimingEvent;

.field public static final enum CALL_LOG_STARTUP:Lcom/truecaller/analytics/TimingEvent;


# instance fields
.field private final event:Ljava/lang/String;

.field private final eventGranularity:[J

.field private final itemGranularity:[J

.field private final unique:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/analytics/TimingEvent;

    new-instance v10, Lcom/truecaller/analytics/TimingEvent;

    .line 1
    sget-object v1, Le/a/q2/u0;->a:[J

    sget-object v15, Le/a/q2/u0;->b:[J

    sget-object v16, Le/a/q2/u0;->a:[J

    const-string v2, "CALL_LOG_MERGE"

    const/4 v3, 0x0

    const-string v4, "CallLogMerge"

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v10

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v9}, Lcom/truecaller/analytics/TimingEvent;-><init>(Ljava/lang/String;ILjava/lang/String;[J[JZILs1/z/c/f;)V

    sput-object v10, Lcom/truecaller/analytics/TimingEvent;->CALL_LOG_MERGE:Lcom/truecaller/analytics/TimingEvent;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    new-instance v1, Lcom/truecaller/analytics/TimingEvent;

    const-string v12, "CALL_LOG_FETCH_AND_MERGE"

    const/4 v13, 0x1

    const-string v14, "CallLogFetchMerge"

    const/16 v17, 0x0

    const/16 v18, 0x8

    const/16 v19, 0x0

    move-object v11, v1

    .line 2
    invoke-direct/range {v11 .. v19}, Lcom/truecaller/analytics/TimingEvent;-><init>(Ljava/lang/String;ILjava/lang/String;[J[JZILs1/z/c/f;)V

    sput-object v1, Lcom/truecaller/analytics/TimingEvent;->CALL_LOG_FETCH_AND_MERGE:Lcom/truecaller/analytics/TimingEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/analytics/TimingEvent;

    .line 3
    sget-object v7, Le/a/q2/u0;->c:[J

    const-string v4, "CALL_LOG_STARTUP"

    const/4 v5, 0x2

    const-string v6, "CallLogStartup"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/truecaller/analytics/TimingEvent;-><init>(Ljava/lang/String;ILjava/lang/String;[J[JZILs1/z/c/f;)V

    sput-object v1, Lcom/truecaller/analytics/TimingEvent;->CALL_LOG_STARTUP:Lcom/truecaller/analytics/TimingEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/analytics/TimingEvent;->$VALUES:[Lcom/truecaller/analytics/TimingEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[J[JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J[JZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/analytics/TimingEvent;->event:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/analytics/TimingEvent;->eventGranularity:[J

    iput-object p5, p0, Lcom/truecaller/analytics/TimingEvent;->itemGranularity:[J

    iput-boolean p6, p0, Lcom/truecaller/analytics/TimingEvent;->unique:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;[J[JZILs1/z/c/f;)V
    .locals 9

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, p5

    :goto_1
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v8, v0

    goto :goto_2

    :cond_2
    move v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 2
    invoke-direct/range {v2 .. v8}, Lcom/truecaller/analytics/TimingEvent;-><init>(Ljava/lang/String;ILjava/lang/String;[J[JZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/analytics/TimingEvent;
    .locals 1

    const-class v0, Lcom/truecaller/analytics/TimingEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/analytics/TimingEvent;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/analytics/TimingEvent;
    .locals 1

    sget-object v0, Lcom/truecaller/analytics/TimingEvent;->$VALUES:[Lcom/truecaller/analytics/TimingEvent;

    invoke-virtual {v0}, [Lcom/truecaller/analytics/TimingEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/analytics/TimingEvent;

    return-object v0
.end method


# virtual methods
.method public final getEvent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/analytics/TimingEvent;->event:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventGranularity()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/analytics/TimingEvent;->eventGranularity:[J

    return-object v0
.end method

.method public final getItemGranularity()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/analytics/TimingEvent;->itemGranularity:[J

    return-object v0
.end method

.method public final getUnique()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/analytics/TimingEvent;->unique:Z

    return v0
.end method
