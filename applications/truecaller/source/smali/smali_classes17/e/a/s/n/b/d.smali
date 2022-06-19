.class public final Le/a/s/n/b/d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.callhero_assistant.inbox.settings.CallAssistantSettingsPresenter$updateScreenBlockListContacts$2"
    f = "CallAssistantSettingsPresenter.kt"
    l = {
        0x43
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/s/n/b/e;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Le/a/s/n/b/e;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/s/n/b/d;->f:Le/a/s/n/b/e;

    iput-boolean p2, p0, Le/a/s/n/b/d;->g:Z

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

    new-instance p1, Le/a/s/n/b/d;

    iget-object v0, p0, Le/a/s/n/b/d;->f:Le/a/s/n/b/e;

    iget-boolean v1, p0, Le/a/s/n/b/d;->g:Z

    invoke-direct {p1, v0, v1, p2}, Le/a/s/n/b/d;-><init>(Le/a/s/n/b/e;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/s/n/b/d;

    iget-object v0, p0, Le/a/s/n/b/d;->f:Le/a/s/n/b/e;

    iget-boolean v1, p0, Le/a/s/n/b/d;->g:Z

    invoke-direct {p1, v0, v1, p2}, Le/a/s/n/b/d;-><init>(Le/a/s/n/b/e;ZLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/s/n/b/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/s/n/b/d;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Le/a/s/n/b/d;->f:Le/a/s/n/b/e;

    .line 5
    iget-object p1, p1, Le/a/s/n/b/e;->h:Le/a/s/s/a;

    .line 6
    new-instance v1, Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;

    iget-boolean v3, p0, Le/a/s/n/b/d;->g:Z

    .line 7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    .line 8
    invoke-direct {v1, v4, v3, v2, v4}, Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ILs1/z/c/f;)V

    iput v2, p0, Le/a/s/n/b/d;->e:I

    invoke-interface {p1, v1, p0}, Le/a/s/s/a;->c(Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Le/a/s/n/b/d;->f:Le/a/s/n/b/e;

    .line 10
    iget-object p1, p1, Le/a/s/n/b/e;->g:Le/a/s/s/c;

    .line 11
    iget-boolean v0, p0, Le/a/s/n/b/d;->g:Z

    invoke-interface {p1, v0}, Le/a/s/s/c;->o1(Z)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Le/a/s/n/b/d;->f:Le/a/s/n/b/e;

    .line 13
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/n/b/c;

    if-eqz v0, :cond_4

    .line 14
    iget-object p1, p1, Le/a/s/n/b/e;->g:Le/a/s/s/c;

    .line 15
    invoke-interface {p1}, Le/a/s/s/c;->O0()Z

    move-result p1

    invoke-interface {v0, p1}, Le/a/s/n/b/c;->ju(Z)V

    .line 16
    :cond_4
    iget-object p1, p0, Le/a/s/n/b/d;->f:Le/a/s/n/b/e;

    .line 17
    iget-object v0, p1, Le/a/s/n/b/e;->i:Le/a/p5/j0;

    const v1, 0x7f12027f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 18
    invoke-static/range {v0 .. v5}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    .line 19
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
