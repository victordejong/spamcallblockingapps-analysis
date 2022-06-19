.class public final Le/a/a/g/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/g/l$y0;,
        Le/a/a/g/l$e0;,
        Le/a/a/g/l$x0;,
        Le/a/a/g/l$g0;,
        Le/a/a/g/l$i1;,
        Le/a/a/g/l$p;,
        Le/a/a/g/l$b1;,
        Le/a/a/g/l$q0;,
        Le/a/a/g/l$l;,
        Le/a/a/g/l$e1;,
        Le/a/a/g/l$f;,
        Le/a/a/g/l$q;,
        Le/a/a/g/l$v0;,
        Le/a/a/g/l$s0;,
        Le/a/a/g/l$b0;,
        Le/a/a/g/l$m;,
        Le/a/a/g/l$c1;,
        Le/a/a/g/l$t;,
        Le/a/a/g/l$r;,
        Le/a/a/g/l$p0;,
        Le/a/a/g/l$d1;,
        Le/a/a/g/l$t0;,
        Le/a/a/g/l$w0;,
        Le/a/a/g/l$f1;,
        Le/a/a/g/l$o;,
        Le/a/a/g/l$r0;,
        Le/a/a/g/l$n;,
        Le/a/a/g/l$b;,
        Le/a/a/g/l$c;,
        Le/a/a/g/l$h;,
        Le/a/a/g/l$g;,
        Le/a/a/g/l$i;,
        Le/a/a/g/l$k;,
        Le/a/a/g/l$j;,
        Le/a/a/g/l$f0;,
        Le/a/a/g/l$c0;,
        Le/a/a/g/l$d0;,
        Le/a/a/g/l$a0;,
        Le/a/a/g/l$d;,
        Le/a/a/g/l$o0;,
        Le/a/a/g/l$w;,
        Le/a/a/g/l$u;,
        Le/a/a/g/l$z;,
        Le/a/a/g/l$x;,
        Le/a/a/g/l$y;,
        Le/a/a/g/l$a1;,
        Le/a/a/g/l$e;,
        Le/a/a/g/l$g1;,
        Le/a/a/g/l$h1;,
        Le/a/a/g/l$v;,
        Le/a/a/g/l$s;,
        Le/a/a/g/l$u0;,
        Le/a/a/g/l$h0;,
        Le/a/a/g/l$k0;,
        Le/a/a/g/l$m0;,
        Le/a/a/g/l$l0;,
        Le/a/a/g/l$n0;,
        Le/a/a/g/l$i0;,
        Le/a/a/g/l$j0;,
        Le/a/a/g/l$z0;
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/w;


# direct methods
.method public constructor <init>(Le/a/r2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public A(J)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$l;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$l;-><init>(Le/a/r2/e;JLe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public B(Lcom/truecaller/messaging/data/types/Draft;Ljava/lang/String;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Draft;",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Draft;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$u0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$u0;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Draft;Ljava/lang/String;Le/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public C([Lcom/truecaller/messaging/data/types/Conversation;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$z;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/g/l$z;-><init>(Le/a/r2/e;[Lcom/truecaller/messaging/data/types/Conversation;Le/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public D(Lcom/truecaller/messaging/data/types/Message;J)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "J)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/g/l$d1;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Le/a/a/g/l$d1;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;JLe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public E(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$e0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/g/l$e0;-><init>(Le/a/r2/e;Ljava/util/List;Le/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public F([Lcom/truecaller/messaging/data/types/Message;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$h1;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$h1;-><init>(Le/a/r2/e;[Lcom/truecaller/messaging/data/types/Message;ILe/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public G()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$g0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/g/l$g0;-><init>(Le/a/r2/e;Le/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public H(JI)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/g/l$q;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/g/l$q;-><init>(Le/a/r2/e;JILe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public I(J)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$s;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$s;-><init>(Le/a/r2/e;JLe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public J(Lcom/truecaller/messaging/data/types/Message;JZ)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "JZ)",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v8, Le/a/a/g/l$t0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Le/a/a/g/l$t0;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;JZLe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v8}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public K(ZLjava/util/List;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Le/a/r2/x<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$i;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$i;-><init>(Le/a/r2/e;ZLjava/util/List;Le/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public L(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$a0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$a0;-><init>(Le/a/r2/e;JLe/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public M([JLjava/lang/String;Z)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/lang/String;",
            "Z)",
            "Le/a/r2/x<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/g/l$y;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/g/l$y;-><init>(Le/a/r2/e;[JLjava/lang/String;ZLe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public N(Lw3/b/a/b;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/b/a/b;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$o;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/g/l$o;-><init>(Le/a/r2/e;Lw3/b/a/b;Le/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public O([Lcom/truecaller/messaging/data/types/Message;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$g1;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$g1;-><init>(Le/a/r2/e;[Lcom/truecaller/messaging/data/types/Message;ILe/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public P(Le/a/a/g/z;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$k0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$k0;-><init>(Le/a/r2/e;Le/a/a/g/z;ILe/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public Q(J)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/r2/x<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$j;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$j;-><init>(Le/a/r2/e;JLe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public R([Lcom/truecaller/messaging/data/types/Conversation;Z)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Z)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$o0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$o0;-><init>(Le/a/r2/e;[Lcom/truecaller/messaging/data/types/Conversation;ZLe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public S(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$y0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$y0;-><init>(Le/a/r2/e;JLe/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public T(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$n0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/g/l$n0;-><init>(Le/a/r2/e;ZLe/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public U(Ljava/lang/String;ZZ[J[J)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v9, Le/a/a/g/l$c0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v8, 0x0

    move-object v1, v9

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Le/a/a/g/l$c0;-><init>(Le/a/r2/e;Ljava/lang/String;ZZ[J[JLe/a/a/g/l$a;)V

    invoke-interface {v0, v9}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public V(ZLjava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$i0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$i0;-><init>(Le/a/r2/e;ZLjava/util/Set;Le/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public W(Ljava/lang/String;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$m;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/g/l$m;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public X(Lcom/truecaller/messaging/data/types/Message;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Draft;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$r0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/g/l$r0;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;Le/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public Y(Lcom/truecaller/messaging/data/types/Message;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/g/l$b;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;Le/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public Z([Lcom/truecaller/messaging/data/types/Conversation;Ljava/lang/Long;Ljava/lang/String;)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/g/l$x;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/g/l$x;-><init>(Le/a/r2/e;[Lcom/truecaller/messaging/data/types/Conversation;Ljava/lang/Long;Ljava/lang/String;Le/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public a(Lcom/truecaller/messaging/data/types/Message;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$n;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/g/l$n;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;Le/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public a0(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$t;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$t;-><init>(Le/a/r2/e;JLe/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$j0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/g/l$j0;-><init>(Le/a/r2/e;ZLe/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public b0()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$s0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/g/l$s0;-><init>(Le/a/r2/e;Le/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public c(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;I)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "[",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "I)",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/g/l$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/g/l$c;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;ILe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public c0(JII)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v8, Le/a/a/g/l$w;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v7, 0x0

    move-object v1, v8

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Le/a/a/g/l$w;-><init>(Le/a/r2/e;JIILe/a/a/g/l$a;)V

    invoke-interface {v0, v8}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public d(ILw3/b/a/b;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/g/l$m0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/g/l$m0;-><init>(Le/a/r2/e;ILw3/b/a/b;ZLe/a/a/g/l$a;)V

    invoke-interface {v0, v7}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public d0(Lcom/truecaller/messaging/data/types/Message;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$z0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$z0;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;ZLe/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public e()Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$i1;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/g/l$i1;-><init>(Le/a/r2/e;Le/a/a/g/l$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public e0()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$a1;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/g/l$a1;-><init>(Le/a/r2/e;Le/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public f([Lcom/truecaller/messaging/data/types/Conversation;Z)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Z)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$d;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$d;-><init>(Le/a/r2/e;[Lcom/truecaller/messaging/data/types/Conversation;ZLe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public f0()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$e;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/g/l$e;-><init>(Le/a/r2/e;Le/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$f0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/g/l$f0;-><init>(Le/a/r2/e;Le/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public g0([J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$d0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/g/l$d0;-><init>(Le/a/r2/e;[JLe/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public h(J)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$q0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$q0;-><init>(Le/a/r2/e;JLe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public h0(JIIZLjava/lang/String;)V
    .locals 12

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v11, Le/a/a/g/l$v;

    new-instance v3, Le/a/r2/e;

    invoke-direct {v3}, Le/a/r2/e;-><init>()V

    const/4 v10, 0x0

    move-object v2, v11

    move-wide v4, p1

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Le/a/a/g/l$v;-><init>(Le/a/r2/e;JIIZLjava/lang/String;Le/a/a/g/l$a;)V

    invoke-interface {v1, v11}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$h0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/g/l$h0;-><init>(Le/a/r2/e;Le/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public j([Lcom/truecaller/messaging/data/types/Conversation;Z)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Z)",
            "Le/a/r2/x<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$h;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$h;-><init>(Le/a/r2/e;[Lcom/truecaller/messaging/data/types/Conversation;ZLe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public k(ZLjava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$l0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$l0;-><init>(Le/a/r2/e;ZLjava/util/Set;Le/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public l(JLandroid/content/ContentValues;)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/ContentValues;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/g/l$c1;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/g/l$c1;-><init>(Le/a/r2/e;JLandroid/content/ContentValues;Le/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public m(Lw3/b/a/b;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/b/a/b;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$r;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/g/l$r;-><init>(Le/a/r2/e;Lw3/b/a/b;Le/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public n([JZ)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZ)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$b0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$b0;-><init>(Le/a/r2/e;[JZLe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public o(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$x0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$x0;-><init>(Le/a/r2/e;JLe/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public p(ILw3/b/a/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$w0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$w0;-><init>(Le/a/r2/e;ILw3/b/a/b;Le/a/a/g/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public q(JI)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/g/l$b1;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/g/l$b1;-><init>(Le/a/r2/e;JILe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public r(Ljava/util/ArrayList;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$p;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/g/l$p;-><init>(Le/a/r2/e;Ljava/util/ArrayList;Le/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public s(J[JLjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v8, Le/a/a/g/l$u;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v7, 0x0

    move-object v1, v8

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Le/a/a/g/l$u;-><init>(Le/a/r2/e;J[JLjava/lang/String;Le/a/a/g/l$a;)V

    invoke-interface {v0, v8}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public t(JIIZZ)Le/a/r2/x;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIIZZ)",
            "Le/a/r2/x<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v11, Le/a/a/g/l$g;

    new-instance v3, Le/a/r2/e;

    invoke-direct {v3}, Le/a/r2/e;-><init>()V

    const/4 v10, 0x0

    move-object v2, v11

    move-wide v4, p1

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Le/a/a/g/l$g;-><init>(Le/a/r2/e;JIIZZLe/a/a/g/l$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v1, v11}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public u(JJ)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v8, Le/a/a/g/l$e1;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v7, 0x0

    move-object v1, v8

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Le/a/a/g/l$e1;-><init>(Le/a/r2/e;JJLe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v8}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public v(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;J)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "[",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "J)",
            "Le/a/r2/x<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v8, Le/a/a/g/l$v0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Le/a/a/g/l$v0;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;JLe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v8}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public w(Lcom/truecaller/messaging/data/types/Message;ILjava/lang/String;)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/g/l$p0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/g/l$p0;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;ILjava/lang/String;Le/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public x(Lcom/truecaller/messaging/data/types/Message;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$f1;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/g/l$f1;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;Le/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public y(J)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$f;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$f;-><init>(Le/a/r2/e;JLe/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public z(ZLjava/util/List;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;)",
            "Le/a/r2/x<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/g/l$k;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/g/l$k;-><init>(Le/a/r2/e;ZLjava/util/List;Le/a/a/g/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method
