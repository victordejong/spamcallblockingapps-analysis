.class public Lw3/b/a/f0/w$a;
.super Lw3/b/a/h0/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/f0/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final c:Lw3/b/a/j;

.field public final d:Lw3/b/a/j;

.field public final e:Lw3/b/a/j;

.field public final synthetic f:Lw3/b/a/f0/w;


# direct methods
.method public constructor <init>(Lw3/b/a/f0/w;Lw3/b/a/c;Lw3/b/a/j;Lw3/b/a/j;Lw3/b/a/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    .line 2
    invoke-virtual {p2}, Lw3/b/a/c;->w()Lw3/b/a/d;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lw3/b/a/h0/d;-><init>(Lw3/b/a/c;Lw3/b/a/d;)V

    .line 3
    iput-object p3, p0, Lw3/b/a/f0/w$a;->c:Lw3/b/a/j;

    .line 4
    iput-object p4, p0, Lw3/b/a/f0/w$a;->d:Lw3/b/a/j;

    .line 5
    iput-object p5, p0, Lw3/b/a/f0/w$a;->e:Lw3/b/a/j;

    return-void
.end method


# virtual methods
.method public A(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->A(J)J

    move-result-wide p1

    .line 4
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const-string v1, "resulting"

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    return-wide p1
.end method

.method public B(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->B(J)J

    move-result-wide p1

    .line 4
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const-string v1, "resulting"

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    return-wide p1
.end method

.method public C(JI)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 4
    iget-object p3, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const-string v0, "resulting"

    invoke-virtual {p3, p1, p2, v0}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    return-wide p1
.end method

.method public D(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->D(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide p1

    .line 4
    iget-object p3, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const-string p4, "resulting"

    invoke-virtual {p3, p1, p2, p4}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    return-wide p1
.end method

.method public a(JI)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    .line 4
    iget-object p3, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const-string v0, "resulting"

    invoke-virtual {p3, p1, p2, v0}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    return-wide p1
.end method

.method public b(JJ)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->b(JJ)J

    move-result-wide p1

    .line 4
    iget-object p3, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const-string p4, "resulting"

    invoke-virtual {p3, p1, p2, p4}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    return-wide p1
.end method

.method public c(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1
.end method

.method public e(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->e(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->h(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(JJ)I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->j(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final l()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->c:Lw3/b/a/j;

    return-object v0
.end method

.method public final m()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->e:Lw3/b/a/j;

    return-object v0
.end method

.method public n(Ljava/util/Locale;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1}, Lw3/b/a/c;->n(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public p(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->p(J)I

    move-result p1

    return p1
.end method

.method public final v()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->d:Lw3/b/a/j;

    return-object v0
.end method

.method public x(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->x(J)Z

    move-result p1

    return p1
.end method

.method public z(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->z(J)J

    move-result-wide p1

    .line 4
    iget-object v0, p0, Lw3/b/a/f0/w$a;->f:Lw3/b/a/f0/w;

    const-string v1, "resulting"

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/f0/w;->Y(JLjava/lang/String;)V

    return-wide p1
.end method
