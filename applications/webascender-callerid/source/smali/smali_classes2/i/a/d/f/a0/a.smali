.class public final Li/a/d/f/a0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueue;

    invoke-direct {v0, p0}, Lio/opentelemetry/internal/shaded/jctools/queues/MpscArrayQueue;-><init>(I)V

    return-object v0
.end method
