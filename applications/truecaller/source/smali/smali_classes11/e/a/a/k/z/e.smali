.class public final Le/a/a/k/z/e;
.super Le/a/a/k/z/a;
.source "SourceFile"


# instance fields
.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/k/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Le/a/a/w0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/a/k/t;",
            ">;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Le/a/a/w0/a;",
            ")V"
        }
    .end annotation

    const-string v0, "transportManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesMonitor"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p3}, Le/a/a/k/z/a;-><init>(Lo3/a;Le/a/a/w0/a;)V

    iput-object p1, p0, Le/a/a/k/z/e;->c:Lo3/a;

    return-void
.end method


# virtual methods
.method public b(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 5

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/a/k/z/e;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/t;

    iget v1, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/a/k/t;->w(ILe/a/a/k/q;)Le/a/a/k/q;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Le/a/a/k/q;->b(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/o;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Le/a/a/k/o$b;

    const-string v2, "INTERNAL_CLIENT"

    invoke-direct {v1, v2}, Le/a/a/k/o$b;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v2, "transport?.sendMessage(m\u2026t.Failed(REASON_INTERNAL)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v2, v1, Le/a/a/k/o$e;

    if-eqz v2, :cond_2

    .line 5
    check-cast v1, Le/a/a/k/o$e;

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Le/a/a/k/o$e;->a(JLjava/util/concurrent/TimeUnit;)Le/a/a/k/o;

    move-result-object v1

    .line 6
    :cond_2
    invoke-virtual {p0, v1, p1, v0}, Le/a/a/k/z/a;->a(Le/a/a/k/o;Lcom/truecaller/messaging/data/types/Message;Le/a/a/k/q;)V

    return-void
.end method
