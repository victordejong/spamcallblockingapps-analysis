.class public abstract Le/a/a/k/z/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/z/d;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Le/a/a/w0/a;


# direct methods
.method public constructor <init>(Lo3/a;Le/a/a/w0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Le/a/a/w0/a;",
            ")V"
        }
    .end annotation

    const-string v0, "storage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesMonitor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/z/a;->a:Lo3/a;

    iput-object p2, p0, Le/a/a/k/z/a;->b:Le/a/a/w0/a;

    return-void
.end method


# virtual methods
.method public final a(Le/a/a/k/o;Lcom/truecaller/messaging/data/types/Message;Le/a/a/k/q;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/o;",
            "Lcom/truecaller/messaging/data/types/Message;",
            "Le/a/a/k/q<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/a/k/o$d;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_3

    .line 2
    iget-object v0, p0, Le/a/a/k/z/a;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    .line 3
    invoke-interface {p3}, Le/a/a/k/q;->getType()I

    move-result v1

    iget-object v2, p2, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    iget-object v3, p2, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    const-string v4, "message.sendScheduleDate"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-wide v3, v3, Lw3/b/a/e0/e;->a:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-interface {v0, v1, v2, v3}, Le/a/a/g/m;->d(ILw3/b/a/b;Z)V

    goto :goto_2

    .line 6
    :cond_1
    instance-of v0, p1, Le/a/a/k/o$b;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    instance-of v0, p1, Le/a/a/k/o$a;

    if-eqz v0, :cond_5

    .line 8
    :goto_1
    iget-object v0, p0, Le/a/a/k/z/a;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    .line 9
    invoke-interface {v0, p2}, Le/a/a/g/m;->x(Lcom/truecaller/messaging/data/types/Message;)Le/a/r2/x;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Le/a/r2/x;->g()V

    .line 11
    :cond_3
    :goto_2
    iget-object v0, p0, Le/a/a/k/z/a;->b:Le/a/a/w0/a;

    if-eqz p3, :cond_4

    invoke-interface {p3}, Le/a/a/k/q;->getType()I

    move-result p3

    goto :goto_3

    :cond_4
    const/4 p3, 0x3

    :goto_3
    invoke-interface {v0, p1, p2, p3}, Le/a/a/w0/a;->b(Le/a/a/k/o;Lcom/truecaller/messaging/data/types/Message;I)V

    return-void

    .line 12
    :cond_5
    instance-of p3, p1, Le/a/a/k/o$c;

    if-eqz p3, :cond_6

    .line 13
    iget-object p3, p0, Le/a/a/k/z/a;->a:Lo3/a;

    invoke-interface {p3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/r2/f;

    invoke-interface {p3}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/a/g/m;

    .line 14
    check-cast p1, Le/a/a/k/o$c;

    .line 15
    iget-object v0, p1, Le/a/a/k/o$c;->a:Lw3/b/a/b;

    .line 16
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 17
    iget-boolean p1, p1, Le/a/a/k/o$c;->b:Z

    .line 18
    invoke-interface {p3, p2, v0, v1, p1}, Le/a/a/g/m;->J(Lcom/truecaller/messaging/data/types/Message;JZ)Le/a/r2/x;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Le/a/r2/x;->g()V

    return-void

    .line 20
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected result "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
