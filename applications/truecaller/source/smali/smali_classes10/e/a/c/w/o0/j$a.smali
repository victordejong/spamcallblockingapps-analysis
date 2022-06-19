.class public final Le/a/c/w/o0/j$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/w/o0/j;->w(Le/a/c/g/v;)Z
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
.field public final synthetic b:Le/a/c/w/o0/j;

.field public final synthetic c:Le/a/c/g/v;


# direct methods
.method public constructor <init>(Le/a/c/w/o0/j;Le/a/c/g/v;)V
    .locals 0

    iput-object p1, p0, Le/a/c/w/o0/j$a;->b:Le/a/c/w/o0/j;

    iput-object p2, p0, Le/a/c/w/o0/j$a;->c:Le/a/c/g/v;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/c/w/o0/j$a;->b:Le/a/c/w/o0/j;

    .line 2
    iget-object v0, v0, Le/a/c/w/o0/j;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/c/r/g/c;

    .line 5
    invoke-virtual {v3}, Le/a/c/r/g/c;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Le/a/c/w/o0/j$a;->c:Le/a/c/g/v;

    .line 6
    iget-object v4, v4, Le/a/c/g/v;->b:Ljava/lang/String;

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 9
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/r/g/c;

    .line 10
    invoke-virtual {v0}, Le/a/c/r/g/c;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Le/a/c/w/o0/j$a;->c:Le/a/c/g/v;

    .line 11
    iget-object v1, v1, Le/a/c/g/v;->a:Ljava/lang/String;

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 13
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "configs"

    .line 14
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
