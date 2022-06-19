.class public final Le/a/a/k/a/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/a/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/a/a/l$o;,
        Le/a/a/k/a/a/l$i;,
        Le/a/a/k/a/a/l$c;,
        Le/a/a/k/a/a/l$s;,
        Le/a/a/k/a/a/l$w;,
        Le/a/a/k/a/a/l$t;,
        Le/a/a/k/a/a/l$h;,
        Le/a/a/k/a/a/l$q;,
        Le/a/a/k/a/a/l$v;,
        Le/a/a/k/a/a/l$r;,
        Le/a/a/k/a/a/l$j;,
        Le/a/a/k/a/a/l$b;,
        Le/a/a/k/a/a/l$f;,
        Le/a/a/k/a/a/l$p;,
        Le/a/a/k/a/a/l$u;,
        Le/a/a/k/a/a/l$d;,
        Le/a/a/k/a/a/l$x;,
        Le/a/a/k/a/a/l$m;,
        Le/a/a/k/a/a/l$l;,
        Le/a/a/k/a/a/l$n;,
        Le/a/a/k/a/a/l$k;,
        Le/a/a/k/a/a/l$g;,
        Le/a/a/k/a/a/l$e;
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
    iput-object p1, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$h;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/k/a/a/l$h;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/a/k/a/a/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$n;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/k/a/a/l$n;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/a/k/a/a/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public c(Ljava/lang/String;Lcom/truecaller/data/entity/messaging/Participant;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$u;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/k/a/a/l$u;-><init>(Le/a/r2/e;Ljava/lang/String;Lcom/truecaller/data/entity/messaging/Participant;Le/a/a/k/a/a/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public d(ZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$w;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/k/a/a/l$w;-><init>(Le/a/r2/e;ZZLe/a/a/k/a/a/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public e(Ljava/lang/String;)Le/a/r2/x;
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
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/k/a/a/l$b;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/a/k/a/a/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/util/List;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$d;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/k/a/a/l$d;-><init>(Le/a/r2/e;Ljava/lang/String;Ljava/util/List;Le/a/a/k/a/a/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public g(Ljava/lang/String;Z)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$f;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/k/a/a/l$f;-><init>(Le/a/r2/e;Ljava/lang/String;ZLe/a/a/k/a/a/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$r;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/k/a/a/l$r;-><init>(Le/a/r2/e;Ljava/lang/String;Ljava/lang/String;Le/a/a/k/a/a/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public i()Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$o;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/k/a/a/l$o;-><init>(Le/a/r2/e;Le/a/a/k/a/a/l$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;I)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/k/a/a/l$x;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/k/a/a/l$x;-><init>(Le/a/r2/e;Ljava/lang/String;Ljava/lang/String;ILe/a/a/k/a/a/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public k(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$q;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/k/a/a/l$q;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/a/k/a/a/l$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public l(Ljava/lang/String;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$m;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/k/a/a/l$m;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/a/k/a/a/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public m()Le/a/r2/x;
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
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$t;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/k/a/a/l$t;-><init>(Le/a/r2/e;Le/a/a/k/a/a/l$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public n(Ljava/lang/String;J)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Le/a/r2/x<",
            "Ls1/k<",
            "Ljava/util/List<",
            "Le/a/a/g/l0/b;",
            ">;",
            "Ljava/util/List<",
            "Le/a/a/g/l0/b;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/k/a/a/l$l;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Le/a/a/k/a/a/l$l;-><init>(Le/a/r2/e;Ljava/lang/String;JLe/a/a/k/a/a/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public o(Ljava/lang/String;I)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$v;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/k/a/a/l$v;-><init>(Le/a/r2/e;Ljava/lang/String;ILe/a/a/k/a/a/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public p()Le/a/r2/x;
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
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/k/a/a/l$c;-><init>(Le/a/r2/e;Le/a/a/k/a/a/l$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public q(Ljava/lang/String;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Le/a/a/k/a/a/o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$k;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/k/a/a/l$k;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/a/k/a/a/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/k/a/a/l$g;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/k/a/a/l$g;-><init>(Le/a/r2/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/a/k/a/a/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public s(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/k/a/a/l$e;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/k/a/a/l$e;-><init>(Le/a/r2/e;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Le/a/a/k/a/a/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Le/a/a/k/a/a/o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$i;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/k/a/a/l$i;-><init>(Le/a/r2/e;Ljava/lang/String;Ljava/lang/String;Le/a/a/k/a/a/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public u()Le/a/r2/x;
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
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$s;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/k/a/a/l$s;-><init>(Le/a/r2/e;Le/a/a/k/a/a/l$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public v(Ljava/lang/String;Z)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$p;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/a/k/a/a/l$p;-><init>(Le/a/r2/e;Ljava/lang/String;ZLe/a/a/k/a/a/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public w(Ljava/lang/String;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/ImGroupInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/l;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/a/l$j;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/k/a/a/l$j;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/a/k/a/a/l$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method
