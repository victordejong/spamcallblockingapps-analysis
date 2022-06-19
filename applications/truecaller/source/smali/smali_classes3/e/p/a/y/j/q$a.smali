.class public Le/p/a/y/j/q$a;
.super Lv3/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/p/a/y/j/q;-><init>(Lv3/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le/p/a/y/j/q;


# direct methods
.method public constructor <init>(Le/p/a/y/j/q;Lv3/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/j/q$a;->b:Le/p/a/y/j/q;

    invoke-direct {p0, p2}, Lv3/l;-><init>(Lv3/b0;)V

    return-void
.end method


# virtual methods
.method public d2(Lv3/f;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/j/q$a;->b:Le/p/a/y/j/q;

    .line 2
    iget v0, v0, Le/p/a/y/j/q;->b:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    int-to-long v3, v0

    .line 3
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lv3/l;->d2(Lv3/f;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    return-wide v1

    .line 4
    :cond_1
    iget-object p3, p0, Le/p/a/y/j/q$a;->b:Le/p/a/y/j/q;

    .line 5
    iget v0, p3, Le/p/a/y/j/q;->b:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p3, Le/p/a/y/j/q;->b:I

    return-wide p1
.end method
