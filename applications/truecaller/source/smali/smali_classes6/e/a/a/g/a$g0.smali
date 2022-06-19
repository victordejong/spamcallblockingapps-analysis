.class public final Le/a/a/g/a$g0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a;->t(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/util/Map<",
        "Lcom/truecaller/messaging/data/types/InboxTab;",
        "Ljava/util/List<",
        "+",
        "Le/a/a/g/e0;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readUnreadThreadsCountCursor$2"
    f = "ReadMessageStorage.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/g/a;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/a/g/a;Ljava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/a$g0;->e:Le/a/a/g/a;

    iput-object p2, p0, Le/a/a/g/a$g0;->f:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/g/a$g0;

    iget-object v0, p0, Le/a/a/g/a$g0;->e:Le/a/a/g/a;

    iget-object v1, p0, Le/a/a/g/a$g0;->f:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/g/a$g0;-><init>(Le/a/a/g/a;Ljava/util/List;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/a/g/a$g0;->e:Le/a/a/g/a;

    iget-object v0, p0, Le/a/a/g/a$g0;->f:Ljava/util/List;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "date DESC"

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/InboxTab;

    .line 7
    iget-boolean v3, p1, Le/a/a/g/a;->h:Z

    if-eqz v3, :cond_0

    .line 8
    sget-object v3, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    if-ne v2, v3, :cond_0

    .line 9
    invoke-static {p1, v2}, Le/a/a/g/a;->K(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v1}, Le/a/a/g/a;->I(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 10
    sget-object v4, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-static {p1, v4}, Le/a/a/g/a;->K(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5, v1}, Le/a/a/g/a;->I(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 11
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1, v2}, Le/a/a/g/a;->K(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v1}, Le/a/a/g/a;->I(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "date DESC"

    .line 3
    iget-object v1, p0, Le/a/a/g/a$g0;->f:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/InboxTab;

    .line 5
    iget-object v3, p0, Le/a/a/g/a$g0;->e:Le/a/a/g/a;

    .line 6
    iget-boolean v4, v3, Le/a/a/g/a;->h:Z

    if-eqz v4, :cond_0

    .line 7
    sget-object v4, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    if-ne v2, v4, :cond_0

    .line 8
    invoke-static {v3, v2}, Le/a/a/g/a;->K(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4, v0}, Le/a/a/g/a;->I(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 9
    iget-object v4, p0, Le/a/a/g/a$g0;->e:Le/a/a/g/a;

    sget-object v5, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-static {v4, v5}, Le/a/a/g/a;->K(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v0}, Le/a/a/g/a;->I(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 10
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v3, v2}, Le/a/a/g/a;->K(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4, v0}, Le/a/a/g/a;->I(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p1
.end method
