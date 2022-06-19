.class public final Le/a/h/b/y$d$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/y$d;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/truecaller/data/entity/Contact;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.DialerPresenter$refetchContactIfNeeded$1$1"
    f = "DialerPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/h/b/y$d;


# direct methods
.method public constructor <init>(Le/a/h/b/y$d;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/y$d$a;->e:Le/a/h/b/y$d;

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

    new-instance p1, Le/a/h/b/y$d$a;

    iget-object v0, p0, Le/a/h/b/y$d$a;->e:Le/a/h/b/y$d;

    invoke-direct {p1, v0, p2}, Le/a/h/b/y$d$a;-><init>(Le/a/h/b/y$d;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/h/b/y$d$a;->e:Le/a/h/b/y$d;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/h/b/y$d;->f:Le/a/h/b/y;

    .line 6
    iget-object p2, p2, Le/a/h/b/y;->X:Le/a/k3/j/b;

    .line 7
    iget-object p1, p1, Le/a/h/b/y$d;->g:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p2, p1}, Le/a/k3/j/b;->l(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/h/b/y$d$a;->e:Le/a/h/b/y$d;

    iget-object v0, p1, Le/a/h/b/y$d;->f:Le/a/h/b/y;

    .line 3
    iget-object v0, v0, Le/a/h/b/y;->X:Le/a/k3/j/b;

    .line 4
    iget-object p1, p1, Le/a/h/b/y$d;->g:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0, p1}, Le/a/k3/j/b;->l(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method
