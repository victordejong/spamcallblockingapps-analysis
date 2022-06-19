.class public final Le/a/h4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h4/i;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/a/h4/q/c;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationChannel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/h4/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/h4/k;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lo3/a;Le/a/h4/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Le/a/h4/q/c;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationChannel;",
            ">;>;",
            "Lo3/a<",
            "Le/a/h4/e;",
            ">;",
            "Le/a/h4/k;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "channels"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicChannelIdProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h4/j;->a:Ljava/util/Map;

    iput-object p2, p0, Le/a/h4/j;->b:Lo3/a;

    iput-object p3, p0, Le/a/h4/j;->c:Le/a/h4/k;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "channelKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h4/j;->a:Ljava/util/Map;

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/h4/q/c;

    .line 5
    iget-object v3, v3, Le/a/h4/q/c;->c:Ljava/lang/String;

    .line 6
    invoke-static {v3, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h4/q/c;

    .line 12
    invoke-virtual {p0, p1}, Le/a/h4/j;->c(Le/a/h4/q/c;)Z

    move-result p1

    return p1

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not find channel spec for "

    const-string v2, " key! maybe forgot to add proper provider in a dagger module!"

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "channelKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h4/j;->c:Le/a/h4/k;

    invoke-interface {v0, p1, p2}, Le/a/h4/k;->e2(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Le/a/h4/q/c;)Z
    .locals 2

    const-string v0, "channelSpec"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h4/j;->c:Le/a/h4/k;

    .line 2
    iget-object v1, p1, Le/a/h4/q/c;->c:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Le/a/h4/k;->s2(Ljava/lang/String;)I

    move-result v0

    .line 4
    iget p1, p1, Le/a/h4/q/c;->f:I

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Le/a/h4/q/c;Ls1/z/b/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h4/q/c;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/String;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "channelSpec"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCleanup"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Le/a/h4/q/c;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/h4/j;->c:Le/a/h4/k;

    .line 3
    iget-object v1, p1, Le/a/h4/q/c;->c:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1}, Le/a/h4/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/a/h4/j;->b:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h4/e;

    .line 6
    iget-object v2, p1, Le/a/h4/q/c;->c:Ljava/lang/String;

    .line 7
    invoke-interface {v1, v2}, Le/a/h4/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 9
    check-cast p2, Le/a/h4/o$b;

    invoke-virtual {p2, v0}, Le/a/h4/o$b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    iget-object p2, p0, Le/a/h4/j;->c:Le/a/h4/k;

    .line 11
    iget-object p1, p1, Le/a/h4/q/c;->c:Ljava/lang/String;

    .line 12
    invoke-interface {p2, p1, v1}, Le/a/h4/k;->w1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
