.class public final Le/a/w4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k3/d;


# instance fields
.field public final a:Le/a/a0/n;


# direct methods
.method public constructor <init>(Le/a/a0/n;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "spamCategoryFetcher"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w4/k;->a:Le/a/a0/n;

    return-void
.end method


# virtual methods
.method public a()Le/a/k3/c;
    .locals 7

    .line 1
    new-instance v0, Le/a/k3/c;

    .line 2
    new-instance v1, Le/a/k3/c$a;

    .line 3
    new-instance v2, Le/a/w4/j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Le/a/w4/j;-><init>(Le/a/w4/k;Ls1/w/d;)V

    const/4 v4, 0x1

    invoke-static {v3, v2, v4, v3}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    const/16 v3, 0xa

    .line 4
    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Le/q/f/a/d/a;->Y1(I)I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    move v3, v4

    .line 5
    :cond_0
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    move-object v5, v3

    check-cast v5, Lcom/truecaller/data/entity/SpamCategoryModel;

    .line 8
    invoke-virtual {v5}, Lcom/truecaller/data/entity/SpamCategoryModel;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {v1, v4}, Le/a/k3/c$a;-><init>(Ljava/util/Map;)V

    .line 10
    invoke-direct {v0, v1}, Le/a/k3/c;-><init>(Le/a/k3/c$a;)V

    return-object v0
.end method
