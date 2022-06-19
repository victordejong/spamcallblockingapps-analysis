.class public final Ls1/a/a/a/v0/m/i$a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/m/i$a;-><init>(Ls1/a/a/a/v0/m/i;Ls1/a/a/a/v0/m/l1/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ls1/a/a/a/v0/m/e0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/i$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/i$a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/m/i$a$a;->b:Ls1/a/a/a/v0/m/i$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/i$a$a;->b:Ls1/a/a/a/v0/m/i$a;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/m/i$a;->b:Ls1/a/a/a/v0/m/l1/e;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/m/i$a;->c:Ls1/a/a/a/v0/m/i;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/i;->k()Ljava/util/List;

    move-result-object v0

    .line 4
    sget-object v2, Ls1/a/a/a/v0/m/l1/f;->a:Ls1/a/a/a/v0/b/z;

    const-string v2, "$this$refineTypes"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "types"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ls1/a/a/a/v0/m/e0;

    .line 8
    invoke-virtual {v1, v3}, Ls1/a/a/a/v0/m/l1/e;->g(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method
