.class public final Le/a/s/n/b/g/l$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/s/n/b/g/l;->E1(Lcom/truecaller/callhero_assistant/data/Voice;)V
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
    c = "com.truecaller.callhero_assistant.inbox.settings.voice.VoiceSettingsPresenter$onVoiceClick$1"
    f = "VoiceSettingsPresenter.kt"
    l = {
        0x47
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/s/n/b/g/l;

.field public final synthetic g:Lcom/truecaller/callhero_assistant/data/Voice;


# direct methods
.method public constructor <init>(Le/a/s/n/b/g/l;Lcom/truecaller/callhero_assistant/data/Voice;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/s/n/b/g/l$a;->f:Le/a/s/n/b/g/l;

    iput-object p2, p0, Le/a/s/n/b/g/l$a;->g:Lcom/truecaller/callhero_assistant/data/Voice;

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

    new-instance p1, Le/a/s/n/b/g/l$a;

    iget-object v0, p0, Le/a/s/n/b/g/l$a;->f:Le/a/s/n/b/g/l;

    iget-object v1, p0, Le/a/s/n/b/g/l$a;->g:Lcom/truecaller/callhero_assistant/data/Voice;

    invoke-direct {p1, v0, v1, p2}, Le/a/s/n/b/g/l$a;-><init>(Le/a/s/n/b/g/l;Lcom/truecaller/callhero_assistant/data/Voice;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/s/n/b/g/l$a;

    iget-object v0, p0, Le/a/s/n/b/g/l$a;->f:Le/a/s/n/b/g/l;

    iget-object v1, p0, Le/a/s/n/b/g/l$a;->g:Lcom/truecaller/callhero_assistant/data/Voice;

    invoke-direct {p1, v0, v1, p2}, Le/a/s/n/b/g/l$a;-><init>(Le/a/s/n/b/g/l;Lcom/truecaller/callhero_assistant/data/Voice;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/s/n/b/g/l$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/s/n/b/g/l$a;->e:I

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
    iget-object p1, p0, Le/a/s/n/b/g/l$a;->f:Le/a/s/n/b/g/l;

    .line 5
    iget-object p1, p1, Le/a/s/n/b/g/l;->k:Le/a/s/s/a;

    .line 6
    new-instance v1, Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;

    iget-object v3, p0, Le/a/s/n/b/g/l$a;->g:Lcom/truecaller/callhero_assistant/data/Voice;

    invoke-virtual {v3}, Lcom/truecaller/callhero_assistant/data/Voice;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4, v5}, Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ILs1/z/c/f;)V

    iput v2, p0, Le/a/s/n/b/g/l$a;->e:I

    invoke-interface {p1, v1, p0}, Le/a/s/s/a;->c(Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 7
    iget-object v0, p0, Le/a/s/n/b/g/l$a;->f:Le/a/s/n/b/g/l;

    .line 8
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/n/b/g/j;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0}, Le/a/s/n/b/g/j;->bz()V

    :cond_3
    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Le/a/s/n/b/g/l$a;->f:Le/a/s/n/b/g/l;

    .line 11
    iget-object p1, p1, Le/a/s/n/b/g/l;->m:Le/a/s/s/c;

    .line 12
    iget-object v0, p0, Le/a/s/n/b/g/l$a;->g:Lcom/truecaller/callhero_assistant/data/Voice;

    invoke-virtual {v0}, Lcom/truecaller/callhero_assistant/data/Voice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/s/s/c;->v1(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object p1, p0, Le/a/s/n/b/g/l$a;->f:Le/a/s/n/b/g/l;

    .line 14
    iget-object v0, p1, Le/a/s/n/b/g/l;->l:Le/a/p5/j0;

    const v1, 0x7f12027f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    .line 16
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
