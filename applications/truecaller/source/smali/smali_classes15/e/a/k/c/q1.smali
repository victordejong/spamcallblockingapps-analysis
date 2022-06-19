.class public final Le/a/k/c/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/p1;


# instance fields
.field public a:Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;

.field public final b:Le/a/k/c/i1;

.field public final c:Le/a/k/c/r0;

.field public final d:Le/a/u3/g;

.field public final e:Le/a/p5/l;


# direct methods
.method public constructor <init>(Le/a/k/c/i1;Le/a/k/c/r0;Le/a/u3/g;Le/a/p5/l;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "videoCallerIdSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdAvailability"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gsonUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/q1;->b:Le/a/k/c/i1;

    iput-object p2, p0, Le/a/k/c/q1;->c:Le/a/k/c/r0;

    iput-object p3, p0, Le/a/k/c/q1;->d:Le/a/u3/g;

    iput-object p4, p0, Le/a/k/c/q1;->e:Le/a/p5/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "videoId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/c/q1;->b:Le/a/k/c/i1;

    const-string v1, "updatePromoVideoIdMap"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Le/a/p5/s0/g;->g0(Le/a/k/c/i1;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Le/a/k/c/q1;->e:Le/a/p5/l;

    const-class v3, Ljava/util/HashMap;

    invoke-interface {v2, v0, v3}, Le/a/p5/l;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/k/c/q1;->c:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/a/k/c/q1;->c:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/k/c/q1;->i()Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;->getVideoIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v1, p0, Le/a/k/c/q1;->b:Le/a/k/c/i1;

    const/4 v2, 0x2

    const-string v3, "updatePromoVideoIdMap"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Le/a/p5/s0/g;->g0(Le/a/k/c/i1;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, p0, Le/a/k/c/q1;->e:Le/a/p5/l;

    const-class v4, Ljava/util/HashMap;

    invoke-interface {v2, v1, v4}, Le/a/p5/l;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Le/a/k/c/q1;->e:Le/a/p5/l;

    invoke-interface {v0, v1}, Le/a/p5/l;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Le/a/k/c/q1;->b:Le/a/k/c/i1;

    invoke-interface {v1, v3, v0}, Le/a/k/c/i1;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    const-string v0, "videoId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/c/q1;->b:Le/a/k/c/i1;

    const-string v1, "updatePromoVideoIdMap"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Le/a/p5/s0/g;->g0(Le/a/k/c/i1;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Le/a/k/c/q1;->e:Le/a/p5/l;

    const-class v3, Ljava/util/HashMap;

    invoke-interface {v2, v0, v3}, Le/a/p5/l;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/k/c/q1;->b:Le/a/k/c/i1;

    iget-object v2, p0, Le/a/k/c/q1;->e:Le/a/p5/l;

    invoke-interface {v2, v0}, Le/a/p5/l;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Le/a/k/c/i1;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public i()Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/k/c/q1;->a:Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Le/a/k/c/q1;->d:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->W5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x16e

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 3
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    :try_start_0
    iget-object v1, p0, Le/a/k/c/q1;->e:Le/a/p5/l;

    const-class v2, Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;

    invoke-interface {v1, v0, v2}, Le/a/p5/l;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;

    if-eqz v0, :cond_2

    .line 6
    iput-object v0, p0, Le/a/k/c/q1;->a:Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 8
    :cond_2
    :goto_1
    iget-object v0, p0, Le/a/k/c/q1;->a:Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;

    return-object v0
.end method

.method public l()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/k/c/q1;->c:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/a/k/c/q1;->c:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/k/c/q1;->i()Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;->getVideoIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v2, p0, Le/a/k/c/q1;->b:Le/a/k/c/i1;

    const/4 v3, 0x2

    const-string v4, "updatePromoVideoIdMap"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3, v5}, Le/a/p5/s0/g;->g0(Le/a/k/c/i1;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v3, p0, Le/a/k/c/q1;->e:Le/a/p5/l;

    const-class v4, Ljava/util/HashMap;

    invoke-interface {v3, v2, v4}, Le/a/p5/l;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    return v1
.end method
