.class public Le/a/w4/s/m0;
.super Le/a/w4/s/w;
.source "SourceFile"


# instance fields
.field public final i:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Le/a/w4/s/w;-><init>(I)V

    .line 2
    iput-object p1, p0, Le/a/w4/s/m0;->i:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public b(Le/a/e/c2/t$b;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/w;->d:Le/a/w4/s/e0;

    check-cast p1, Le/a/w4/s/r0$a;

    invoke-interface {v0, p1, p2}, Le/a/w4/s/e0;->tj(Le/a/w4/s/r0$a;I)Z

    move-result p1

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

    const v0, 0x7f0a08a3

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/w4/s/m0;->i:Le/a/p5/c0;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f120be4

    invoke-interface {v0, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 1

    const v0, 0x7f0a08ac

    return v0
.end method
