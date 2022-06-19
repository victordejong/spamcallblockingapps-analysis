.class public final Le/a/e/a/y3$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/y3;->SA(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e/a/y3;


# direct methods
.method public constructor <init>(Le/a/e/a/y3;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/y3$a;->b:Le/a/e/a/y3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 2
    new-instance p1, Ls1/d0/i;

    iget-object v0, p0, Le/a/e/a/y3$a;->b:Le/a/e/a/y3;

    .line 3
    iget-object v0, v0, Le/a/e/a/y3;->a:Ljava/util/Random;

    const/16 v1, 0xa

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-direct {p1, v2, v0}, Ls1/d0/i;-><init>(II)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-virtual {p1}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object v3, p1

    check-cast v3, Ls1/d0/h;

    invoke-virtual {v3}, Ls1/d0/h;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Ls1/u/z;

    invoke-virtual {v3}, Ls1/u/z;->a()I

    .line 7
    iget-object v3, p0, Le/a/e/a/y3$a;->b:Le/a/e/a/y3;

    .line 8
    iget-object v3, v3, Le/a/e/a/y3;->a:Ljava/util/Random;

    .line 9
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 10
    invoke-static {v3, v2, v4}, Lw3/c/a/a/a/f;->a(IZZ)Ljava/lang/String;

    move-result-object v3

    const-string v4, "RandomStringUtils.random\u2026Int(MAX_WORD_LENGTH) + 1)"

    .line 11
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v4

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    if-ltz v0, :cond_2

    .line 14
    check-cast v1, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 15
    invoke-static {v1}, Ls1/f0/r;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 p1, 0x0

    throw p1

    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    const-string v6, " "

    .line 17
    invoke-static/range {v5 .. v12}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 18
    iget-object v0, p0, Le/a/e/a/y3$a;->b:Le/a/e/a/y3;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Character;

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v4

    const/16 v3, 0x3f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x21

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 19
    iget-object v0, v0, Le/a/e/a/y3;->a:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
