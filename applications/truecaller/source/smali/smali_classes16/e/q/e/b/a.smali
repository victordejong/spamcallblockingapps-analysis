.class public abstract Le/q/e/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/q/e/b/a$b;,
        Le/q/e/b/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Le/q/e/b/a$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Le/q/e/b/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/q/e/b/a$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/q/e/b/a;->c:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/q/e/b/a;->a:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    .line 5
    new-instance p1, Le/q/e/b/a$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Le/q/e/b/a$b;-><init>(Le/q/e/b/a$a;)V

    iput-object p1, p0, Le/q/e/b/a;->d:Le/q/e/b/a$b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;JLjava/lang/String;)Z
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Le/q/e/b/a;->c:I

    const/4 v1, 0x1

    const-string v2, "delta"

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Le/q/e/c/a;->a()Le/q/e/c/a;

    .line 3
    sget-object v0, Le/q/e/c/a;->a:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    invoke-static {}, Le/q/e/c/a;->a()Le/q/e/c/a;

    .line 7
    sget-object v0, Le/q/e/c/a;->c:Lorg/json/JSONObject;

    const-string v1, "rules"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "rule"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    invoke-static {}, Le/q/e/c/a;->a()Le/q/e/c/a;

    .line 11
    sget-object v0, Le/q/e/c/a;->b:Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Ljava/util/List;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/HashMap<",
            "TT;",
            "Le/q/e/b/a$c<",
            "TT;>;>;)V"
        }
    .end annotation
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/Date;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/q/e/b/a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/q/e/b/a;->d:Le/q/e/b/a$b;

    .line 3
    invoke-virtual {v0, p1}, Le/q/e/b/a$b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/q/e/b/a;->d:Le/q/e/b/a$b;

    invoke-virtual {v0, p2}, Le/q/e/b/a$b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object p4, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Le/q/e/b/a$c;

    .line 6
    iget p4, p4, Le/q/e/b/a$c;->b:I

    if-ge p4, p3, :cond_1

    .line 7
    iget-object p4, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Le/q/e/b/a$c;

    .line 8
    iput p3, p4, Le/q/e/b/a$c;->b:I

    .line 9
    iget-object p3, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/q/e/b/a$c;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    iget-object p3, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/q/e/b/a$c;

    .line 11
    iget-object p3, p3, Le/q/e/b/a$c;->a:Ljava/util/List;

    .line 12
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 13
    iget-object p3, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/q/e/b/a$c;

    .line 14
    iget-object p3, p3, Le/q/e/b/a$c;->a:Ljava/util/List;

    .line 15
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p3, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/q/e/b/a$c;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 17
    :cond_2
    iget-object v0, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 18
    iget-object v3, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/e/b/a$c;

    .line 19
    iget v3, v3, Le/q/e/b/a$c;->b:I

    if-ne v3, p3, :cond_3

    .line 20
    iget-object v3, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    .line 21
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/e/b/a$c;

    .line 22
    iget-object v3, v3, Le/q/e/b/a$c;->a:Ljava/util/List;

    .line 23
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 24
    iget-object p3, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/q/e/b/a$c;

    .line 25
    iget-object p3, p3, Le/q/e/b/a$c;->a:Ljava/util/List;

    .line 26
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 27
    iget-object p3, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/q/e/b/a$c;

    .line 28
    iget-object p3, p3, Le/q/e/b/a$c;->a:Ljava/util/List;

    .line 29
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p3, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/q/e/b/a$c;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 31
    :cond_5
    iget-object v0, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    new-instance v2, Le/q/e/b/a$c;

    invoke-direct {v2, p3, p4}, Le/q/e/b/a$c;-><init>(ILjava/util/Date;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p3, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/q/e/b/a$c;

    .line 33
    iget-object p3, p3, Le/q/e/b/a$c;->a:Ljava/util/List;

    .line 34
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p3, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/q/e/b/a$c;

    .line 36
    iget-object p3, p3, Le/q/e/b/a$c;->a:Ljava/util/List;

    .line 37
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p3, p0, Le/q/e/b/a;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/q/e/b/a$c;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_6
    :goto_1
    iget-object p3, p0, Le/q/e/b/a;->d:Le/q/e/b/a$b;

    new-array p4, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p4, v0

    const/4 p1, 0x1

    aput-object p2, p4, p1

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 40
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 42
    iget-object p4, p3, Le/q/e/b/a$b;->a:Ljava/util/Map;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    return-void
.end method

.method public abstract e(Ljava/lang/String;JLjava/lang/String;)I
.end method
