.class public final Le/a/d/e$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/e;-><init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
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

    iput p1, p0, Le/a/d/e$a;->b:I

    iput-object p2, p0, Le/a/d/e$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Le/a/d/e$a;->b:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/d/e$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d/e;

    .line 2
    iget-object v0, v0, Le/a/d/e;->g:Lo3/a;

    .line 3
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d4/c;

    sget-object v1, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {v0, v1}, Le/a/d4/c;->d(Le/a/d4/e;)Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/d/e$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d/e;

    .line 7
    iget-object v0, v0, Le/a/d/e;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x5b09653

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "debug"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    sget-object v0, Le/a/d/h;->a:Ljava/util/List;

    .line 11
    sget-object v2, Le/a/d/h;->b:Ljava/util/List;

    .line 12
    invoke-static {v0, v2}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 13
    :cond_3
    :goto_0
    sget-object v0, Le/a/d/h;->a:Ljava/util/List;

    .line 14
    :goto_1
    iget-object v2, p0, Le/a/d/e$a;->c:Ljava/lang/Object;

    check-cast v2, Le/a/d/e;

    .line 15
    iget-object v2, v2, Le/a/d/e;->f:Lo3/a;

    .line 16
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->A()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Ls1/u/i;->K(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
