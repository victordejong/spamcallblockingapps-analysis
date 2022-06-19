.class public final Ln3/y/b/a/q0/t/a;
.super Ln3/y/b/a/q0/c;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/t/c$a;


# direct methods
.method public constructor <init>(JJLn3/y/b/a/q0/l;)V
    .locals 7

    .line 1
    iget v5, p5, Ln3/y/b/a/q0/l;->f:I

    iget v6, p5, Ln3/y/b/a/q0/l;->c:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Ln3/y/b/a/q0/c;-><init>(JJII)V

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
    iget-wide v0, p0, Ln3/y/b/a/q0/c;->b:J

    iget v2, p0, Ln3/y/b/a/q0/c;->e:I

    invoke-static {p1, p2, v0, v1, v2}, Ln3/y/b/a/q0/c;->d(JJI)J

    move-result-wide p1

    return-wide p1
.end method
