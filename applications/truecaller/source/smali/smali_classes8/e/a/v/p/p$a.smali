.class public final Le/a/v/p/p$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/p/p;->f(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Le/a/k3/l/d;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.details_view.util.SocialMediaHelperImpl$getExternalAppActions$2"
    f = "SocialMediaHelperImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/v/p/p;

.field public final synthetic f:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/v/p/p;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/p/p$a;->e:Le/a/v/p/p;

    iput-object p2, p0, Le/a/v/p/p$a;->f:Lcom/truecaller/data/entity/Contact;

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

    new-instance p1, Le/a/v/p/p$a;

    iget-object v0, p0, Le/a/v/p/p$a;->e:Le/a/v/p/p;

    iget-object v1, p0, Le/a/v/p/p$a;->f:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/v/p/p$a;-><init>(Le/a/v/p/p;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v/p/p$a;

    iget-object v0, p0, Le/a/v/p/p$a;->e:Le/a/v/p/p;

    iget-object v1, p0, Le/a/v/p/p$a;->f:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/v/p/p$a;-><init>(Le/a/v/p/p;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v/p/p$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/v/p/p$a;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Le/a/v/p/p$a;->e:Le/a/v/p/p;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3
    iget-object p1, v0, Le/a/v/p/p;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v2, Le/a/o5/i0;->a:Ljava/util/List;

    invoke-static {p1, v0, v2}, Le/a/o5/t;->c(Landroid/content/Context;Ljava/lang/Long;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v0, "ContactUtil.getExternalA\u2026PPORTED_THIRD_PARTY_APPS)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    move-object v3, v2

    check-cast v3, Le/a/k3/l/d;

    .line 7
    iget-object v3, v3, Le/a/k3/l/d;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 9
    invoke-static {v0, v3}, Le/d/c/a/a;->R(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    :cond_0
    check-cast v4, Ljava/util/List;

    .line 10
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "actions.groupByTo(linked\u2026{ it.packageName }.values"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Ljava/util/List;

    .line 15
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/k3/l/d;

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_3
    iget-object p1, p0, Le/a/v/p/p$a;->e:Le/a/v/p/p;

    iget-object v1, p0, Le/a/v/p/p$a;->f:Lcom/truecaller/data/entity/Contact;

    .line 18
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p1

    const-string v1, "numbers"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/truecaller/data/entity/Number;

    const-string v3, "number"

    .line 21
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object v3

    sget-object v4, Le/m/f/a/j$d;->b:Le/m/f/a/j$d;

    if-eq v3, v4, :cond_5

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object v3

    sget-object v4, Le/m/f/a/j$d;->c:Le/m/f/a/j$d;

    if-ne v3, v4, :cond_6

    :cond_5
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->r()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/a/b0/q/c0;->e(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    :cond_7
    move-object v1, v0

    .line 22
    :goto_3
    check-cast v1, Lcom/truecaller/data/entity/Number;

    if-eqz v1, :cond_8

    .line 23
    iget-object p1, p0, Le/a/v/p/p$a;->e:Le/a/v/p/p;

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "it.normalizedNumber"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p1, p1, Le/a/v/p/p;->c:Le/a/j5/a/a;

    check-cast p1, Le/a/j5/a/b;

    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "normalizedNumber"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    .line 26
    invoke-virtual {p1, v0, v1}, Le/a/j5/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Le/a/k3/l/d;

    move-result-object p1

    .line 27
    invoke-static {p1}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_9

    goto :goto_4

    .line 28
    :cond_9
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_4
    return-object v0
.end method
