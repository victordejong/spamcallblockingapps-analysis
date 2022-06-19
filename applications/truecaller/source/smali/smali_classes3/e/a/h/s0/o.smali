.class public final Le/a/h/s0/o;
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
    c = "com.truecaller.calling.select_number.SelectNumberPresenter$maybeSetDefaultNumber$1"
    f = "SelectNumberPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/h/s0/n;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/h/s0/n;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/s0/o;->e:Le/a/h/s0/n;

    iput-object p2, p0, Le/a/h/s0/o;->f:Ljava/lang/String;

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

    new-instance p1, Le/a/h/s0/o;

    iget-object v0, p0, Le/a/h/s0/o;->e:Le/a/h/s0/n;

    iget-object v1, p0, Le/a/h/s0/o;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/h/s0/o;-><init>(Le/a/h/s0/n;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/h/s0/o;->e:Le/a/h/s0/n;

    iget-object v1, p0, Le/a/h/s0/o;->f:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_0
    iget-object p2, v0, Le/a/h/s0/n;->s:Le/a/k3/j/j;

    .line 5
    iget-object v0, v0, Le/a/h/s0/n;->c:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Le/a/k3/j/j;->m(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const-string p2, "contact"

    .line 7
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    move-exception p2

    const-string v0, "Failed to set as default number"

    .line 8
    invoke-static {p2, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Le/a/h/s0/o;->e:Le/a/h/s0/n;

    .line 3
    iget-object v0, p1, Le/a/h/s0/n;->s:Le/a/k3/j/j;

    .line 4
    iget-object v1, p0, Le/a/h/s0/o;->f:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Le/a/h/s0/n;->c:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Le/a/k3/j/j;->m(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const-string p1, "contact"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    move-exception p1

    const-string v0, "Failed to set as default number"

    .line 8
    invoke-static {p1, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 9
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
