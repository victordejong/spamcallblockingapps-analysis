.class public final Le/m/a/h/a/d/e1;
.super Le/m/a/h/a/d/d1;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/h/a/d/d1;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Le/m/a/h/a/d/d1;JJ)V
    .locals 0

    invoke-direct {p0}, Le/m/a/h/a/d/d1;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/d/e1;->a:Le/m/a/h/a/d/d1;

    .line 1
    invoke-virtual {p0, p2, p3}, Le/m/a/h/a/d/e1;->j(J)J

    move-result-wide p1

    iput-wide p1, p0, Le/m/a/h/a/d/e1;->b:J

    add-long/2addr p1, p4

    .line 2
    invoke-virtual {p0, p1, p2}, Le/m/a/h/a/d/e1;->j(J)J

    move-result-wide p1

    iput-wide p1, p0, Le/m/a/h/a/d/e1;->c:J

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 4

    iget-wide v0, p0, Le/m/a/h/a/d/e1;->c:J

    iget-wide v2, p0, Le/m/a/h/a/d/e1;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final d(JJ)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide p1, p0, Le/m/a/h/a/d/e1;->b:J

    .line 1
    invoke-virtual {p0, p1, p2}, Le/m/a/h/a/d/e1;->j(J)J

    move-result-wide p1

    add-long/2addr p3, p1

    .line 2
    invoke-virtual {p0, p3, p4}, Le/m/a/h/a/d/e1;->j(J)J

    move-result-wide p3

    iget-object v0, p0, Le/m/a/h/a/d/e1;->a:Le/m/a/h/a/d/d1;

    sub-long/2addr p3, p1

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Le/m/a/h/a/d/d1;->d(JJ)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final j(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Le/m/a/h/a/d/e1;->a:Le/m/a/h/a/d/d1;

    .line 1
    invoke-virtual {v0}, Le/m/a/h/a/d/d1;->b()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object p1, p0, Le/m/a/h/a/d/e1;->a:Le/m/a/h/a/d/d1;

    .line 2
    invoke-virtual {p1}, Le/m/a/h/a/d/d1;->b()J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method
