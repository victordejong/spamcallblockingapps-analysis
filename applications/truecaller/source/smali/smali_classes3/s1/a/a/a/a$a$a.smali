.class public final Ls1/a/a/a/a$a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/a$a;-><init>(Ls1/a/a/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Collection<",
        "+",
        "Ls1/a/a/a/g<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ls1/a/a/a/a$a$a;->b:I

    iput-object p2, p0, Ls1/a/a/a/a$a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/a/a/a/n$b;->b:Ls1/a/a/a/n$b;

    sget-object v1, Ls1/a/a/a/n$b;->a:Ls1/a/a/a/n$b;

    iget v2, p0, Ls1/a/a/a/a$a$a;->b:I

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-ne v2, v1, :cond_0

    .line 1
    iget-object v1, p0, Ls1/a/a/a/a$a$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/a$a;

    iget-object v1, v1, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    invoke-virtual {v1}, Ls1/a/a/a/a;->v()Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ls1/a/a/a/n;->i(Ls1/a/a/a/v0/j/y/i;Ls1/a/a/a/n$b;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0

    .line 3
    :cond_1
    iget-object v1, p0, Ls1/a/a/a/a$a$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/a$a;

    iget-object v1, v1, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    invoke-virtual {v1}, Ls1/a/a/a/a;->u()Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ls1/a/a/a/n;->i(Ls1/a/a/a/v0/j/y/i;Ls1/a/a/a/n$b;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 4
    :cond_2
    iget-object v0, p0, Ls1/a/a/a/a$a$a;->c:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/a$a;

    iget-object v0, v0, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    invoke-virtual {v0}, Ls1/a/a/a/a;->v()Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ls1/a/a/a/n;->i(Ls1/a/a/a/v0/j/y/i;Ls1/a/a/a/n$b;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 5
    :cond_3
    iget-object v0, p0, Ls1/a/a/a/a$a$a;->c:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/a$a;

    iget-object v0, v0, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    invoke-virtual {v0}, Ls1/a/a/a/a;->u()Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ls1/a/a/a/n;->i(Ls1/a/a/a/v0/j/y/i;Ls1/a/a/a/n$b;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
