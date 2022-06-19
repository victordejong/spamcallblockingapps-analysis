.class public final Le/a/d/v/k/d$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/k/d;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/Boolean;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.groupcall.action.ChangeCallSettingImpl$listenToCallInterrupted$1$1"
    f = "ChangeCallSetting.kt"
    l = {
        0x88
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Z

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/d/v/k/d;


# direct methods
.method public constructor <init>(Le/a/d/v/k/d;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/d$a;->i:Le/a/d/v/k/d;

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

    new-instance v0, Le/a/d/v/k/d$a;

    iget-object v1, p0, Le/a/d/v/k/d$a;->i:Le/a/d/v/k/d;

    invoke-direct {v0, v1, p2}, Le/a/d/v/k/d$a;-><init>(Le/a/d/v/k/d;Ls1/w/d;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Le/a/d/v/k/d$a;->e:Z

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d/v/k/d$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d/v/k/d$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/v/k/d$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/v/k/d$a;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-boolean v0, p0, Le/a/d/v/k/d$a;->e:Z

    iget-object v1, p0, Le/a/d/v/k/d$a;->g:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    iget-object v4, p0, Le/a/d/v/k/d$a;->f:Ljava/lang/Object;

    check-cast v4, Le/a/d/c0/r;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-boolean p1, p0, Le/a/d/v/k/d$a;->e:Z

    .line 4
    iget-object v1, p0, Le/a/d/v/k/d$a;->i:Le/a/d/v/k/d;

    iget-object v1, v1, Le/a/d/v/k/d;->f:Le/a/d/v/k/b;

    .line 5
    iget-object v4, v1, Le/a/d/v/k/b;->a:Le/a/d/c0/r;

    .line 6
    iget-object v1, v4, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 7
    iput-object v4, p0, Le/a/d/v/k/d$a;->f:Ljava/lang/Object;

    iput-object v1, p0, Le/a/d/v/k/d$a;->g:Ljava/lang/Object;

    iput-boolean p1, p0, Le/a/d/v/k/d$a;->e:Z

    iput v3, p0, Le/a/d/v/k/d$a;->h:I

    invoke-interface {v1, v2, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_2

    return-object v0

    :cond_2
    move v0, p1

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object p1

    .line 9
    iget-object v4, p0, Le/a/d/v/k/d$a;->i:Le/a/d/v/k/d;

    iget-object v4, v4, Le/a/d/v/k/d;->f:Le/a/d/v/k/b;

    .line 10
    iget-object v4, v4, Le/a/d/v/k/b;->a:Le/a/d/c0/r;

    .line 11
    invoke-virtual {v4}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/v/a;

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    const/4 v0, 0x3

    invoke-static {v4, v5, v5, v3, v0}, Le/a/d/v/a;->a(Le/a/d/v/a;ZZZI)Le/a/d/v/a;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    .line 12
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-interface {v1, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v1, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
