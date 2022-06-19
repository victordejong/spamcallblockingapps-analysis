.class public Le/a/t/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/p;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/t/a/u/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/a/t/a/k;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Le/a/t/a/k;->b:Landroid/content/Context;

    const-string v0, "emoji"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "recent_emojis"

    const-string v2, ""

    .line 5
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 8
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v2, "value"

    .line 9
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    goto :goto_3

    .line 11
    :cond_2
    sget-object v2, Le/a/t/a/u/i;->a:Ljava/util/concurrent/FutureTask;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/t/a/u/f;

    if-eqz v2, :cond_6

    .line 12
    iget-object v2, v2, Le/a/t/a/u/f;->a:Le/a/t/a/u/c;

    move v4, v1

    .line 13
    :goto_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 14
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v4, v6

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v4, v6, :cond_3

    .line 16
    iget-object p1, v2, Le/a/t/a/u/c;->a:Ljava/util/Map;

    .line 17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Le/a/t/a/u/d;

    goto :goto_3

    .line 18
    :cond_3
    iget-object v2, v2, Le/a/t/a/u/c;->b:Ljava/util/Map;

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/t/a/u/c;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-nez v3, :cond_5

    goto :goto_0

    .line 20
    :cond_5
    iget-object p1, p0, Le/a/t/a/k;->a:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :goto_4
    invoke-virtual {p0}, Le/a/t/a/k;->d()I

    move-result p1

    const/16 v2, 0x28

    if-le p1, v2, :cond_0

    .line 22
    iget-object p1, p0, Le/a/t/a/k;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 23
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Emoji data loader has not been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Le/a/t/a/k;->d()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "emoji"

    if-ge v3, v1, :cond_2

    .line 3
    iget-object v5, p0, Le/a/t/a/k;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/t/a/u/d;

    if-eqz v5, :cond_0

    .line 4
    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v4, v5, Le/a/t/a/u/d;->a:[I

    .line 6
    array-length v5, v4

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v2, v5}, Ljava/lang/String;-><init>([III)V

    .line 7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1

    const-string v4, ","

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Le/a/t/a/k;->b:Landroid/content/Context;

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "recent_emojis"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/k;->a:Ljava/util/List;

    return-object v0
.end method

.method public c(Le/a/t/a/u/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t/a/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Le/a/t/a/k;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Le/a/t/a/k;->d()I

    move-result p1

    const/16 v0, 0x28

    if-le p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Le/a/t/a/k;->a:Ljava/util/List;

    invoke-virtual {p0}, Le/a/t/a/k;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
