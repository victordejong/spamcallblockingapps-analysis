.class public final Lw3/b/a/b;
.super Lw3/b/a/e0/e;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/x;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/b/a/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 9
    sget-object v0, Lw3/b/a/e;->a:Lw3/b/a/e$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 10
    invoke-static {}, Lw3/b/a/f0/t;->Y()Lw3/b/a/f0/t;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lw3/b/a/e0/e;-><init>(JLw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 6
    invoke-direct/range {v0 .. v7}, Lw3/b/a/e0/e;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 7
    invoke-direct/range {v0 .. v7}, Lw3/b/a/e0/e;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIIIILw3/b/a/a;)V
    .locals 0

    .line 8
    invoke-direct/range {p0 .. p8}, Lw3/b/a/e0/e;-><init>(IIIIIIILw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>(IIIIIILw3/b/a/g;)V
    .locals 9

    .line 3
    invoke-static/range {p7 .. p7}, Lw3/b/a/f0/t;->Z(Lw3/b/a/g;)Lw3/b/a/f0/t;

    move-result-object v8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lw3/b/a/e0/e;-><init>(IIIIIIILw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lw3/b/a/e0/e;-><init>(J)V

    return-void
.end method

.method public constructor <init>(JLw3/b/a/a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lw3/b/a/e0/e;-><init>(JLw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>(JLw3/b/a/g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lw3/b/a/e0/e;-><init>(JLw3/b/a/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lw3/b/a/e0/e;-><init>(Ljava/lang/Object;Lw3/b/a/a;)V

    return-void
.end method

.method public static B()Lw3/b/a/b;
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public A()Lw3/b/a/b$a;
    .locals 2

    .line 1
    new-instance v0, Lw3/b/a/b$a;

    .line 2
    iget-object v1, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 3
    invoke-virtual {v1}, Lw3/b/a/a;->E()Lw3/b/a/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lw3/b/a/b$a;-><init>(Lw3/b/a/b;Lw3/b/a/c;)V

    return-object v0
.end method

.method public C(J)Lw3/b/a/b;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lw3/b/a/b;->M(JI)Lw3/b/a/b;

    move-result-object p1

    return-object p1
.end method

.method public D(I)Lw3/b/a/b;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->j()Lw3/b/a/j;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/e0/e;->a:J

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/j;->a(JI)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object p1

    return-object p1
.end method

.method public E(I)Lw3/b/a/b;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->x()Lw3/b/a/j;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/e0/e;->a:J

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/j;->a(JI)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object p1

    return-object p1
.end method

.method public F(I)Lw3/b/a/b;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->y()Lw3/b/a/j;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/e0/e;->a:J

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/j;->a(JI)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object p1

    return-object p1
.end method

.method public G(I)Lw3/b/a/b;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->D()Lw3/b/a/j;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/e0/e;->a:J

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/j;->a(JI)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object p1

    return-object p1
.end method

.method public H(I)Lw3/b/a/b;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->F()Lw3/b/a/j;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/e0/e;->a:J

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/j;->a(JI)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object p1

    return-object p1
.end method

.method public J(I)Lw3/b/a/b;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->I()Lw3/b/a/j;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/e0/e;->a:J

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/j;->a(JI)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object p1

    return-object p1
.end method

.method public K(I)Lw3/b/a/b;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->M()Lw3/b/a/j;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/e0/e;->a:J

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/j;->a(JI)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object p1

    return-object p1
.end method

.method public L()Lw3/b/a/p;
    .locals 4

    .line 1
    new-instance v0, Lw3/b/a/p;

    .line 2
    iget-wide v1, p0, Lw3/b/a/e0/e;->a:J

    .line 3
    iget-object v3, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 4
    invoke-direct {v0, v1, v2, v3}, Lw3/b/a/p;-><init>(JLw3/b/a/a;)V

    return-object v0
.end method

.method public M(JI)Lw3/b/a/b;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 2
    iget-wide v2, p0, Lw3/b/a/e0/e;->a:J

    move-wide v4, p1

    move v6, p3

    .line 3
    invoke-virtual/range {v1 .. v6}, Lw3/b/a/a;->a(JJI)J

    move-result-wide p1

    .line 4
    invoke-virtual {p0, p1, p2}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public N(J)Lw3/b/a/b;
    .locals 2

    .line 1
    iget-wide v0, p0, Lw3/b/a/e0/e;->a:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lw3/b/a/b;

    .line 3
    iget-object v1, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lw3/b/a/b;-><init>(JLw3/b/a/a;)V

    :goto_0
    return-object v0
.end method

.method public O(I)Lw3/b/a/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->A()Lw3/b/a/c;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/e0/e;->a:J

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/c;->C(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object p1

    return-object p1
.end method

.method public P()Lw3/b/a/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v0

    invoke-virtual {p0}, Lw3/b/a/e0/c;->c()Lw3/b/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw3/b/a/p;->m(Lw3/b/a/g;)Lw3/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public Q()Lw3/b/a/b$a;
    .locals 2

    .line 1
    new-instance v0, Lw3/b/a/b$a;

    .line 2
    iget-object v1, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 3
    invoke-virtual {v1}, Lw3/b/a/a;->S()Lw3/b/a/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lw3/b/a/b$a;-><init>(Lw3/b/a/b;Lw3/b/a/c;)V

    return-object v0
.end method

.method public o()Lw3/b/a/b;
    .locals 0

    return-object p0
.end method

.method public y(I)Lw3/b/a/b;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->j()Lw3/b/a/j;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/e0/e;->a:J

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/j;->j(JI)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object p1

    return-object p1
.end method

.method public z(I)Lw3/b/a/b;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->F()Lw3/b/a/j;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/e0/e;->a:J

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/j;->j(JI)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object p1

    return-object p1
.end method
