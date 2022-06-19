.class public final Le/a/k4/n/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k4/n/a;


# instance fields
.field public final a:Le/a/q2/d1/d;


# direct methods
.method public constructor <init>(Le/a/q2/d1/d;)V
    .locals 1

    const-string v0, "firebaseAnalyticsWrapper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k4/n/d;->a:Le/a/q2/d1/d;

    return-void
.end method


# virtual methods
.method public a(Le/a/k4/n/f;)V
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k4/n/d;->a:Le/a/q2/d1/d;

    invoke-virtual {p1}, Le/a/k4/n/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p1}, Le/a/k4/n/f;->b()Ljava/util/Map;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, v1, v2}, Le/a/q2/d1/d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
