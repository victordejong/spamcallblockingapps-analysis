.class public final Le/a/l/v2/h/g$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/v2/h/g;->Nj(Le/a/l/n2/f;)V
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
.field public final synthetic b:Le/a/l/v2/h/g;

.field public final synthetic c:Le/a/l/n2/f;


# direct methods
.method public constructor <init>(Le/a/l/v2/h/g;Le/a/l/n2/f;)V
    .locals 0

    iput-object p1, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    iput-object p2, p0, Le/a/l/v2/h/g$b;->c:Le/a/l/n2/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Le/a/l/p2/p1;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Le/a/l/p2/p1$g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    .line 5
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/v2/h/d;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, v2}, Le/a/l/v2/h/d;->g2(Z)V

    .line 7
    :cond_0
    iget-object v0, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    iget-object v2, p0, Le/a/l/v2/h/g$b;->c:Le/a/l/n2/f;

    check-cast p1, Le/a/l/p2/p1$g;

    .line 8
    iget-object p1, p1, Le/a/l/p2/p1$g;->a:Ljava/lang/String;

    .line 9
    iget-object v3, v0, Le/a/l/v2/h/g;->d:Le/a/l/p2/s1$b;

    if-eqz v3, :cond_1

    .line 10
    iget-object v1, v3, Le/a/l/p2/s1$b;->r:Ljava/util/List;

    .line 11
    :cond_1
    invoke-static {v0, v2, p1, v1}, Le/a/l/v2/h/g;->Ij(Le/a/l/v2/h/g;Le/a/l/n2/f;Ljava/lang/String;Ljava/util/List;)V

    .line 12
    iget-object p1, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    .line 13
    iget-object p1, p1, Le/a/l/v2/h/g;->o:Le/a/z4/d;

    .line 14
    iget-object v0, p0, Le/a/l/v2/h/g$b;->c:Le/a/l/n2/f;

    invoke-static {v0}, Le/a/c/p/a;->h1(Le/a/l/n2/f;)Z

    move-result v0

    const-string v1, "premiumHasConsumable"

    invoke-interface {p1, v1, v0}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget-object p1, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    .line 16
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/v2/h/d;

    if-eqz p1, :cond_c

    .line 17
    invoke-interface {p1}, Le/a/l/v2/h/d;->a3()V

    goto/16 :goto_0

    .line 18
    :cond_2
    instance-of v0, p1, Le/a/l/p2/p1$a;

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 19
    iget-object p1, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    .line 20
    iget-object p1, p1, Le/a/l/v2/h/g;->h:Le/a/l/p2/v0;

    .line 21
    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    iget-object p1, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    .line 23
    iget-object p1, p1, Le/a/l/v2/h/g;->m:Le/a/l/c2;

    .line 24
    iget-object v0, p0, Le/a/l/v2/h/g$b;->c:Le/a/l/n2/f;

    .line 25
    iget-object v0, v0, Le/a/l/n2/f;->f:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    move v2, v3

    :cond_3
    invoke-interface {p1, v2}, Le/a/l/c2;->H0(Z)V

    .line 27
    iget-object p1, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    .line 28
    invoke-virtual {p1}, Le/a/l/v2/h/g;->Mj()V

    goto/16 :goto_0

    .line 29
    :cond_4
    iget-object p1, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    .line 30
    iget-object v0, p1, Le/a/l/v2/h/g;->d:Le/a/l/p2/s1$b;

    if-eqz v0, :cond_c

    .line 31
    iget-object v1, p1, Le/a/l/v2/h/g;->p:Le/a/l/o2/e;

    .line 32
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/v2/h/d;

    .line 33
    iget-object v2, p0, Le/a/l/v2/h/g$b;->c:Le/a/l/n2/f;

    invoke-virtual {v1, p1, v2, v0}, Le/a/l/o2/e;->a(Le/a/l/o2/h;Le/a/l/n2/f;Le/a/l/p2/s1$b;)V

    goto/16 :goto_0

    .line 34
    :cond_5
    instance-of v0, p1, Le/a/l/p2/p1$i;

    if-eqz v0, :cond_6

    .line 35
    iget-object p1, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    .line 36
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/v2/h/d;

    if-eqz p1, :cond_c

    .line 37
    invoke-interface {p1, v2}, Le/a/l/v2/h/d;->g2(Z)V

    goto :goto_0

    .line 38
    :cond_6
    instance-of v0, p1, Le/a/l/p2/p1$d;

    const-string v4, "resourceProvider.getString(R.string.ErrorGeneral)"

    const v5, 0x7f12027f

    if-eqz v0, :cond_a

    .line 39
    check-cast p1, Le/a/l/p2/p1$d;

    .line 40
    iget-boolean p1, p1, Le/a/l/p2/p1$d;->a:Z

    if-eqz p1, :cond_c

    .line 41
    iget-object p1, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    iget-object v0, p0, Le/a/l/v2/h/g$b;->c:Le/a/l/n2/f;

    .line 42
    iget-object v6, v0, Le/a/l/n2/f;->a:Ljava/lang/String;

    .line 43
    iget-object v7, p1, Le/a/l/v2/h/g;->d:Le/a/l/p2/s1$b;

    if-eqz v7, :cond_7

    .line 44
    iget-object v1, v7, Le/a/l/p2/s1$b;->r:Ljava/util/List;

    .line 45
    :cond_7
    invoke-static {p1, v0, v6, v1}, Le/a/l/v2/h/g;->Ij(Le/a/l/v2/h/g;Le/a/l/n2/f;Ljava/lang/String;Ljava/util/List;)V

    .line 46
    iget-object p1, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    .line 47
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/v2/h/d;

    if-eqz p1, :cond_8

    .line 48
    invoke-interface {p1, v2}, Le/a/l/v2/h/d;->g2(Z)V

    .line 49
    :cond_8
    iget-object p1, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    .line 50
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/v2/h/d;

    if-eqz v0, :cond_9

    .line 51
    iget-object p1, p1, Le/a/l/v2/h/g;->k:Le/a/p5/h0;

    new-array v1, v2, [Ljava/lang/Object;

    .line 52
    invoke-interface {p1, v5, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/l/v2/h/d;->setErrorMessage(Ljava/lang/String;)V

    .line 53
    :cond_9
    iget-object p1, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    .line 54
    iget-object p1, p1, Le/a/l/v2/h/g;->m:Le/a/l/c2;

    .line 55
    invoke-interface {p1, v3}, Le/a/l/c2;->y0(Z)V

    goto :goto_0

    .line 56
    :cond_a
    iget-object p1, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    .line 57
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/v2/h/d;

    if-eqz p1, :cond_b

    .line 58
    invoke-interface {p1, v2}, Le/a/l/v2/h/d;->g2(Z)V

    .line 59
    :cond_b
    iget-object p1, p0, Le/a/l/v2/h/g$b;->b:Le/a/l/v2/h/g;

    .line 60
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/v2/h/d;

    if-eqz v0, :cond_c

    .line 61
    iget-object p1, p1, Le/a/l/v2/h/g;->k:Le/a/p5/h0;

    new-array v1, v2, [Ljava/lang/Object;

    .line 62
    invoke-interface {p1, v5, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/l/v2/h/d;->setErrorMessage(Ljava/lang/String;)V

    .line 63
    :cond_c
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
