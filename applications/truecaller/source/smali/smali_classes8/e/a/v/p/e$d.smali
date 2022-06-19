.class public final Le/a/v/p/e$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/p/e;->g(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.details_view.util.ContactUtilHelperImpl$remove$2"
    f = "ContactUtilHelperImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/v/p/e;

.field public final synthetic f:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/v/p/e;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/p/e$d;->e:Le/a/v/p/e;

    iput-object p2, p0, Le/a/v/p/e$d;->f:Lcom/truecaller/data/entity/Contact;

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

    new-instance p1, Le/a/v/p/e$d;

    iget-object v0, p0, Le/a/v/p/e$d;->e:Le/a/v/p/e;

    iget-object v1, p0, Le/a/v/p/e$d;->f:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/v/p/e$d;-><init>(Le/a/v/p/e;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v/p/e$d;

    iget-object v0, p0, Le/a/v/p/e$d;->e:Le/a/v/p/e;

    iget-object v1, p0, Le/a/v/p/e$d;->f:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/v/p/e$d;-><init>(Le/a/v/p/e;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v/p/e$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/v/p/e$d;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/v/p/e$d;->e:Le/a/v/p/e;

    .line 4
    iget-object p1, p1, Le/a/v/p/e;->b:Landroid/content/Context;

    .line 5
    iget-object v0, p0, Le/a/v/p/e$d;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Le/a/v/p/e$d;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->T()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Le/a/l4/k;->i0(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_3

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/v/p/e$d;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->l0()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7
    iget-object p1, p0, Le/a/v/p/e$d;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p1

    const-string v1, "contact.numbers"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/truecaller/data/entity/Number;

    const-string v4, "it"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v2

    :goto_1
    xor-int/2addr v3, v2

    .line 9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    check-cast v1, Lcom/truecaller/data/entity/Number;

    if-eqz v1, :cond_5

    .line 11
    iget-object p1, p0, Le/a/v/p/e$d;->e:Le/a/v/p/e;

    .line 12
    iget-object p1, p1, Le/a/v/p/e;->d:Lo3/a;

    .line 13
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k3/j/j;

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [I

    const/16 v3, 0x20

    aput v3, v2, v0

    invoke-virtual {p1, v1, v2}, Le/a/k3/j/j;->l(Ljava/lang/String;[I)Z

    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 16
    :cond_5
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
