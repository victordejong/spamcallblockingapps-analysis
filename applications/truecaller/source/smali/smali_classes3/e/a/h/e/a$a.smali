.class public final Le/a/h/e/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/e/a;-><init>(Lo3/a;Lo3/a;Lo3/a;Le/a/p5/a0;Le/a/k3/l/f;Lo3/a;Le/a/h/b0;Le/a/p5/g;Lo3/a;Le/a/h/r0/b;Landroid/telephony/TelephonyManager;Le/a/b0/q/h0;Lo3/a;Lo3/a;Landroid/content/Context;Lo3/a;Lo3/a;Lo3/a;Le/a/h/e/j;Le/a/h/e/f;Ls1/w/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/h/e/a$a;->b:I

    iput-object p2, p0, Le/a/h/e/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Le/a/h/e/a$a;->b:I

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_8

    .line 1
    iget-object v0, p0, Le/a/h/e/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/h/e/a;

    .line 2
    iget-object v0, v0, Le/a/h/e/a;->k:Le/a/p5/g;

    .line 3
    invoke-interface {v0}, Le/a/p5/g;->j()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_6

    .line 5
    iget-object v2, p0, Le/a/h/e/a$a;->c:Ljava/lang/Object;

    check-cast v2, Le/a/h/e/a;

    .line 6
    iget-object v2, v2, Le/a/h/e/a;->u:Lo3/a;

    .line 7
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/u3/g;

    .line 8
    iget-object v4, v2, Le/a/u3/g;->o1:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x76

    aget-object v5, v5, v6

    invoke-virtual {v4, v2, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v2

    check-cast v2, Le/a/u3/i;

    .line 9
    invoke-interface {v2}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    const/4 v4, 0x0

    if-eqz v2, :cond_4

    const-string v5, ","

    .line 11
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v2, v5, v4, v4, v6}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v3, v5

    :cond_3
    check-cast v3, Ljava/lang/String;

    :cond_4
    if-nez v3, :cond_5

    move v4, v1

    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_7

    .line 13
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 14
    :cond_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 15
    :cond_8
    throw v3

    .line 16
    :cond_9
    iget-object v0, p0, Le/a/h/e/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/h/e/a;

    .line 17
    iget-object v0, v0, Le/a/h/e/a;->i:Lo3/a;

    .line 18
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e4/p;

    iget-object v2, p0, Le/a/h/e/a$a;->c:Ljava/lang/Object;

    check-cast v2, Le/a/h/e/a;

    .line 19
    iget-object v2, v2, Le/a/h/e/a;->i:Lo3/a;

    .line 20
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "multiSimManager.get()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Le/a/e4/p;

    invoke-interface {v2}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/e4/p;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SE"

    invoke-static {v2, v0, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 22
    :cond_a
    iget-object v0, p0, Le/a/h/e/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/h/e/a;

    .line 23
    iget-object v0, v0, Le/a/h/e/a;->u:Lo3/a;

    .line 24
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 25
    iget-object v1, v0, Le/a/u3/g;->A2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xb6

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
