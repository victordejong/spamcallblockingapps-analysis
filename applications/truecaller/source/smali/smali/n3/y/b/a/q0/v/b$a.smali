.class public Ln3/y/b/a/q0/v/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/v/f;
.implements Ln3/y/b/a/q0/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/q0/v/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:[J

.field public b:[J

.field public c:J

.field public d:J

.field public final synthetic e:Ln3/y/b/a/q0/v/b;


# direct methods
.method public constructor <init>(Ln3/y/b/a/q0/v/b;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ln3/y/b/a/q0/v/b$a;->e:Ln3/y/b/a/q0/v/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Ln3/y/b/a/q0/v/b$a;->c:J

    .line 3
    iput-wide v0, p0, Ln3/y/b/a/q0/v/b$a;->d:J

    return-void
.end method


# virtual methods
.method public a()Ln3/y/b/a/q0/n;
    .locals 0

    return-object p0
.end method

.method public b(J)Ln3/y/b/a/q0/n$a;
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/v/b$a;->e:Ln3/y/b/a/q0/v/b;

    .line 2
    iget v0, v0, Ln3/y/b/a/q0/v/h;->i:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Ln3/y/b/a/q0/v/b$a;->a:[J

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3, v3}, Ln3/y/b/a/x0/x;->d([JJZZ)I

    move-result v0

    .line 4
    iget-object v1, p0, Ln3/y/b/a/q0/v/b$a;->e:Ln3/y/b/a/q0/v/b;

    iget-object v2, p0, Ln3/y/b/a/q0/v/b$a;->a:[J

    aget-wide v4, v2, v0

    invoke-virtual {v1, v4, v5}, Ln3/y/b/a/q0/v/h;->a(J)J

    move-result-wide v1

    .line 5
    iget-wide v4, p0, Ln3/y/b/a/q0/v/b$a;->c:J

    iget-object v6, p0, Ln3/y/b/a/q0/v/b$a;->b:[J

    aget-wide v7, v6, v0

    add-long/2addr v4, v7

    .line 6
    new-instance v6, Ln3/y/b/a/q0/o;

    invoke-direct {v6, v1, v2, v4, v5}, Ln3/y/b/a/q0/o;-><init>(JJ)V

    cmp-long p1, v1, p1

    if-gez p1, :cond_1

    .line 7
    iget-object p1, p0, Ln3/y/b/a/q0/v/b$a;->a:[J

    array-length p2, p1

    sub-int/2addr p2, v3

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Ln3/y/b/a/q0/v/b$a;->e:Ln3/y/b/a/q0/v/b;

    add-int/2addr v0, v3

    aget-wide v1, p1, v0

    invoke-virtual {p2, v1, v2}, Ln3/y/b/a/q0/v/h;->a(J)J

    move-result-wide p1

    .line 9
    iget-wide v1, p0, Ln3/y/b/a/q0/v/b$a;->c:J

    iget-object v3, p0, Ln3/y/b/a/q0/v/b$a;->b:[J

    aget-wide v4, v3, v0

    add-long/2addr v1, v4

    .line 10
    new-instance v0, Ln3/y/b/a/q0/o;

    invoke-direct {v0, p1, p2, v1, v2}, Ln3/y/b/a/q0/o;-><init>(JJ)V

    .line 11
    new-instance p1, Ln3/y/b/a/q0/n$a;

    invoke-direct {p1, v6, v0}, Ln3/y/b/a/q0/n$a;-><init>(Ln3/y/b/a/q0/o;Ln3/y/b/a/q0/o;)V

    return-object p1

    .line 12
    :cond_1
    :goto_0
    new-instance p1, Ln3/y/b/a/q0/n$a;

    invoke-direct {p1, v6}, Ln3/y/b/a/q0/n$a;-><init>(Ln3/y/b/a/q0/o;)V

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/v/b$a;->a:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Ln3/y/b/a/x0/x;->d([JJZZ)I

    move-result p1

    .line 2
    iget-object p2, p0, Ln3/y/b/a/q0/v/b$a;->a:[J

    aget-wide p1, p2, p1

    iput-wide p1, p0, Ln3/y/b/a/q0/v/b$a;->d:J

    return-void
.end method

.method public g()J
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/v/b$a;->e:Ln3/y/b/a/q0/v/b;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/q0/v/b;->n:Ln3/y/b/a/x0/g;

    .line 3
    iget-wide v1, v0, Ln3/y/b/a/x0/g;->d:J

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    iget v0, v0, Ln3/y/b/a/x0/g;->a:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public h(Ln3/y/b/a/q0/d;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/q0/v/b$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    .line 2
    iput-wide v2, p0, Ln3/y/b/a/q0/v/b$a;->d:J

    return-wide v0

    :cond_0
    return-wide v2
.end method
