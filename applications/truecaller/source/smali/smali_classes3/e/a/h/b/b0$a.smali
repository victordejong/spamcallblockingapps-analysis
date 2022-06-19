.class public final Le/a/h/b/b0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/b0;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/h/b/d/b/c$b;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.DialerPresenter$listenToCallLogUpdates$1$1"
    f = "DialerPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/h/b/b0;


# direct methods
.method public constructor <init>(Le/a/h/b/b0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/b0$a;->f:Le/a/h/b/b0;

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

    new-instance v0, Le/a/h/b/b0$a;

    iget-object v1, p0, Le/a/h/b/b0$a;->f:Le/a/h/b/b0;

    invoke-direct {v0, v1, p2}, Le/a/h/b/b0$a;-><init>(Le/a/h/b/b0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/h/b/b0$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/h/b/b0$a;->f:Le/a/h/b/b0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Le/a/h/b/d/b/c$b;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialer call log updated with result: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    iget-object p2, v1, Le/a/h/b/b0;->f:Le/a/h/b/y;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p2, Le/a/h/b/y;->E:Z

    .line 7
    instance-of v1, p1, Le/a/h/b/d/b/c$b$c;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Le/a/h/b/d/b/c$b$c;

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p1, Le/a/h/b/d/b/c$b$c;->a:Ljava/util/List;

    .line 9
    invoke-static {p2, p1}, Le/a/h/b/y;->Ij(Le/a/h/b/y;Ljava/util/List;)V

    :cond_1
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/h/b/b0$a;->e:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/d/b/c$b;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dialer call log updated with result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    iget-object v0, p0, Le/a/h/b/b0$a;->f:Le/a/h/b/b0;

    iget-object v0, v0, Le/a/h/b/b0;->f:Le/a/h/b/y;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Le/a/h/b/y;->E:Z

    .line 5
    instance-of v1, p1, Le/a/h/b/d/b/c$b$c;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Le/a/h/b/d/b/c$b$c;

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p1, Le/a/h/b/d/b/c$b$c;->a:Ljava/util/List;

    .line 7
    invoke-static {v0, p1}, Le/a/h/b/y;->Ij(Le/a/h/b/y;Ljava/util/List;)V

    .line 8
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
