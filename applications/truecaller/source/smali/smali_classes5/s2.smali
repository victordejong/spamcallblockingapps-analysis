.class public final Ls2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Ls2;->b:I

    iput-object p2, p0, Ls2;->c:Ljava/lang/Object;

    iput-object p3, p0, Ls2;->d:Ljava/lang/Object;

    iput-object p4, p0, Ls2;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Ls2;->b:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v1, p0, Ls2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/t3/c/e$d;

    .line 3
    iput-boolean p1, v1, Le/a/t3/c/e$d;->e:Z

    .line 4
    iget-object v1, p0, Ls2;->d:Ljava/lang/Object;

    check-cast v1, Le/a/t3/c/k;

    .line 5
    iget-object v1, v1, Le/a/t3/c/k;->b:Lo3/a;

    .line 6
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/t3/c/g$a;

    iget-object v2, p0, Ls2;->c:Ljava/lang/Object;

    check-cast v2, Le/a/t3/c/e$d;

    .line 7
    iget-object v2, v2, Le/a/t3/c/e$d;->c:Ljava/lang/String;

    .line 8
    invoke-interface {v1, v2, p1}, Le/a/t3/c/g$a;->l2(Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 9
    throw p1

    .line 10
    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 11
    iget-object v1, p0, Ls2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/t3/c/e$d;

    .line 12
    iput-boolean p1, v1, Le/a/t3/c/e$d;->d:Z

    .line 13
    iget-object v1, p0, Ls2;->d:Ljava/lang/Object;

    check-cast v1, Le/a/t3/c/k;

    .line 14
    iget-object v1, v1, Le/a/t3/c/k;->b:Lo3/a;

    .line 15
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/t3/c/g$a;

    iget-object v2, p0, Ls2;->c:Ljava/lang/Object;

    check-cast v2, Le/a/t3/c/e$d;

    .line 16
    iget-object v2, v2, Le/a/t3/c/e$d;->a:Lcom/truecaller/featuretoggles/FeatureKey;

    .line 17
    invoke-interface {v1, v2, p1}, Le/a/t3/c/g$a;->Gd(Lcom/truecaller/featuretoggles/FeatureKey;Z)V

    return-object v0

    .line 18
    :cond_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 19
    iget-object v1, p0, Ls2;->d:Ljava/lang/Object;

    check-cast v1, Le/a/t3/c/k;

    .line 20
    iget-object v1, v1, Le/a/t3/c/k;->c:Le/a/c/b/f;

    .line 21
    iget-object v2, p0, Ls2;->c:Ljava/lang/Object;

    check-cast v2, Le/a/t3/c/e$d;

    .line 22
    iget-object v2, v2, Le/a/t3/c/e$d;->c:Ljava/lang/String;

    .line 23
    invoke-interface {v1, v2, p1}, Le/a/c/b/f;->d(Ljava/lang/String;Z)V

    return-object v0
.end method
