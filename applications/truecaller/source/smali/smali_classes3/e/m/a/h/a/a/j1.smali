.class public final synthetic Le/m/a/h/a/a/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/a/o1;


# instance fields
.field public final synthetic a:Le/m/a/h/a/a/p1;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/a/p1;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/j1;->a:Le/m/a/h/a/a/p1;

    iput-object p2, p0, Le/m/a/h/a/a/j1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Le/m/a/h/a/a/j1;->a:Le/m/a/h/a/a/p1;

    iget-object v1, p0, Le/m/a/h/a/a/j1;->b:Ljava/util/List;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    .line 2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v0, Le/m/a/h/a/a/p1;->e:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/h/a/a/m1;

    .line 4
    iget-object v4, v3, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v4, v4, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    .line 5
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/h/a/a/m1;

    if-nez v5, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    .line 7
    :cond_1
    iget v5, v5, Le/m/a/h/a/a/m1;->a:I

    .line 8
    :goto_1
    iget v6, v3, Le/m/a/h/a/a/m1;->a:I

    if-ge v5, v6, :cond_0

    .line 9
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v2
.end method
