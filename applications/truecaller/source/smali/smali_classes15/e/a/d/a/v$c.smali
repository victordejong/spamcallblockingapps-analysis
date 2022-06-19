.class public final Le/a/d/a/v$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/a/v;->k(Le/a/d/v/h$b;)Lq3/a/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.debug.MockGroupCall$end$1"
    f = "MockGroupCall.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/a/v;

.field public final synthetic f:Le/a/d/v/h$b;


# direct methods
.method public constructor <init>(Le/a/d/a/v;Le/a/d/v/h$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/a/v$c;->e:Le/a/d/a/v;

    iput-object p2, p0, Le/a/d/a/v$c;->f:Le/a/d/v/h$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/a/v$c;

    iget-object v0, p0, Le/a/d/a/v$c;->e:Le/a/d/a/v;

    iget-object v1, p0, Le/a/d/a/v$c;->f:Le/a/d/v/h$b;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/a/v$c;-><init>(Le/a/d/a/v;Le/a/d/v/h$b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/a/v$c;->e:Le/a/d/a/v;

    iget-object v1, p0, Le/a/d/a/v$c;->f:Le/a/d/v/h$b;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/d/a/v;->c:Lq3/a/x2/a1;

    .line 5
    invoke-interface {p2, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 6
    iget-object p2, v0, Le/a/d/a/v;->f:Lq3/a/x2/a1;

    .line 7
    invoke-interface {p2}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/a/o;

    .line 9
    new-instance v3, Le/a/d/v/l/c$b$c;

    invoke-direct {v3, v1}, Le/a/d/v/l/c$b$c;-><init>(Le/a/d/v/h$b;)V

    invoke-virtual {v2, v3}, Le/a/d/a/o;->e(Le/a/d/v/l/c$b;)Lq3/a/p1;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, v0, Le/a/d/a/v;->i:Lq3/a/y;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    invoke-static {p2, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/a/v$c;->e:Le/a/d/a/v;

    .line 3
    iget-object p1, p1, Le/a/d/a/v;->c:Lq3/a/x2/a1;

    .line 4
    iget-object v0, p0, Le/a/d/a/v$c;->f:Le/a/d/v/h$b;

    invoke-interface {p1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Le/a/d/a/v$c;->e:Le/a/d/a/v;

    .line 6
    iget-object p1, p1, Le/a/d/a/v;->f:Lq3/a/x2/a1;

    .line 7
    invoke-interface {p1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/a/o;

    .line 9
    new-instance v1, Le/a/d/v/l/c$b$c;

    iget-object v2, p0, Le/a/d/a/v$c;->f:Le/a/d/v/h$b;

    invoke-direct {v1, v2}, Le/a/d/v/l/c$b$c;-><init>(Le/a/d/v/h$b;)V

    invoke-virtual {v0, v1}, Le/a/d/a/o;->e(Le/a/d/v/l/c$b;)Lq3/a/p1;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Le/a/d/a/v$c;->e:Le/a/d/a/v;

    .line 11
    iget-object p1, p1, Le/a/d/a/v;->i:Lq3/a/y;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12
    invoke-static {p1, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
