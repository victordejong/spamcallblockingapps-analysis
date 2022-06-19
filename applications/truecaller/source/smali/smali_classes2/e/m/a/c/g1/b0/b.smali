.class public final Le/m/a/c/g1/b0/b;
.super Le/m/a/c/g1/d;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/b0/e;


# direct methods
.method public constructor <init>(JJLe/m/a/c/g1/o;)V
    .locals 7

    .line 1
    iget v5, p5, Le/m/a/c/g1/o;->f:I

    iget v6, p5, Le/m/a/c/g1/o;->c:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Le/m/a/c/g1/d;-><init>(JJII)V

    return-void
.end method


# virtual methods
.method public e()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public f(J)J
    .locals 3

    .line 1
    iget-wide v0, p0, Le/m/a/c/g1/d;->b:J

    iget v2, p0, Le/m/a/c/g1/d;->e:I

    invoke-static {p1, p2, v0, v1, v2}, Le/m/a/c/g1/d;->d(JJI)J

    move-result-wide p1

    return-wide p1
.end method
