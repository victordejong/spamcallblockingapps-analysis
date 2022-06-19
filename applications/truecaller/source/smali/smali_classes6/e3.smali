.class public final Le3;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le3;->b:I

    iput-object p2, p0, Le3;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Le3;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Le3;->c:Ljava/lang/Object;

    check-cast v0, Le/a/o2/u;

    .line 3
    iget-object v1, v0, Le/a/o2/u;->g:Le/a/o2/t;

    .line 4
    iget-object v2, v0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 5
    invoke-interface {v2}, Le/a/o2/a;->getItemCount()I

    move-result v2

    .line 6
    iget-object v3, p0, Le3;->c:Ljava/lang/Object;

    check-cast v3, Le/a/o2/u;

    .line 7
    iget-object v3, v3, Le/a/o2/u;->f:Le/a/o2/a;

    .line 8
    invoke-interface {v3}, Le/a/o2/a;->getItemCount()I

    move-result v3

    .line 9
    invoke-interface {v1, p1, v2, v3}, Le/a/o2/t;->b(III)I

    move-result p1

    .line 10
    invoke-virtual {v0, p1}, Le/a/o2/u;->j(I)I

    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 12
    throw p1

    .line 13
    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 14
    iget-object v0, p0, Le3;->c:Ljava/lang/Object;

    check-cast v0, Le/a/o2/u;

    .line 15
    iget-object v1, v0, Le/a/o2/u;->g:Le/a/o2/t;

    .line 16
    iget-object v2, v0, Le/a/o2/u;->e:Le/a/o2/a;

    .line 17
    invoke-interface {v2}, Le/a/o2/a;->getItemCount()I

    move-result v2

    .line 18
    iget-object v3, p0, Le3;->c:Ljava/lang/Object;

    check-cast v3, Le/a/o2/u;

    .line 19
    iget-object v3, v3, Le/a/o2/u;->f:Le/a/o2/a;

    .line 20
    invoke-interface {v3}, Le/a/o2/a;->getItemCount()I

    move-result v3

    .line 21
    invoke-interface {v1, p1, v2, v3}, Le/a/o2/t;->a(III)I

    move-result p1

    .line 22
    invoke-virtual {v0, p1}, Le/a/o2/u;->j(I)I

    move-result p1

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
