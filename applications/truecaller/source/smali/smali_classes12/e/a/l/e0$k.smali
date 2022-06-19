.class public final Le/a/l/e0$k;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/e0;->Yj(Le/a/l/n2/f;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/l/p2/p1;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/e0;

.field public final synthetic c:Le/a/l/n2/f;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/l/e0;Le/a/l/n2/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    iput-object p2, p0, Le/a/l/e0$k;->c:Le/a/l/n2/f;

    iput-object p3, p0, Le/a/l/e0$k;->d:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Le/a/l/p2/p1;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Le/a/l/e0;->n:Z

    .line 5
    invoke-virtual {v0}, Le/a/l/e0;->Nj()Le/a/l/e0$b;

    move-result-object v2

    .line 6
    iput-object v2, v0, Le/a/l/e0;->q:Le/a/l/e0$b;

    .line 7
    instance-of v0, p1, Le/a/l/p2/p1$g;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    iget-object v1, p0, Le/a/l/e0$k;->c:Le/a/l/n2/f;

    .line 9
    iget-object v1, v1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 10
    invoke-virtual {v0, v1}, Le/a/l/e0;->Wj(Lcom/truecaller/premium/data/ProductKind;)V

    .line 11
    iget-object v3, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    .line 12
    iget-object v4, p0, Le/a/l/e0$k;->c:Le/a/l/n2/f;

    .line 13
    check-cast p1, Le/a/l/p2/p1$g;

    .line 14
    iget-object v5, p1, Le/a/l/p2/p1$g;->a:Ljava/lang/String;

    .line 15
    iget-object p1, v3, Le/a/l/e0;->d:Le/a/l/p2/s1$b;

    if-eqz p1, :cond_0

    .line 16
    iget-object v0, p1, Le/a/l/p2/s1$b;->r:Ljava/util/List;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 17
    iget-object v2, p1, Le/a/l/p2/s1$b;->i:Le/a/l/n2/f;

    :cond_1
    move-object v7, v2

    .line 18
    iget-object v8, p0, Le/a/l/e0$k;->d:Ljava/lang/String;

    .line 19
    invoke-static/range {v3 .. v8}, Le/a/l/e0;->Ij(Le/a/l/e0;Le/a/l/n2/f;Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    .line 21
    iget-object p1, p1, Le/a/l/e0;->A:Le/a/z4/d;

    .line 22
    iget-object v0, p0, Le/a/l/e0$k;->c:Le/a/l/n2/f;

    invoke-static {v0}, Le/a/c/p/a;->h1(Le/a/l/n2/f;)Z

    move-result v0

    const-string v1, "premiumHasConsumable"

    invoke-interface {p1, v1, v0}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    iget-object p1, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    .line 24
    iget-object p1, p1, Le/a/l/e0;->L:Le/a/l/o2/c;

    .line 25
    invoke-virtual {p1}, Le/a/l/o2/c;->a()V

    goto/16 :goto_1

    .line 26
    :cond_2
    sget-object v0, Le/a/l/p2/p1$a;->a:Le/a/l/p2/p1$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    iget-object p1, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    .line 28
    iget-object p1, p1, Le/a/l/e0;->v:Le/a/l/p2/v0;

    .line 29
    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 30
    iget-object p1, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    .line 31
    iget-object p1, p1, Le/a/l/e0;->O:Le/a/l/c2;

    .line 32
    iget-object v0, p0, Le/a/l/e0$k;->c:Le/a/l/n2/f;

    .line 33
    iget-object v0, v0, Le/a/l/n2/f;->f:Ljava/lang/String;

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-interface {p1, v1}, Le/a/l/c2;->H0(Z)V

    .line 35
    iget-object p1, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    .line 36
    invoke-virtual {p1}, Le/a/l/e0;->Rj()V

    goto/16 :goto_1

    .line 37
    :cond_4
    iget-object p1, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    .line 38
    iget-object v0, p1, Le/a/l/e0;->d:Le/a/l/p2/s1$b;

    if-eqz v0, :cond_f

    .line 39
    iget-object v1, p1, Le/a/l/e0;->K:Le/a/l/o2/e;

    .line 40
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/t1;

    .line 41
    iget-object v2, p0, Le/a/l/e0$k;->c:Le/a/l/n2/f;

    invoke-virtual {v1, p1, v2, v0}, Le/a/l/o2/e;->a(Le/a/l/o2/h;Le/a/l/n2/f;Le/a/l/p2/s1$b;)V

    goto/16 :goto_1

    .line 42
    :cond_5
    sget-object v0, Le/a/l/p2/p1$c;->a:Le/a/l/p2/p1$c;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    .line 43
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/t1;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/l/t1;->ix()V

    .line 44
    :cond_6
    invoke-virtual {p1}, Le/a/l/e0;->Uj()V

    goto/16 :goto_1

    .line 45
    :cond_7
    sget-object v0, Le/a/l/p2/p1$h;->a:Le/a/l/p2/p1$h;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    .line 46
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/t1;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Le/a/l/t1;->qo()V

    .line 47
    :cond_8
    invoke-virtual {p1}, Le/a/l/e0;->Uj()V

    goto :goto_1

    .line 48
    :cond_9
    sget-object v0, Le/a/l/p2/p1$e;->a:Le/a/l/p2/p1$e;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 49
    iget-object p1, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    .line 50
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/t1;

    if-eqz p1, :cond_a

    .line 51
    invoke-interface {p1}, Le/a/l/t1;->Ww()V

    .line 52
    :cond_a
    iget-object p1, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    .line 53
    invoke-virtual {p1}, Le/a/l/e0;->Uj()V

    goto :goto_1

    .line 54
    :cond_b
    instance-of v0, p1, Le/a/l/p2/p1$b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    check-cast p1, Le/a/l/p2/p1$b;

    .line 55
    iget-object p1, p1, Le/a/l/p2/p1$b;->a:Lcom/truecaller/premium/billing/Receipt;

    .line 56
    iput-object p1, v0, Le/a/l/e0;->f:Lcom/truecaller/premium/billing/Receipt;

    .line 57
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/t1;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Le/a/l/t1;->Af()V

    goto :goto_1

    .line 58
    :cond_c
    instance-of v0, p1, Le/a/l/p2/p1$f;

    if-eqz v0, :cond_d

    .line 59
    iget-object v0, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    const-string v1, "Can\'t verify receipt "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Le/a/l/p2/p1$f;

    .line 60
    iget v2, p1, Le/a/l/p2/p1$f;->a:I

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-object p1, p1, Le/a/l/p2/p1$f;->b:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1, p1}, Le/a/l/e0;->bk(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :cond_d
    instance-of v0, p1, Le/a/l/p2/p1$d;

    if-eqz v0, :cond_e

    .line 65
    iget-object v3, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Le/a/l/k0;

    invoke-direct {v6, p0, p1, v2}, Le/a/l/k0;-><init>(Le/a/l/e0$k;Le/a/l/p2/p1;Ls1/w/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_1

    .line 66
    :cond_e
    instance-of p1, p1, Le/a/l/p2/p1$i;

    if-eqz p1, :cond_f

    .line 67
    iget-object p1, p0, Le/a/l/e0$k;->b:Le/a/l/e0;

    invoke-virtual {p1, v1}, Le/a/l/e0;->ck(Z)V

    .line 68
    :cond_f
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
