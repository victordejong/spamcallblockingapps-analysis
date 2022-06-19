.class public final Le/a/d/v/k/b$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/k/b;->h(Z)Lq3/a/p1;
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
    c = "com.truecaller.voip.groupcall.action.ChangeCallSettingImpl$setOnHold$1"
    f = "ChangeCallSetting.kt"
    l = {
        0x88,
        0x56
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

    iput-object p1, p0, Le/a/d/v/k/b$c;->h:Le/a/d/v/k/b;

    iput-boolean p2, p0, Le/a/d/v/k/b$c;->i:Z

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

    new-instance p1, Le/a/d/v/k/b$c;

    iget-object v0, p0, Le/a/d/v/k/b$c;->h:Le/a/d/v/k/b;

    iget-boolean v1, p0, Le/a/d/v/k/b$c;->i:Z

    invoke-direct {p1, v0, v1, p2}, Le/a/d/v/k/b$c;-><init>(Le/a/d/v/k/b;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/v/k/b$c;

    iget-object v0, p0, Le/a/d/v/k/b$c;->h:Le/a/d/v/k/b;

    iget-boolean v1, p0, Le/a/d/v/k/b$c;->i:Z

    invoke-direct {p1, v0, v1, p2}, Le/a/d/v/k/b$c;-><init>(Le/a/d/v/k/b;ZLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/v/k/b$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/v/k/b$c;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Le/a/d/v/k/b$c;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v2, p0, Le/a/d/v/k/b$c;->f:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v6, p0, Le/a/d/v/k/b$c;->e:Ljava/lang/Object;

    check-cast v6, Le/a/d/c0/r;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/v/k/b$c;->h:Le/a/d/v/k/b;

    .line 5
    iget-object v6, p1, Le/a/d/v/k/b;->a:Le/a/d/c0/r;

    .line 6
    iget-object p1, v6, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 7
    iput-object v6, p0, Le/a/d/v/k/b$c;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/d/v/k/b$c;->f:Ljava/lang/Object;

    iput v4, p0, Le/a/d/v/k/b$c;->g:I

    invoke-interface {p1, v5, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object v2

    .line 9
    iget-object v6, p0, Le/a/d/v/k/b$c;->h:Le/a/d/v/k/b;

    .line 10
    iget-object v6, v6, Le/a/d/v/k/b;->a:Le/a/d/c0/r;

    .line 11
    invoke-virtual {v6}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/d/v/a;

    .line 12
    iget-boolean v6, v6, Le/a/d/v/a;->b:Z

    .line 13
    iget-boolean v7, p0, Le/a/d/v/k/b$c;->i:Z

    if-ne v6, v7, :cond_4

    goto :goto_4

    .line 14
    :cond_4
    iget-object v6, p0, Le/a/d/v/k/b$c;->h:Le/a/d/v/k/b;

    .line 15
    iget-object v6, v6, Le/a/d/v/k/b;->c:Le/a/d/x/q/h;

    const/4 v8, 0x0

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    move v4, v8

    .line 16
    :goto_1
    invoke-interface {v6, v4}, Le/a/d/x/q/h;->f(Z)V

    .line 17
    iget-object v4, p0, Le/a/d/v/k/b$c;->h:Le/a/d/v/k/b;

    .line 18
    iget-object v4, v4, Le/a/d/v/k/b;->a:Le/a/d/c0/r;

    .line 19
    invoke-virtual {v4}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/v/a;

    iget-boolean v6, p0, Le/a/d/v/k/b$c;->i:Z

    const/4 v7, 0x5

    invoke-static {v4, v8, v6, v8, v7}, Le/a/d/v/a;->a(Le/a/d/v/a;ZZZI)Le/a/d/v/a;

    move-result-object v4

    invoke-interface {v2, v4}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    .line 20
    iget-object v2, p0, Le/a/d/v/k/b$c;->h:Le/a/d/v/k/b;

    iget-boolean v4, p0, Le/a/d/v/k/b$c;->i:Z

    iput-object p1, p0, Le/a/d/v/k/b$c;->e:Ljava/lang/Object;

    iput-object v5, p0, Le/a/d/v/k/b$c;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/d/v/k/b$c;->g:I

    if-eqz v4, :cond_6

    .line 21
    new-instance v3, Le/a/d/x/r/j;

    .line 22
    iget-object v4, v2, Le/a/d/v/k/b;->b:Ljava/lang/String;

    .line 23
    sget-object v6, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->OnHold:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    .line 24
    invoke-direct {v3, v4, v6}, Le/a/d/x/r/j;-><init>(Ljava/lang/String;Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;)V

    .line 25
    iget-object v2, v2, Le/a/d/v/k/b;->d:Le/a/d/x/r/h;

    invoke-static {v3}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Le/a/d/x/r/h;->n(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_2

    .line 26
    :cond_6
    iget-object v3, v2, Le/a/d/v/k/b;->d:Le/a/d/x/r/h;

    iget-object v2, v2, Le/a/d/v/k/b;->b:Ljava/lang/String;

    invoke-static {v2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v3, v2, p0}, Le/a/d/x/r/h;->l(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v1, :cond_7

    goto :goto_2

    :cond_7
    move-object v2, v0

    :goto_2
    if-ne v2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v1, p1

    :goto_3
    move-object p1, v1

    .line 27
    :goto_4
    invoke-interface {p1, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    :goto_5
    invoke-interface {v1, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
