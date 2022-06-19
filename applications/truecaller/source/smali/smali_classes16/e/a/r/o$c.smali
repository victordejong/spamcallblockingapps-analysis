.class public final Le/a/r/o$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/o;->a(Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.wizard.WizardListenerImpl$triggerAccountActions$3"
    f = "WizardListenerImpl.kt"
    l = {
        0x76,
        0x7e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r/o;


# direct methods
.method public constructor <init>(Le/a/r/o;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/o$c;->f:Le/a/r/o;

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

    new-instance p1, Le/a/r/o$c;

    iget-object v0, p0, Le/a/r/o$c;->f:Le/a/r/o;

    invoke-direct {p1, v0, p2}, Le/a/r/o$c;-><init>(Le/a/r/o;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/o$c;

    iget-object v0, p0, Le/a/r/o$c;->f:Le/a/r/o;

    invoke-direct {p1, v0, p2}, Le/a/r/o$c;-><init>(Le/a/r/o;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/o$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r/o$c;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/o$c;->f:Le/a/r/o;

    .line 5
    iget-object p1, p1, Le/a/r/o;->d:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a4/e;

    iput v3, p0, Le/a/r/o$c;->e:I

    invoke-interface {p1, p0}, Le/a/a4/e;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 7
    :cond_3
    :goto_0
    iget-object p1, p0, Le/a/r/o$c;->f:Le/a/r/o;

    .line 8
    iget-object p1, p1, Le/a/r/o;->e:Lo3/a;

    .line 9
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/service/SyncPhoneBookService$a;

    iget-object v1, p0, Le/a/r/o$c;->f:Le/a/r/o;

    .line 10
    iget-object v1, v1, Le/a/r/o;->c:Landroid/content/Context;

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v1, v3}, Lcom/truecaller/service/SyncPhoneBookService;->a(Landroid/content/Context;Z)V

    .line 13
    iget-object p1, p0, Le/a/r/o$c;->f:Le/a/r/o;

    .line 14
    iget-object v3, p1, Le/a/r/o;->h:Le/a/y2/q/a;

    const-wide/16 v4, 0xf

    .line 15
    invoke-static {v4, v5}, Le/m/d/y/n;->G0(J)Ls1/k;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "UGCWorkAction"

    invoke-static/range {v3 .. v8}, Le/m/d/y/n;->z1(Le/a/y2/q/a;Ljava/lang/String;Ls1/k;Ln3/m0/f;ILjava/lang/Object;)Ln3/m0/s;

    .line 16
    iget-object p1, p0, Le/a/r/o$c;->f:Le/a/r/o;

    .line 17
    iget-object p1, p1, Le/a/r/o;->f:Lo3/a;

    .line 18
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/o4/e;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Le/a/o4/e;->c(Le/a/o4/d;)V

    .line 19
    iget-object p1, p0, Le/a/r/o$c;->f:Le/a/r/o;

    .line 20
    iget-object p1, p1, Le/a/r/o;->b:Ls1/w/f;

    .line 21
    new-instance v3, Le/a/r/o$c$a;

    invoke-direct {v3, p0, v1}, Le/a/r/o$c$a;-><init>(Le/a/r/o$c;Ls1/w/d;)V

    iput v2, p0, Le/a/r/o$c;->e:I

    invoke-static {p1, v3, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 22
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
