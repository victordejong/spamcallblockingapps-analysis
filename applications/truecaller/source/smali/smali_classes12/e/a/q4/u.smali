.class public Le/a/q4/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/h/b/w0/d;

.field public final b:I

.field public final c:I

.field public final d:Le/a/w/c/a;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/k3/j/b;

.field public final h:Le/a/w/b/b;

.field public final i:Le/a/b0/q/z;

.field public final j:Ljava/lang/StringBuilder;

.field public final k:Le/a/h0/j;

.field public final l:Le/a/h0/m;

.field public final m:Le/a/w/b/d/a;

.field public n:I


# direct methods
.method public constructor <init>(Le/a/h/b/w0/d;IILe/a/w/c/a;Le/a/k3/j/b;Le/a/w/b/b;Le/a/b0/q/z;Le/a/h0/j;Le/a/h0/m;Le/a/w/b/d/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/q4/u;->a:Le/a/h/b/w0/d;

    .line 3
    iput p2, p0, Le/a/q4/u;->b:I

    .line 4
    iput p3, p0, Le/a/q4/u;->c:I

    .line 5
    iput-object p4, p0, Le/a/q4/u;->d:Le/a/w/c/a;

    .line 6
    iput-object p5, p0, Le/a/q4/u;->g:Le/a/k3/j/b;

    .line 7
    iput-object p6, p0, Le/a/q4/u;->h:Le/a/w/b/b;

    .line 8
    iput-object p7, p0, Le/a/q4/u;->i:Le/a/b0/q/z;

    .line 9
    iput-object p8, p0, Le/a/q4/u;->k:Le/a/h0/j;

    .line 10
    iput-object p9, p0, Le/a/q4/u;->l:Le/a/h0/m;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/q4/u;->e:Ljava/util/List;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/q4/u;->f:Ljava/util/List;

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Le/a/q4/u;->j:Ljava/lang/StringBuilder;

    .line 14
    iput-object p10, p0, Le/a/q4/u;->m:Le/a/w/b/d/a;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q4/u;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Le/a/q4/u;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q4/u;->k:Le/a/h0/j;

    invoke-interface {v0, p1}, Le/a/h0/j;->e(Ljava/lang/String;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 3
    iget-object v0, p0, Le/a/q4/u;->l:Le/a/h0/m;

    invoke-interface {v0}, Le/a/h0/m;->u()Z

    move-result v0

    .line 4
    sget-object v1, Lcom/truecaller/blocking/FilterAction;->ALLOW_WHITELISTED:Lcom/truecaller/blocking/FilterAction;

    if-eq p1, v1, :cond_2

    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    sget-object p2, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/q4/u;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/messaging/Participant;

    .line 2
    invoke-static {v1}, Le/a/c/p/a;->v0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    iget-object v1, v1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Le/a/q4/u;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/q4/u;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 5
    iget-object v0, p0, Le/a/q4/u;->h:Le/a/w/b/b;

    const-string v1, "smsReferralPrefetchBatch"

    invoke-interface {v0, v1}, Le/a/b0/g/b;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/q4/u;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget-object v0, p0, Le/a/q4/u;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, Le/a/q4/u;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    iget-object v2, p0, Le/a/q4/u;->h:Le/a/w/b/b;

    invoke-interface {v2, v1, v0}, Le/a/b0/g/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/w/b/c/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/w/b/c/c;

    .line 2
    iget-object v1, p0, Le/a/q4/u;->i:Le/a/b0/q/z;

    invoke-virtual {v0}, Le/a/w/b/c/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/q4/u;->g:Le/a/k3/j/b;

    invoke-virtual {v1, v0}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget-object v2, p0, Le/a/q4/u;->i:Le/a/b0/q/z;

    invoke-interface {v2, v0}, Le/a/b0/q/z;->i(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 5
    iget-object v2, p0, Le/a/q4/u;->i:Le/a/b0/q/z;

    const/4 v3, 0x1

    .line 6
    invoke-static {v1, v3}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v3

    .line 7
    invoke-static {v1, v0, v2, v3}, Lcom/truecaller/data/entity/messaging/Participant;->b(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Le/a/b0/q/z;Landroid/net/Uri;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    .line 8
    iget-object v2, p0, Le/a/q4/u;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    iget-object v2, p0, Le/a/q4/u;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    .line 12
    :cond_4
    :goto_1
    invoke-virtual {p0}, Le/a/q4/u;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Le/a/q4/u;->c()V

    return-void

    .line 14
    :cond_5
    invoke-virtual {p0}, Le/a/q4/u;->e()V

    return-void
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/q4/u;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Le/a/q4/u;->n:I

    if-gt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/q4/u;->c()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Le/a/q4/u;->c:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget v1, p0, Le/a/q4/u;->n:I

    :goto_0
    iget-object v2, p0, Le/a/q4/u;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    add-int/lit8 v2, v1, 0x1

    .line 5
    iput v2, p0, Le/a/q4/u;->n:I

    .line 6
    iget-object v3, p0, Le/a/q4/u;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/Contact;

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/data/entity/Number;

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Le/a/q4/u;->b(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    iget-object v6, p0, Le/a/q4/u;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/data/entity/messaging/Participant;

    .line 13
    iget-object v7, v7, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {v7, v5}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_2

    .line 14
    iget-object v6, p0, Le/a/q4/u;->d:Le/a/w/c/a;

    .line 15
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Le/a/w/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Le/a/w/c/a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 17
    iget-object v6, p0, Le/a/q4/u;->d:Le/a/w/c/a;

    invoke-virtual {v6, v5}, Le/a/w/c/a;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 18
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Le/a/q4/u;->c:I

    if-eq v4, v5, :cond_9

    invoke-virtual {p0}, Le/a/q4/u;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_4

    :cond_8
    :goto_3
    move v1, v2

    goto/16 :goto_0

    .line 20
    :cond_9
    :goto_4
    invoke-virtual {p0}, Le/a/q4/u;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 21
    invoke-virtual {p0}, Le/a/q4/u;->c()V

    return-void

    .line 22
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/entity/Number;

    .line 25
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v3

    .line 26
    new-instance v4, Le/a/f4/g/i$b;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v5}, Le/a/f4/g/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 28
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 29
    invoke-virtual {p0}, Le/a/q4/u;->c()V

    return-void

    .line 30
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 31
    :try_start_0
    iget-object v0, p0, Le/a/q4/u;->m:Le/a/w/b/d/a;

    new-instance v1, Le/a/w/b/c/b;

    invoke-direct {v1, v2}, Le/a/w/b/c/b;-><init>(Ljava/util/List;)V

    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->REFERRAL:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v2, Le/a/w/b/d/a$a;

    invoke-static {v0, v2}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/w/b/d/a$a;

    invoke-interface {v0, v1}, Le/a/w/b/d/a$a;->c(Le/a/w/b/c/b;)Lx3/b;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 36
    iget-object v0, v0, Lx3/a0;->b:Ljava/lang/Object;

    if-eqz v0, :cond_d

    .line 37
    check-cast v0, Ljava/util/List;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    invoke-virtual {p0, v0}, Le/a/q4/u;->d(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 40
    :catch_0
    invoke-virtual {p0}, Le/a/q4/u;->c()V

    :cond_d
    :goto_6
    return-void
.end method
