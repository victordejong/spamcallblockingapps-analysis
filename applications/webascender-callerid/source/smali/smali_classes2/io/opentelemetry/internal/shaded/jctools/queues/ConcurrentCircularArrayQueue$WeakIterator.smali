.class Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final buffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private final mask:J

.field private nextElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextIndex:J

.field private final pIndex:J


# direct methods
.method constructor <init>(JJJ[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ[TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->nextIndex:J

    .line 3
    iput-wide p3, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->pIndex:J

    .line 4
    iput-wide p5, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->mask:J

    .line 5
    iput-object p7, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->buffer:[Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->getNext()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

    return-void
.end method

.method private getNext()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-wide v0, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->nextIndex:J

    iget-wide v2, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->pIndex:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 2
    iput-wide v2, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->nextIndex:J

    iget-wide v2, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->mask:J

    invoke-static {v0, v1, v2, v3}, Lio/opentelemetry/internal/shaded/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->buffer:[Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lio/opentelemetry/internal/shaded/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->getNext()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;->nextElement:Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
