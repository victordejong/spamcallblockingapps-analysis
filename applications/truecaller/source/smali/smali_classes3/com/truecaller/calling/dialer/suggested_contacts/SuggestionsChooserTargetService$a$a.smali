.class public final Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/ArrayList<",
        "Landroid/service/chooser/ChooserTarget;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.suggested_contacts.SuggestionsChooserTargetService$onGetChooserTargets$1$1"
    f = "SuggestionsChooserTargetService.kt"
    l = {
        0x3f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a$a;->f:Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a$a;

    iget-object v0, p0, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a$a;->f:Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a$a;-><init>(Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a$a;

    iget-object v0, p0, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a$a;->f:Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a$a;-><init>(Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a$a;->e:I

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
    iget-object p1, p0, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a$a;->f:Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a;

    iget-object v3, p1, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a;->f:Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;

    .line 5
    iget-object v4, v3, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;->c:Ls1/w/f;

    const/4 p1, 0x0

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    new-instance v6, Le/a/h/b/w0/e;

    invoke-direct {v6, v3, p1}, Le/a/h/b/w0/e;-><init>(Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;Ls1/w/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    .line 6
    iput v2, p0, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService$a$a;->e:I

    check-cast p1, Lq3/a/o0;

    .line 7
    invoke-virtual {p1, p0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    const-string v0, "asyncContext"

    .line 8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p1
.end method
