.class public final Le/a/a/e/b$b;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/b;->jm(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/e/b$b;->b:I

    iput-object p2, p0, Le/a/a/e/b$b;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/a/e/b$b;->b:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1
    iget-object v1, p0, Le/a/a/e/b$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/e/b;

    invoke-virtual {v1}, Le/a/a/e/b;->PA()Le/a/a/e/u;

    move-result-object v1

    invoke-interface {v1}, Le/a/a/e/u;->g3()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/a/e/b$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/e/b;

    invoke-virtual {v1}, Le/a/a/e/b;->PA()Le/a/a/e/u;

    move-result-object v1

    invoke-interface {v1}, Le/a/a/e/u;->c6()V

    return-object v0

    .line 4
    :cond_2
    iget-object v1, p0, Le/a/a/e/b$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/e/b;

    invoke-virtual {v1}, Le/a/a/e/b;->PA()Le/a/a/e/u;

    move-result-object v1

    invoke-interface {v1}, Le/a/a/e/u;->e9()V

    return-object v0
.end method
