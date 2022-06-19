.class public Lcom/truecaller/network/search/BulkSearcherImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/g/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/network/search/BulkSearcherImpl$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Landroidx/recyclerview/widget/RecyclerView$g;

.field public final f:Landroid/os/Handler;

.field public final g:Le/a/p5/u;

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Le/a/f4/g/i$b;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Le/a/f4/g/p$c;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/f4/g/j$a;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Le/a/f4/g/j$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->j:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->k:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->l:Ljava/util/Map;

    .line 5
    new-instance v0, Lcom/truecaller/network/search/BulkSearcherImpl$a;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/truecaller/network/search/BulkSearcherImpl$a;-><init>(Lcom/truecaller/network/search/BulkSearcherImpl;I)V

    iput-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->m:Ljava/util/LinkedHashMap;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->n:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/truecaller/network/search/BulkSearcherImpl$b;

    invoke-direct {v0, p0}, Lcom/truecaller/network/search/BulkSearcherImpl$b;-><init>(Lcom/truecaller/network/search/BulkSearcherImpl;)V

    iput-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->o:Ljava/lang/Runnable;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->a:Landroid/content/Context;

    .line 9
    iput v1, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->b:I

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->c:I

    const/16 v0, 0x1f4

    .line 11
    iput v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->d:I

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->e:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->f:Landroid/os/Handler;

    .line 14
    iput p2, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->h:I

    .line 15
    iput-object p3, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->i:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, p4}, Lcom/truecaller/network/search/BulkSearcherImpl;->b(Le/a/f4/g/j$a;)V

    .line 17
    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->g:Le/a/p5/u;

    return-void
.end method

.method public static synthetic e(Lcom/truecaller/network/search/BulkSearcherImpl;Le/a/f4/g/p$c;)Le/a/f4/g/p$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->mListener:Le/a/f4/g/p$c;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Le/a/f4/g/j$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c(Le/a/f4/g/j$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p3, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->j:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->k:Ljava/util/Set;

    .line 2
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->m:Ljava/util/LinkedHashMap;

    .line 3
    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 4
    iget-object p3, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->l:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->c:I

    if-le p3, v0, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_3

    .line 6
    invoke-static {p1}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    const/16 p3, 0x14

    iget v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->h:I

    if-eq p3, v0, :cond_2

    .line 7
    invoke-static {p1}, Le/a/b0/q/c0;->h(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    iget-object p3, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->g:Le/a/p5/u;

    .line 8
    invoke-interface {p3}, Le/a/p5/u;->d()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->a:Landroid/content/Context;

    check-cast p3, Le/a/b0/g/a;

    .line 9
    invoke-virtual {p3}, Le/a/b0/g/a;->W()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 10
    iget-object p3, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->m:Ljava/util/LinkedHashMap;

    new-instance v0, Le/a/f4/g/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Le/a/f4/g/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->f:Landroid/os/Handler;

    iget-object p2, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->o:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object p1, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->f:Landroid/os/Handler;

    iget-object p2, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->o:Ljava/lang/Runnable;

    iget p3, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->d:I

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public f(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2
    iget-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->l:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v2, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->l:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->l:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->e:Landroidx/recyclerview/widget/RecyclerView$g;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/f4/g/j$a;

    .line 10
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Le/a/f4/g/j$a;->la(Ljava/util/Set;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public g(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2
    iget-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/f4/g/j$a;

    .line 3
    invoke-interface {v1, p1}, Le/a/f4/g/j$a;->g6(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-void
.end method
