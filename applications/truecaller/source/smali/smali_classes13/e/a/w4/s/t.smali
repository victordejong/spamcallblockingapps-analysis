.class public Le/a/w4/s/t;
.super Le/a/w4/s/w;
.source "SourceFile"


# instance fields
.field public final i:Le/a/p5/c0;

.field public final j:Le/a/i/f0/j/c;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/i/f0/j/c;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Le/a/w4/s/w;-><init>(I)V

    .line 2
    iput-object p1, p0, Le/a/w4/s/t;->i:Le/a/p5/c0;

    .line 3
    iput-object p2, p0, Le/a/w4/s/t;->j:Le/a/i/f0/j/c;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Le/a/w4/s/w;->o(I)V

    return-void
.end method


# virtual methods
.method public b(Le/a/e/c2/t$b;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/w4/s/w;->d:Le/a/w4/s/e0;

    check-cast p1, Le/a/w4/s/u;

    iget-object v1, p0, Le/a/w4/s/t;->j:Le/a/i/f0/j/c;

    const-string v2, "numberOrNameSearchAdUnitId"

    invoke-interface {v1, v2}, Le/a/i/f0/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Le/a/w4/s/e0;->M8(Le/a/w4/s/u;ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()I
    .locals 1

    const v0, 0x7f0a08a1

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/w4/s/t;->i:Le/a/p5/c0;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f120be2

    invoke-interface {v0, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
