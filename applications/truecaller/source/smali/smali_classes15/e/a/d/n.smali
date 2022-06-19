.class public final Le/a/d/n;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/m;

.field public final synthetic c:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/d/m;Lcom/truecaller/data/entity/Contact;)V
    .locals 0

    iput-object p1, p0, Le/a/d/n;->b:Le/a/d/m;

    iput-object p2, p0, Le/a/d/n;->c:Lcom/truecaller/data/entity/Contact;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/d/n;->c:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/data/entity/Number;

    const-string v6, "number"

    .line 2
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v6

    const-string v7, "normalizedNumber"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Le/a/p5/s0/f;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v7, p0, Le/a/d/n;->b:Le/a/d/m;

    .line 6
    iget-object v7, v7, Le/a/d/m;->e:Lo3/a;

    .line 7
    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/h0/j;

    invoke-virtual {v5}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v7, v8, v6, v9}, Le/a/h0/j;->j(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v6

    .line 8
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/blocking/FilterMatch;

    .line 9
    iget-object v8, v7, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    .line 10
    sget-object v10, Lcom/truecaller/blocking/ActionSource;->TOP_SPAMMER:Lcom/truecaller/blocking/ActionSource;

    if-ne v8, v10, :cond_4

    .line 11
    iget v3, v7, Lcom/truecaller/blocking/FilterMatch;->f:I

    .line 12
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Number;->m()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 13
    iget v3, v7, Lcom/truecaller/blocking/FilterMatch;->f:I

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Number;->m()I

    move-result v3

    :goto_2
    move v4, v3

    move v3, v9

    goto :goto_1

    .line 15
    :cond_4
    iget-object v7, v7, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 16
    sget-object v8, Lcom/truecaller/blocking/FilterAction;->ALLOW_WHITELISTED:Lcom/truecaller/blocking/FilterAction;

    if-ne v7, v8, :cond_2

    move v4, v1

    move v2, v9

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    if-eqz v2, :cond_6

    goto :goto_3

    .line 17
    :cond_6
    iget-object v1, p0, Le/a/d/n;->c:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Le/a/d/n;->c:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_8

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_8
    :goto_3
    return-object v0
.end method
