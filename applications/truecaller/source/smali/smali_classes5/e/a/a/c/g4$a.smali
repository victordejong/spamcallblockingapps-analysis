.class public final synthetic Le/a/a/c/g4$a;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/g4;->Ij(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Ljava/lang/String;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/a/c/g4;)V
    .locals 7

    const-class v3, Le/a/a/c/g4;

    const/4 v1, 0x1

    const-string v4, "onContactTextReady"

    const-string v5, "onContactTextReady(Ljava/lang/String;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/g4;

    .line 3
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/k4;

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Le/a/a/c/g4;->Nj()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v0

    :goto_2
    xor-int/2addr v5, v0

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const-string v5, "\n\n"

    .line 8
    invoke-static/range {v4 .. v11}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    move v3, v0

    :cond_4
    if-eqz v3, :cond_5

    .line 10
    invoke-interface {v1, p1}, Le/a/a/c/k4;->Ri(Ljava/lang/String;)V

    .line 11
    invoke-interface {v1}, Le/a/a/c/k4;->qh()V

    .line 12
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
