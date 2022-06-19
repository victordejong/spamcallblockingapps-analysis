.class public final Le/m/a/c/g1/e0/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/e0/v;


# instance fields
.field public a:Le/m/a/c/q1/c0;

.field public b:Le/m/a/c/g1/s;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Le/m/a/c/q1/c0;Le/m/a/c/g1/i;Le/m/a/c/g1/e0/c0$d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/e0/y;->a:Le/m/a/c/q1/c0;

    .line 2
    invoke-virtual {p3}, Le/m/a/c/g1/e0/c0$d;->a()V

    .line 3
    invoke-virtual {p3}, Le/m/a/c/g1/e0/c0$d;->c()I

    move-result p1

    const/4 v0, 0x4

    invoke-interface {p2, p1, v0}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/g1/e0/y;->b:Le/m/a/c/g1/s;

    .line 4
    invoke-virtual {p3}, Le/m/a/c/g1/e0/c0$d;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "application/x-scte35"

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p2, p3, v0, v1, v0}, Lcom/google/android/exoplayer2/Format;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public d(Le/m/a/c/q1/t;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Le/m/a/c/g1/e0/y;->c:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/m/a/c/g1/e0/y;->a:Le/m/a/c/q1/c0;

    invoke-virtual {v0}, Le/m/a/c/q1/c0;->c()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/a/c/g1/e0/y;->b:Le/m/a/c/g1/s;

    const/4 v3, 0x0

    iget-object v4, p0, Le/m/a/c/g1/e0/y;->a:Le/m/a/c/q1/c0;

    .line 4
    invoke-virtual {v4}, Le/m/a/c/q1/c0;->c()J

    move-result-wide v4

    const-string v6, "application/x-scte35"

    .line 5
    invoke-static {v3, v6, v4, v5}, Lcom/google/android/exoplayer2/Format;->i(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    invoke-interface {v0, v3}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Le/m/a/c/g1/e0/y;->c:Z

    .line 7
    :cond_1
    invoke-virtual {p1}, Le/m/a/c/q1/t;->a()I

    move-result v7

    .line 8
    iget-object v0, p0, Le/m/a/c/g1/e0/y;->b:Le/m/a/c/g1/s;

    invoke-interface {v0, p1, v7}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 9
    iget-object v3, p0, Le/m/a/c/g1/e0/y;->b:Le/m/a/c/g1/s;

    iget-object p1, p0, Le/m/a/c/g1/e0/y;->a:Le/m/a/c/q1/c0;

    .line 10
    iget-wide v4, p1, Le/m/a/c/q1/c0;->c:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_2

    iget-wide v0, p1, Le/m/a/c/q1/c0;->c:J

    iget-wide v4, p1, Le/m/a/c/q1/c0;->b:J

    add-long v1, v4, v0

    goto :goto_0

    :cond_2
    iget-wide v4, p1, Le/m/a/c/q1/c0;->a:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long p1, v4, v8

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-wide v4, v1

    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 11
    invoke-interface/range {v3 .. v9}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    return-void
.end method
