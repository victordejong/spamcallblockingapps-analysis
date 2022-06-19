.class final enum Lcom/google/firebase/perf/i/f$a;
.super Lcom/google/firebase/perf/i/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IJ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/perf/i/f;-><init>(Ljava/lang/String;IJLcom/google/firebase/perf/i/f$a;)V

    return-void
.end method


# virtual methods
.method public convert(JLcom/google/firebase/perf/i/f;)J
    .locals 0

    .line 1
    invoke-virtual {p3, p1, p2}, Lcom/google/firebase/perf/i/f;->toTerabytes(J)J

    move-result-wide p1

    return-wide p1
.end method
