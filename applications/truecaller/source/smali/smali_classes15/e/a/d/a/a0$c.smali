.class public final Le/a/d/a/a0$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/a/a0;->e(Le/a/d/w/h$b;)Lq3/a/p1;
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
    c = "com.truecaller.voip.debug.MockInvitation$end$1"
    f = "MockInvitation.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/a/a0;

.field public final synthetic f:Le/a/d/w/h$b;


# direct methods
.method public constructor <init>(Le/a/d/a/a0;Le/a/d/w/h$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/a/a0$c;->e:Le/a/d/a/a0;

    iput-object p2, p0, Le/a/d/a/a0$c;->f:Le/a/d/w/h$b;

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

    new-instance p1, Le/a/d/a/a0$c;

    iget-object v0, p0, Le/a/d/a/a0$c;->e:Le/a/d/a/a0;

    iget-object v1, p0, Le/a/d/a/a0$c;->f:Le/a/d/w/h$b;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/a/a0$c;-><init>(Le/a/d/a/a0;Le/a/d/w/h$b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/a/a0$c;->e:Le/a/d/a/a0;

    iget-object v1, p0, Le/a/d/a/a0$c;->f:Le/a/d/w/h$b;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/d/a/a0;->c:Lq3/a/x2/a1;

    .line 5
    invoke-interface {p2, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 6
    iget-object p2, v0, Le/a/d/a/a0;->e:Lq3/a/y;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-static {p2, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/a/a0$c;->e:Le/a/d/a/a0;

    .line 3
    iget-object p1, p1, Le/a/d/a/a0;->c:Lq3/a/x2/a1;

    .line 4
    iget-object v0, p0, Le/a/d/a/a0$c;->f:Le/a/d/w/h$b;

    invoke-interface {p1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Le/a/d/a/a0$c;->e:Le/a/d/a/a0;

    .line 6
    iget-object p1, p1, Le/a/d/a/a0;->e:Lq3/a/y;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
