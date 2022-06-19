.class public final Lc1;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lc1;->a:I

    iput-object p2, p0, Lc1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget p1, p0, Lc1;->a:I

    const-string v0, "presenter"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    .line 1
    iget-object p1, p0, Lc1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/g0/a/a;

    .line 2
    iget-object p1, p1, Le/a/g0/a/a;->h:Le/a/g0/a/m;

    if-eqz p1, :cond_1

    .line 3
    check-cast p1, Le/a/g0/a/r;

    .line 4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g0/a/n;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/g0/a/n;->bn()V

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_2
    throw v2

    .line 7
    :cond_3
    iget-object p1, p0, Lc1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/g0/a/a;

    .line 8
    iget-object p1, p1, Le/a/g0/a/a;->h:Le/a/g0/a/m;

    if-eqz p1, :cond_d

    .line 9
    move-object v3, p1

    check-cast v3, Le/a/g0/a/r;

    .line 10
    iget-object p1, v3, Le/a/g0/a/r;->f:Le/a/g0/d;

    invoke-interface {p1}, Le/a/g0/d;->k()Lcom/truecaller/suspension/UnsuspensionMethod;

    move-result-object p1

    .line 11
    instance-of v0, p1, Lcom/truecaller/suspension/UnsuspensionMethod$b;

    if-eqz v0, :cond_4

    move-object v4, p1

    check-cast v4, Lcom/truecaller/suspension/UnsuspensionMethod$b;

    .line 12
    iget-wide v4, v4, Lcom/truecaller/suspension/UnsuspensionMethod$b;->a:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 13
    iget-object p1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g0/a/n;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Le/a/g0/a/n;->bn()V

    goto/16 :goto_3

    :cond_4
    if-eqz v0, :cond_6

    .line 14
    iget-object p1, v3, Le/a/g0/a/r;->g:Le/a/p5/u;

    invoke-interface {p1}, Le/a/p5/u;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Le/a/g0/a/o;

    invoke-direct {v6, v3, v2}, Le/a/g0/a/o;-><init>(Le/a/g0/a/r;Ls1/w/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_3

    .line 15
    :cond_5
    iget-object p1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g0/a/n;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Le/a/g0/a/n;->i0()V

    goto :goto_3

    .line 16
    :cond_6
    instance-of v0, p1, Lcom/truecaller/suspension/UnsuspensionMethod$Support;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/truecaller/suspension/UnsuspensionMethod$Support;

    .line 17
    iget-object v0, p1, Lcom/truecaller/suspension/UnsuspensionMethod$Support;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-static {v0}, Le/a/p5/s0/f;->o(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    :goto_0
    move v0, v1

    :goto_1
    iget-object v4, p1, Lcom/truecaller/suspension/UnsuspensionMethod$Support;->b:Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;

    sget-object v5, Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;->Feedback:Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;

    if-ne v4, v5, :cond_9

    goto :goto_2

    :cond_9
    move v1, v2

    :goto_2
    or-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 18
    iget-object v0, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g0/a/n;

    if-eqz v0, :cond_c

    .line 19
    iget-object p1, p1, Lcom/truecaller/suspension/UnsuspensionMethod$Support;->a:Ljava/lang/String;

    .line 20
    invoke-interface {v0, p1}, Le/a/g0/a/n;->Rm(Ljava/lang/String;)V

    goto :goto_3

    .line 21
    :cond_a
    invoke-virtual {v3}, Le/a/g0/a/r;->Kj()V

    goto :goto_3

    .line 22
    :cond_b
    sget-object v0, Lcom/truecaller/suspension/UnsuspensionMethod$a;->a:Lcom/truecaller/suspension/UnsuspensionMethod$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g0/a/n;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Le/a/g0/a/n;->bn()V

    :cond_c
    :goto_3
    return-void

    .line 23
    :cond_d
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
