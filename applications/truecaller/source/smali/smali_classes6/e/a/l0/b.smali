.class public final Le/a/l0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l0/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l0/b$r;,
        Le/a/l0/b$o;,
        Le/a/l0/b$h;,
        Le/a/l0/b$d0;,
        Le/a/l0/b$e0;,
        Le/a/l0/b$j;,
        Le/a/l0/b$q;,
        Le/a/l0/b$p;,
        Le/a/l0/b$x;,
        Le/a/l0/b$y;,
        Le/a/l0/b$a0;,
        Le/a/l0/b$z;,
        Le/a/l0/b$b0;,
        Le/a/l0/b$s;,
        Le/a/l0/b$u;,
        Le/a/l0/b$v;,
        Le/a/l0/b$l;,
        Le/a/l0/b$k;,
        Le/a/l0/b$t;,
        Le/a/l0/b$m;,
        Le/a/l0/b$n;,
        Le/a/l0/b$i;,
        Le/a/l0/b$w;,
        Le/a/l0/b$c0;,
        Le/a/l0/b$g;,
        Le/a/l0/b$e;,
        Le/a/l0/b$b;,
        Le/a/l0/b$c;,
        Le/a/l0/b$f;,
        Le/a/l0/b$d;
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
    iput-object p1, p0, Le/a/l0/b;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public A(Ljava/util/Set;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$x;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/b$x;-><init>(Le/a/r2/e;Ljava/util/Set;Le/a/l0/b$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public B(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$a0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/b$a0;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/l0/b$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public C(Lcom/truecaller/data/entity/HistoryEvent;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$e;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/b$e;-><init>(Le/a/r2/e;Lcom/truecaller/data/entity/HistoryEvent;Le/a/l0/b$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public D(Lcom/truecaller/data/entity/Contact;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$r;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/b$r;-><init>(Le/a/r2/e;Lcom/truecaller/data/entity/Contact;Le/a/l0/b$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$k;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/l0/b$k;-><init>(Le/a/r2/e;Ljava/lang/String;Ljava/lang/Integer;Le/a/l0/b$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public b(Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/Integer;",
            ")",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$l;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/l0/b$l;-><init>(Le/a/r2/e;Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;Le/a/l0/b$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public c(Ljava/util/List;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/b$c;-><init>(Le/a/r2/e;Ljava/util/List;Le/a/l0/b$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public d(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$g;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/b$g;-><init>(Le/a/r2/e;ILe/a/l0/b$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public e(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$z;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/l0/b$z;-><init>(Le/a/r2/e;JLe/a/l0/b$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public f(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/data/entity/Contact;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            "Lcom/truecaller/data/entity/Contact;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$f;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/l0/b$f;-><init>(Le/a/r2/e;Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/data/entity/Contact;Le/a/l0/b$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public g(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$b0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/l0/b$b0;-><init>(Le/a/r2/e;JLe/a/l0/b$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public h(Ljava/lang/String;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$p;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/b$p;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/l0/b$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public i(Le/a/l0/v/a$a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$d0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/b$d0;-><init>(Le/a/r2/e;Le/a/l0/v/a$a;Le/a/l0/b$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public j(Lcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/callhistory/data/FilterType;",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Le/a/r2/x<",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v7, Le/a/l0/b$m;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/l0/b$m;-><init>(Le/a/r2/e;Lcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;Le/a/l0/b$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public k(Ljava/lang/String;JJLcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)Le/a/r2/x;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;",
            ")",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v11, Le/a/l0/b$o;

    new-instance v3, Le/a/r2/e;

    invoke-direct {v3}, Le/a/r2/e;-><init>()V

    const/4 v10, 0x0

    move-object v2, v11

    move-object v4, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Le/a/l0/b$o;-><init>(Le/a/r2/e;Ljava/lang/String;JJLcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;Le/a/l0/b$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v1, v11}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public l()Le/a/r2/x;
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
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$s;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/l0/b$s;-><init>(Le/a/r2/e;Le/a/l0/b$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public m(Ljava/util/List;Ljava/util/List;Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v7, Le/a/l0/b$h;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/l0/b$h;-><init>(Le/a/r2/e;Ljava/util/List;Ljava/util/List;Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;Le/a/l0/b$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public n(Lcom/truecaller/data/entity/HistoryEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$d;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/b$d;-><init>(Le/a/r2/e;Lcom/truecaller/data/entity/HistoryEvent;Le/a/l0/b$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public o(Lcom/truecaller/data/entity/CallRecording;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/b$b;-><init>(Le/a/r2/e;Lcom/truecaller/data/entity/CallRecording;Le/a/l0/b$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public p()Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$i;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/l0/b$i;-><init>(Le/a/r2/e;Le/a/l0/b$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public q(I)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$w;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/b$w;-><init>(Le/a/r2/e;ILe/a/l0/b$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public r(Ljava/lang/String;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$q;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/b$q;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/l0/b$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public s()Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$n;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/l0/b$n;-><init>(Le/a/r2/e;Le/a/l0/b$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public t()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$e0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/l0/b$e0;-><init>(Le/a/r2/e;Le/a/l0/b$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public u(J)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$u;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/l0/b$u;-><init>(Le/a/r2/e;JLe/a/l0/b$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public v(I)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$t;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/b$t;-><init>(Le/a/r2/e;ILe/a/l0/b$a;)V

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
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$j;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/b$j;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/l0/b$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public x(Ljava/util/Set;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$y;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l0/b$y;-><init>(Le/a/r2/e;Ljava/util/Set;Le/a/l0/b$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public y()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$c0;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/l0/b$c0;-><init>(Le/a/r2/e;Le/a/l0/b$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public z()Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l0/b;->a:Le/a/r2/w;

    new-instance v1, Le/a/l0/b$v;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/l0/b$v;-><init>(Le/a/r2/e;Le/a/l0/b$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method
