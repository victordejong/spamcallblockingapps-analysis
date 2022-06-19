.class public final Le/m/a/c/p1/h0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/h0/h;


# instance fields
.field public final a:J

.field public final b:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Le/m/a/c/p1/h0/l;",
            ">;"
        }
    .end annotation
.end field

.field public c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Le/m/a/c/p1/h0/t;->a:J

    .line 3
    new-instance p1, Ljava/util/TreeSet;

    sget-object p2, Le/m/a/c/p1/h0/b;->a:Le/m/a/c/p1/h0/b;

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Le/m/a/c/p1/h0/t;->b:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public a(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/h0/l;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/t;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2
    iget-wide v0, p0, Le/m/a/c/p1/h0/t;->c:J

    iget-wide v2, p2, Le/m/a/c/p1/h0/l;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Le/m/a/c/p1/h0/t;->c:J

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Le/m/a/c/p1/h0/t;->f(Le/m/a/c/p1/h0/c;J)V

    return-void
.end method

.method public b(Le/m/a/c/p1/h0/c;Ljava/lang/String;JJ)V
    .locals 0

    const-wide/16 p2, -0x1

    cmp-long p2, p5, p2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1, p5, p6}, Le/m/a/c/p1/h0/t;->f(Le/m/a/c/p1/h0/c;J)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/h0/l;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/m/a/c/p1/h0/t;->b:Ljava/util/TreeSet;

    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-wide v0, p0, Le/m/a/c/p1/h0/t;->c:J

    iget-wide p1, p2, Le/m/a/c/p1/h0/l;->c:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Le/m/a/c/p1/h0/t;->c:J

    return-void
.end method

.method public e(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/h0/l;Le/m/a/c/p1/h0/l;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/t;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-wide v0, p0, Le/m/a/c/p1/h0/t;->c:J

    iget-wide v2, p2, Le/m/a/c/p1/h0/l;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Le/m/a/c/p1/h0/t;->c:J

    .line 3
    invoke-virtual {p0, p1, p3}, Le/m/a/c/p1/h0/t;->a(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/h0/l;)V

    return-void
.end method

.method public final f(Le/m/a/c/p1/h0/c;J)V
    .locals 4

    .line 1
    :catch_0
    :goto_0
    iget-wide v0, p0, Le/m/a/c/p1/h0/t;->c:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Le/m/a/c/p1/h0/t;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Le/m/a/c/p1/h0/t;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/m/a/c/p1/h0/t;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/p1/h0/l;

    invoke-interface {p1, v0}, Le/m/a/c/p1/h0/c;->c(Le/m/a/c/p1/h0/l;)V
    :try_end_0
    .catch Le/m/a/c/p1/h0/c$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method
