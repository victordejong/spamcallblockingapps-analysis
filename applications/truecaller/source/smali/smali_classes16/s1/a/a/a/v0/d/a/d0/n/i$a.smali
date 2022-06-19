.class public final Ls1/a/a/a/v0/d/a/d0/n/i$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/i;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ls1/a/a/a/v0/d/b/l;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/i;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/i;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/i$a;->b:Ls1/a/a/a/v0/d/a/d0/n/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/i$a;->b:Ls1/a/a/a/v0/d/a/d0/n/i;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/d/a/d0/n/i;->f:Ls1/a/a/a/v0/d/a/d0/h;

    .line 3
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 4
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/c;->l:Ls1/a/a/a/v0/d/b/q;

    .line 5
    iget-object v0, v0, Ls1/a/a/a/v0/b/h1/c0;->e:Ls1/a/a/a/v0/f/b;

    .line 6
    invoke-virtual {v0}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fqName.asString()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ls1/a/a/a/v0/d/b/q;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-static {v2}, Ls1/a/a/a/v0/j/w/b;->d(Ljava/lang/String;)Ls1/a/a/a/v0/j/w/b;

    move-result-object v3

    const-string v4, "JvmClassName.byInternalName(partName)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v4, Ls1/a/a/a/v0/f/b;

    iget-object v3, v3, Ls1/a/a/a/v0/j/w/b;->a:Ljava/lang/String;

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {v4}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v3

    const-string v4, "ClassId.topLevel(JvmClas\u2026velClassMaybeWithDollars)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v4, p0, Ls1/a/a/a/v0/d/a/d0/n/i$a;->b:Ls1/a/a/a/v0/d/a/d0/n/i;

    .line 14
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/n/i;->f:Ls1/a/a/a/v0/d/a/d0/h;

    .line 15
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 16
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/c;->c:Ls1/a/a/a/v0/d/b/k;

    .line 17
    invoke-static {v4, v3}, Le/q/f/a/d/a;->q0(Ls1/a/a/a/v0/d/b/k;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/d/b/l;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 18
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    .line 19
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_2
    invoke-static {v1}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
