.class public final Lw1;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/o2/u$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lw1;->b:I

    iput-object p2, p0, Lw1;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lw1;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    new-instance v0, Le/a/o2/u$a;

    iget-object v1, p0, Lw1;->c:Ljava/lang/Object;

    check-cast v1, Le/a/o2/u;

    .line 2
    iget-object v2, v1, Le/a/o2/u;->a:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/z/b/a;

    .line 3
    invoke-direct {v0, v1, v2}, Le/a/o2/u$a;-><init>(Le/a/o2/u;Ls1/z/b/a;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0

    .line 5
    :cond_1
    new-instance v0, Le/a/o2/u$a;

    iget-object v1, p0, Lw1;->c:Ljava/lang/Object;

    check-cast v1, Le/a/o2/u;

    .line 6
    iget-object v2, v1, Le/a/o2/u;->a:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/z/b/a;

    .line 7
    invoke-direct {v0, v1, v2}, Le/a/o2/u$a;-><init>(Le/a/o2/u;Ls1/z/b/a;)V

    return-object v0
.end method
