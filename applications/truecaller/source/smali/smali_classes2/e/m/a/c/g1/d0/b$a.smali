.class public Le/m/a/c/g1/d0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/d0/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/d0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public final synthetic c:Le/m/a/c/g1/d0/b;


# direct methods
.method public constructor <init>(Le/m/a/c/g1/d0/b;)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/d0/b$a;->c:Le/m/a/c/g1/d0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Le/m/a/c/g1/d0/b$a;->a:J

    .line 3
    iput-wide v0, p0, Le/m/a/c/g1/d0/b$a;->b:J

    return-void
.end method


# virtual methods
.method public a()Le/m/a/c/g1/q;
    .locals 4

    .line 1
    iget-wide v0, p0, Le/m/a/c/g1/d0/b$a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    new-instance v0, Le/m/a/c/g1/l;

    iget-object v1, p0, Le/m/a/c/g1/d0/b$a;->c:Le/m/a/c/g1/d0/b;

    .line 3
    iget-object v1, v1, Le/m/a/c/g1/d0/b;->n:Le/m/a/c/q1/m;

    .line 4
    iget-wide v2, p0, Le/m/a/c/g1/d0/b$a;->a:J

    invoke-direct {v0, v1, v2, v3}, Le/m/a/c/g1/l;-><init>(Le/m/a/c/q1/m;J)V

    return-object v0
.end method

.method public b(Le/m/a/c/g1/e;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Le/m/a/c/g1/d0/b$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    .line 2
    iput-wide v2, p0, Le/m/a/c/g1/d0/b$a;->b:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public d(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/d0/b$a;->c:Le/m/a/c/g1/d0/b;

    .line 2
    iget-object v0, v0, Le/m/a/c/g1/d0/b;->n:Le/m/a/c/q1/m;

    .line 3
    iget-object v0, v0, Le/m/a/c/q1/m;->k:Le/m/a/c/q1/m$a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Le/m/a/c/g1/d0/b$a;->c:Le/m/a/c/g1/d0/b;

    .line 6
    iget-object v0, v0, Le/m/a/c/g1/d0/b;->n:Le/m/a/c/q1/m;

    .line 7
    iget-object v0, v0, Le/m/a/c/q1/m;->k:Le/m/a/c/q1/m$a;

    iget-object v0, v0, Le/m/a/c/q1/m$a;->a:[J

    const/4 v1, 0x1

    .line 8
    invoke-static {v0, p1, p2, v1, v1}, Le/m/a/c/q1/d0;->c([JJZZ)I

    move-result p1

    .line 9
    aget-wide p1, v0, p1

    iput-wide p1, p0, Le/m/a/c/g1/d0/b$a;->b:J

    return-void
.end method
