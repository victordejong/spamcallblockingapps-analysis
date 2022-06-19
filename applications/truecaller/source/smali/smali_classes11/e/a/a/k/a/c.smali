.class public final Le/a/a/k/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/b;


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JZ)J
    .locals 8

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x7530

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x2710

    .line 1
    :goto_0
    iget-wide v2, p0, Le/a/a/k/a/c;->b:J

    sub-long v2, p1, v2

    const/4 v4, 0x2

    int-to-long v4, v4

    mul-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-wide/16 v2, 0x0

    .line 2
    iput-wide v2, p0, Le/a/a/k/a/c;->a:J

    :cond_1
    if-eqz p3, :cond_2

    const-wide/16 v2, 0x1388

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x3e8

    :goto_1
    long-to-double v2, v2

    .line 3
    iget-wide v4, p0, Le/a/a/k/a/c;->a:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v2

    long-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-long v0, v0

    .line 4
    iget-wide v2, p0, Le/a/a/k/a/c;->a:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Le/a/a/k/a/c;->a:J

    .line 5
    iput-wide p1, p0, Le/a/a/k/a/c;->b:J

    return-wide v0
.end method
