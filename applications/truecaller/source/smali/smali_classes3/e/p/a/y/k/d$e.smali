.class public final Le/p/a/y/k/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/k/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:Lv3/m;

.field public b:Z

.field public c:J

.field public final synthetic d:Le/p/a/y/k/d;


# direct methods
.method public constructor <init>(Le/p/a/y/k/d;JLe/p/a/y/k/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/k/d$e;->d:Le/p/a/y/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p4, Lv3/m;

    .line 3
    iget-object p1, p1, Le/p/a/y/k/d;->c:Lv3/g;

    .line 4
    invoke-interface {p1}, Lv3/z;->i()Lv3/c0;

    move-result-object p1

    invoke-direct {p4, p1}, Lv3/m;-><init>(Lv3/c0;)V

    iput-object p4, p0, Le/p/a/y/k/d$e;->a:Lv3/m;

    .line 5
    iput-wide p2, p0, Le/p/a/y/k/d$e;->c:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/p/a/y/k/d$e;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/p/a/y/k/d$e;->b:Z

    .line 3
    iget-wide v0, p0, Le/p/a/y/k/d$e;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/p/a/y/k/d$e;->d:Le/p/a/y/k/d;

    iget-object v1, p0, Le/p/a/y/k/d$e;->a:Lv3/m;

    invoke-static {v0, v1}, Le/p/a/y/k/d;->h(Le/p/a/y/k/d;Lv3/m;)V

    .line 5
    iget-object v0, p0, Le/p/a/y/k/d$e;->d:Le/p/a/y/k/d;

    const/4 v1, 0x3

    .line 6
    iput v1, v0, Le/p/a/y/k/d;->e:I

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/p/a/y/k/d$e;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/a/y/k/d$e;->d:Le/p/a/y/k/d;

    .line 3
    iget-object v0, v0, Le/p/a/y/k/d;->c:Lv3/g;

    .line 4
    invoke-interface {v0}, Lv3/g;->flush()V

    return-void
.end method

.method public h1(Lv3/f;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/p/a/y/k/d$e;->b:Z

    if-nez v0, :cond_1

    .line 2
    iget-wide v1, p1, Lv3/f;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 3
    invoke-static/range {v1 .. v6}, Le/p/a/y/i;->a(JJJ)V

    .line 4
    iget-wide v0, p0, Le/p/a/y/k/d$e;->c:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/p/a/y/k/d$e;->d:Le/p/a/y/k/d;

    .line 6
    iget-object v0, v0, Le/p/a/y/k/d;->c:Lv3/g;

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lv3/z;->h1(Lv3/f;J)V

    .line 8
    iget-wide v0, p0, Le/p/a/y/k/d$e;->c:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Le/p/a/y/k/d$e;->c:J

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "expected "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/p/a/y/k/d$e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/p/a/y/k/d$e;->a:Lv3/m;

    return-object v0
.end method
