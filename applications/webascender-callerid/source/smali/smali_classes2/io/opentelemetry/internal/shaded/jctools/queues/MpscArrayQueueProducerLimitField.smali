.class abstract Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueProducerLimitField;
.super Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueMidPad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueMidPad<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final P_LIMIT_OFFSET:J


# instance fields
.field private volatile producerLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueProducerLimitField;

    const-string v1, "producerLimit"

    invoke-static {v0, v1}, Lio/opentelemetry/internal/shaded/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueProducerLimitField;->P_LIMIT_OFFSET:J

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueMidPad;-><init>(I)V

    int-to-long v0, p1

    .line 2
    iput-wide v0, p0, Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueProducerLimitField;->producerLimit:J

    return-void
.end method


# virtual methods
.method final lvProducerLimit()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueProducerLimitField;->producerLimit:J

    return-wide v0
.end method

.method final soProducerLimit(J)V
    .locals 6

    .line 1
    sget-object v0, Lio/opentelemetry/internal/shaded/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueProducerLimitField;->P_LIMIT_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method
