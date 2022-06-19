.class public final Le/a/d/a/b$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/a/b;->onActivityResult(IILandroid/content/Intent;)V
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
    c = "com.truecaller.voip.debug.DebugInvitationFragment$onActivityResult$1"
    f = "DebugInvitationFragment.kt"
    l = {
        0x60
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/a/b;

.field public final synthetic i:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Le/a/d/a/b;Landroid/content/Intent;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/a/b$d;->h:Le/a/d/a/b;

    iput-object p2, p0, Le/a/d/a/b$d;->i:Landroid/content/Intent;

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

    new-instance p1, Le/a/d/a/b$d;

    iget-object v0, p0, Le/a/d/a/b$d;->h:Le/a/d/a/b;

    iget-object v1, p0, Le/a/d/a/b$d;->i:Landroid/content/Intent;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/a/b$d;-><init>(Le/a/d/a/b;Landroid/content/Intent;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/a/b$d;

    iget-object v0, p0, Le/a/d/a/b$d;->h:Le/a/d/a/b;

    iget-object v1, p0, Le/a/d/a/b$d;->i:Landroid/content/Intent;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/a/b$d;-><init>(Le/a/d/a/b;Landroid/content/Intent;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/a/b$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/a/b$d;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Le/a/d/a/b$d;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, p0, Le/a/d/a/b$d;->e:Ljava/lang/Object;

    check-cast v4, Le/a/d/a/p;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

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
    iget-object p1, p0, Le/a/d/a/b$d;->i:Landroid/content/Intent;

    if-eqz p1, :cond_b

    .line 5
    iget-object v2, p0, Le/a/d/a/b$d;->h:Le/a/d/a/b;

    .line 6
    iget-object v2, v2, Le/a/d/a/b;->g:Le/a/d/c0/j1;

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    .line 7
    invoke-interface {v2}, Le/a/d/c0/j1;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 8
    invoke-static {p1}, Le/q/f/a/d/a;->j3([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 9
    iget-object v2, p0, Le/a/d/a/b$d;->h:Le/a/d/a/b;

    .line 10
    iget-object v2, v2, Le/a/d/a/b;->f:Le/a/d/w/d;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Le/a/d/w/d;->getState()Lq3/a/x2/i1;

    move-result-object v2

    invoke-interface {v2}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Le/a/d/w/g$a;

    if-nez v5, :cond_2

    move-object v2, v4

    :cond_2
    check-cast v2, Le/a/d/w/g$a;

    if-eqz v2, :cond_3

    .line 11
    iget-object v2, v2, Le/a/d/w/g$a;->a:Le/a/d/w/b;

    goto :goto_0

    :cond_3
    move-object v2, v4

    .line 12
    :goto_0
    instance-of v5, v2, Le/a/d/a/a0;

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v2

    :goto_1
    check-cast v4, Le/a/d/a/a0;

    if-eqz v4, :cond_8

    .line 13
    iget-object v4, v4, Le/a/d/a/a0;->f:Le/a/d/a/p;

    if-eqz v4, :cond_8

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p1, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 16
    check-cast v5, Ljava/lang/String;

    const-string v6, "it"

    .line 17
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Le/a/d/a/p;->w(Ljava/lang/String;)I

    move-result v5

    .line 18
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 19
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_5
    invoke-static {v2}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 21
    invoke-virtual {v4, p1}, Le/a/d/a/p;->u(Ljava/util/Set;)V

    .line 22
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 23
    iput-object v4, p0, Le/a/d/a/b$d;->e:Ljava/lang/Object;

    iput-object v2, p0, Le/a/d/a/b$d;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/d/a/b$d;->g:I

    invoke-virtual {v4, p1, p0}, Le/a/d/a/p;->y(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 24
    :cond_7
    iget-object p1, p0, Le/a/d/a/b$d;->h:Le/a/d/a/b;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismissAllowingStateLoss()V

    :cond_8
    return-object v0

    :cond_9
    const-string p1, "invitationManager"

    .line 25
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_a
    const-string p1, "support"

    .line 26
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_b
    return-object v0
.end method
