.class public final Le/m/b/x/d/h$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/x/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/m/b/x/d/h;


# direct methods
.method public constructor <init>(Le/m/b/x/d/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/x/d/h$c;->a:Le/m/b/x/d/h;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/b/x/d/h$c;->a:Le/m/b/x/d/h;

    iget-object v0, v0, Le/m/b/x/d/h;->b:Le/m/b/x/d/f;

    iget-object v0, v0, Le/m/b/x/d/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    iget-object v2, p0, Le/m/b/x/d/h$c;->a:Le/m/b/x/d/h;

    iget-object v2, v2, Le/m/b/x/d/h;->b:Le/m/b/x/d/f;

    invoke-virtual {v2, v1}, Le/m/b/x/d/f;->a(Ljava/lang/String;)Le/m/b/x/d/j;

    move-result-object v1

    iget-object v2, p0, Le/m/b/x/d/h$c;->a:Le/m/b/x/d/h;

    iget-object v2, v2, Le/m/b/x/d/h;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Le/m/b/x/d/j;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/b/x/d/h$c;->a:Le/m/b/x/d/h;

    iget-object v0, v0, Le/m/b/x/d/h;->b:Le/m/b/x/d/f;

    iget-object v0, v0, Le/m/b/x/d/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    iget-object v2, p0, Le/m/b/x/d/h$c;->a:Le/m/b/x/d/h;

    iget-object v2, v2, Le/m/b/x/d/h;->b:Le/m/b/x/d/f;

    invoke-virtual {v2, v1}, Le/m/b/x/d/f;->a(Ljava/lang/String;)Le/m/b/x/d/j;

    move-result-object v1

    iget-object v2, p0, Le/m/b/x/d/h$c;->a:Le/m/b/x/d/h;

    iget-object v2, v2, Le/m/b/x/d/h;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Le/m/b/x/d/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Le/m/b/x/d/h$b;

    iget-object v1, p0, Le/m/b/x/d/h$c;->a:Le/m/b/x/d/h;

    invoke-direct {v0, v1}, Le/m/b/x/d/h$b;-><init>(Le/m/b/x/d/h;)V

    return-object v0
.end method

.method public size()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/b/x/d/h$c;->a:Le/m/b/x/d/h;

    iget-object v0, v0, Le/m/b/x/d/h;->b:Le/m/b/x/d/f;

    iget-object v0, v0, Le/m/b/x/d/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2
    iget-object v3, p0, Le/m/b/x/d/h$c;->a:Le/m/b/x/d/h;

    iget-object v3, v3, Le/m/b/x/d/h;->b:Le/m/b/x/d/f;

    invoke-virtual {v3, v2}, Le/m/b/x/d/f;->a(Ljava/lang/String;)Le/m/b/x/d/j;

    move-result-object v2

    iget-object v3, p0, Le/m/b/x/d/h$c;->a:Le/m/b/x/d/h;

    iget-object v3, v3, Le/m/b/x/d/h;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Le/m/b/x/d/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
