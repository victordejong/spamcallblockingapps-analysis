.class public final Le/a/d/v/k/b$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/k/b;->e(Z)Lq3/a/p1;
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
    c = "com.truecaller.voip.groupcall.action.ChangeCallSettingImpl$setMuted$1"
    f = "ChangeCallSetting.kt"
    l = {
        0x88
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/v/k/b;

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Le/a/d/v/k/b;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/b$b;->h:Le/a/d/v/k/b;

    iput-boolean p2, p0, Le/a/d/v/k/b$b;->i:Z

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

    new-instance p1, Le/a/d/v/k/b$b;

    iget-object v0, p0, Le/a/d/v/k/b$b;->h:Le/a/d/v/k/b;

    iget-boolean v1, p0, Le/a/d/v/k/b$b;->i:Z

    invoke-direct {p1, v0, v1, p2}, Le/a/d/v/k/b$b;-><init>(Le/a/d/v/k/b;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/v/k/b$b;

    iget-object v0, p0, Le/a/d/v/k/b$b;->h:Le/a/d/v/k/b;

    iget-boolean v1, p0, Le/a/d/v/k/b$b;->i:Z

    invoke-direct {p1, v0, v1, p2}, Le/a/d/v/k/b$b;-><init>(Le/a/d/v/k/b;ZLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/v/k/b$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/v/k/b$b;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Le/a/d/v/k/b$b;->f:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    iget-object v1, p0, Le/a/d/v/k/b$b;->e:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/r;

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

    .line 4
    iget-object p1, p0, Le/a/d/v/k/b$b;->h:Le/a/d/v/k/b;

    .line 5
    iget-object v1, p1, Le/a/d/v/k/b;->a:Le/a/d/c0/r;

    .line 6
    iget-object p1, v1, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 7
    iput-object v1, p0, Le/a/d/v/k/b$b;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/d/v/k/b$b;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/d/v/k/b$b;->g:I

    invoke-interface {p1, v2, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object p1

    .line 9
    iget-object v1, p0, Le/a/d/v/k/b$b;->h:Le/a/d/v/k/b;

    .line 10
    iget-object v1, v1, Le/a/d/v/k/b;->a:Le/a/d/c0/r;

    .line 11
    invoke-virtual {v1}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/v/a;

    .line 12
    iget-boolean v1, v1, Le/a/d/v/a;->a:Z

    .line 13
    iget-boolean v3, p0, Le/a/d/v/k/b$b;->i:Z

    if-ne v1, v3, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    iget-object v1, p0, Le/a/d/v/k/b$b;->h:Le/a/d/v/k/b;

    .line 15
    iget-object v1, v1, Le/a/d/v/k/b;->c:Le/a/d/x/q/h;

    .line 16
    invoke-interface {v1, v3}, Le/a/d/x/q/h;->b(Z)V

    .line 17
    iget-object v1, p0, Le/a/d/v/k/b$b;->h:Le/a/d/v/k/b;

    .line 18
    iget-object v1, v1, Le/a/d/v/k/b;->a:Le/a/d/c0/r;

    .line 19
    invoke-virtual {v1}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/v/a;

    iget-boolean v3, p0, Le/a/d/v/k/b$b;->i:Z

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v5, v4}, Le/a/d/v/a;->a(Le/a/d/v/a;ZZZI)Le/a/d/v/a;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    .line 20
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-interface {v0, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
