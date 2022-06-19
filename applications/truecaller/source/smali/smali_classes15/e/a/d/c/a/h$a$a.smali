.class public final Le/a/d/c/a/h$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/a/h$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/util/Set<",
        "+",
        "Le/a/d/c0/z1/e;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.ui.util.LogPriorityVoipCallEventImpl$startLogging$1$1"
    f = "LogPriorityVoipCallEvent.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/d/c/a/h$a;


# direct methods
.method public constructor <init>(Le/a/d/c/a/h$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a/h$a$a;->f:Le/a/d/c/a/h$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/c/a/h$a$a;

    iget-object v1, p0, Le/a/d/c/a/h$a$a;->f:Le/a/d/c/a/h$a;

    invoke-direct {v0, v1, p2}, Le/a/d/c/a/h$a$a;-><init>(Le/a/d/c/a/h$a;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/c/a/h$a$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/d/c/a/h$a$a;->f:Le/a/d/c/a/h$a;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/Set;

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/c0/z1/e;

    .line 5
    iget-object v3, v1, Le/a/d/c/a/h$a;->f:Le/a/d/c/a/h;

    .line 6
    iget-object v2, v2, Le/a/d/c0/z1/e;->b:Lq3/a/x2/i1;

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v6, Le/a/d/c/a/g;

    const/4 v5, 0x0

    invoke-direct {v6, v3, v2, v4, v5}, Le/a/d/c/a/g;-><init>(Le/a/d/c/a/h;Lq3/a/x2/i1;ILs1/w/d;)V

    const/4 v2, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v4, v5

    move-object v5, v2

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/c/a/h$a$a;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/z1/e;

    .line 3
    iget-object v2, p0, Le/a/d/c/a/h$a$a;->f:Le/a/d/c/a/h$a;

    iget-object v3, v2, Le/a/d/c/a/h$a;->f:Le/a/d/c/a/h;

    .line 4
    iget-object v1, v1, Le/a/d/c0/z1/e;->b:Lq3/a/x2/i1;

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v6, Le/a/d/c/a/g;

    const/4 v4, 0x0

    invoke-direct {v6, v3, v1, v2, v4}, Le/a/d/c/a/g;-><init>(Le/a/d/c/a/h;Lq3/a/x2/i1;ILs1/w/d;)V

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
