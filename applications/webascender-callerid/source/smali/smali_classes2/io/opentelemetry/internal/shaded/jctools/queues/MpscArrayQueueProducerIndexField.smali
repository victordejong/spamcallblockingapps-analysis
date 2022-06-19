.class abstract Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueProducerIndexField;
.super Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueL1Pad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueL1Pad<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final P_INDEX_OFFSET:J


# instance fields
.field private volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueProducerIndexField;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lio/opentelemetry/internal/shaded/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueProducerIndexField;->P_INDEX_OFFSET:J

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueL1Pad;-><init>(I)V

    return-void
.end method


# virtual methods
.method final casProducerIndex(JJ)Z
    .locals 8

    .line 1
    sget-object v0, Lio/opentelemetry/internal/shaded/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueProducerIndexField;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method public final lvProducerIndex()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueueProducerIndexField;->producerIndex:J

    return-wide v0
.end method
