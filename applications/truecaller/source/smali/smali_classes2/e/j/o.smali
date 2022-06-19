.class public final synthetic Le/j/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Le/j/k0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Le/j/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/j/o;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Le/j/o;->b:Le/j/k0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/j/o;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Le/j/o;->b:Le/j/k0;

    const-string v2, "$callbacks"

    .line 1
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$requests"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 3
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/GraphRequest$b;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v4, "pair.second"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Le/j/l0;

    invoke-interface {v3, v2}, Lcom/facebook/GraphRequest$b;->a(Le/j/l0;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v1, Le/j/k0;->d:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/j/k0$a;

    .line 6
    invoke-interface {v2, v1}, Le/j/k0$a;->a(Le/j/k0;)V

    goto :goto_1

    :cond_1
    return-void
.end method
