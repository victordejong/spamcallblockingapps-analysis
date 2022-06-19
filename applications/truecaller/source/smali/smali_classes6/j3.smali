.class public final Lj3;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
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

    iput p1, p0, Lj3;->b:I

    iput-object p2, p0, Lj3;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lj3;->b:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1
    iget-object v1, p0, Lj3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/g/o$b;

    iget-object v1, v1, Le/a/l/g/o$b;->b:Le/a/l/g/o;

    .line 2
    invoke-virtual {v1}, Le/a/l/g/o;->Ij()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0

    .line 4
    :cond_1
    iget-object v1, p0, Lj3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/g/o$b;

    iget-object v1, v1, Le/a/l/g/o$b;->b:Le/a/l/g/o;

    .line 5
    iget-object v2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/l/g/m;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Le/a/l/g/m;->yx()V

    .line 6
    :cond_2
    invoke-virtual {v1}, Le/a/l/g/o;->Ij()V

    return-object v0

    .line 7
    :cond_3
    iget-object v1, p0, Lj3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/l/g/o$b;

    iget-object v1, v1, Le/a/l/g/o$b;->b:Le/a/l/g/o;

    .line 8
    iget-object v2, v1, Le/a/l/g/o;->p:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 9
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/l/g/m;

    if-eqz v3, :cond_4

    invoke-interface {v3, v2}, Le/a/l/g/m;->e5(Ljava/lang/String;)V

    .line 10
    :cond_4
    invoke-virtual {v1}, Le/a/l/g/o;->Ij()V

    :cond_5
    return-object v0
.end method
