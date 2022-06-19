.class public final synthetic Le/a/c/g/y/i$d;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/g/y/i;->p(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;",
        ">;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/c/g/y/i;)V
    .locals 7

    const-class v3, Le/a/c/g/y/i;

    const/4 v1, 0x1

    const-string v4, "getCategorizerFromBackend"

    const-string v5, "getCategorizerFromBackend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ls1/w/d;

    .line 2
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/c/g/y/i;

    .line 3
    iget-object v1, v0, Le/a/c/g/y/i;->i:Le/a/c/s/a/a;

    .line 4
    iget-object v2, v0, Le/a/c/g/y/i;->g:Le/a/c/b/e;

    invoke-interface {v2}, Le/a/c/b/e;->f()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v0, v0, Le/a/c/g/y/i;->g:Le/a/c/b/e;

    invoke-interface {v0}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, v2, v0, v3, p1}, Le/a/c/s/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
