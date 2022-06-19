.class public Lw3/b/a/f0/w$b;
.super Lw3/b/a/h0/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/f0/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic c:Lw3/b/a/f0/w;


# direct methods
.method public constructor <init>(Lw3/b/a/f0/w;Lw3/b/a/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw3/b/a/f0/w$b;->c:Lw3/b/a/f0/w;

    .line 2
    invoke-virtual {p2}, Lw3/b/a/j;->f()Lw3/b/a/k;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lw3/b/a/h0/e;-><init>(Lw3/b/a/j;Lw3/b/a/k;)V

    return-void
.end method


# virtual methods
.method public a(JI)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$b;->c:Lw3/b/a/f0/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/e;->b:Lw3/b/a/j;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/j;->a(JI)J

    move-result-wide p1

    .line 4
    iget-object p3, p0, Lw3/b/a/f0/w$b;->c:Lw3/b/a/f0/w;

    const-string v0, "resulting"

    invoke-virtual {p3, p1, p2, v0}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    return-wide p1
.end method

.method public c(JJ)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$b;->c:Lw3/b/a/f0/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/e;->b:Lw3/b/a/j;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/j;->c(JJ)J

    move-result-wide p1

    .line 4
    iget-object p3, p0, Lw3/b/a/f0/w$b;->c:Lw3/b/a/f0/w;

    const-string p4, "resulting"

    invoke-virtual {p3, p1, p2, p4}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    return-wide p1
.end method

.method public d(JJ)I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$b;->c:Lw3/b/a/f0/w;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/w$b;->c:Lw3/b/a/f0/w;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lw3/b/a/h0/e;->b:Lw3/b/a/j;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/j;->d(JJ)I

    move-result p1

    return p1
.end method

.method public e(JJ)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$b;->c:Lw3/b/a/f0/w;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/w$b;->c:Lw3/b/a/f0/w;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lw3/b/a/h0/e;->b:Lw3/b/a/j;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/j;->e(JJ)J

    move-result-wide p1

    return-wide p1
.end method
