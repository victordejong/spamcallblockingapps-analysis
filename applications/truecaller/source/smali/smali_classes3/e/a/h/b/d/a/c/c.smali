.class public final Le/a/h/b/d/a/c/c;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/h/b/d/a/c/b;",
        ">;",
        "Le/a/h/b/d/a/c/a;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/n4/c/d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Le/a/n4/c/d;

.field public final d:Le/a/h/b/d/a/c/b$b;


# direct methods
.method public constructor <init>(Le/a/h/b/d/a/c/b$b;Le/a/u3/g;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h/b/d/a/c/b$b;",
            "Le/a/u3/g;",
            "Ljava/util/Set<",
            "Le/a/n4/c/d;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoRefresher"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promoProviders"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/h/b/d/a/c/c;->d:Le/a/h/b/d/a/c/b$b;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p3, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Le/a/n4/c/d;

    .line 5
    invoke-interface {v0}, Le/a/n4/c/d;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ls1/k;

    invoke-direct {v2, v1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Le/a/h/b/d/a/c/c;->b:Ljava/util/Map;

    .line 8
    iget-object p1, p2, Le/a/u3/g;->O1:Le/a/u3/g$a;

    sget-object p3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v0, 0x90

    aget-object p3, p3, v0

    invoke-virtual {p1, p2, p3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    check-cast p1, Le/a/u3/i;

    .line 9
    invoke-interface {p1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    .line 10
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x6

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0, p3}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 13
    check-cast p3, Ljava/lang/String;

    .line 14
    iget-object v0, p0, Le/a/h/b/d/a/c/c;->b:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/n4/c/d;

    if-eqz p3, :cond_1

    .line 15
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Le/a/n4/c/d;

    .line 17
    invoke-interface {p3}, Le/a/n4/c/d;->d()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 18
    :goto_2
    check-cast p2, Le/a/n4/c/d;

    iput-object p2, p0, Le/a/h/b/d/a/c/c;->c:Le/a/n4/c/d;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/h/b/d/a/c/b;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/h/b/d/a/c/c;->c:Le/a/n4/c/d;

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Le/a/n4/c/d;->getTitle()I

    move-result v0

    invoke-interface {p1, v0}, Le/a/h/b/d/a/c/b;->setTitle(I)V

    .line 5
    invoke-interface {p2}, Le/a/n4/c/d;->getIcon()I

    move-result v0

    invoke-interface {p1, v0}, Le/a/h/b/d/a/c/b;->setIcon(I)V

    .line 6
    invoke-interface {p2}, Le/a/n4/c/d;->c()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/c/c;->c:Le/a/n4/c/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/n4/c/d;->a(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/a/h/b/d/a/c/c;->c:Le/a/n4/c/d;

    .line 3
    iget-object p1, p0, Le/a/h/b/d/a/c/c;->d:Le/a/h/b/d/a/c/b$b;

    invoke-interface {p1}, Le/a/h/b/d/a/c/b$b;->H2()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/c/c;->c:Le/a/n4/c/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/n4/c/d;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/h/b/d/a/c/c;->c:Le/a/n4/c/d;

    .line 3
    iget-object v0, p0, Le/a/h/b/d/a/c/c;->d:Le/a/h/b/d/a/c/b$b;

    invoke-interface {v0}, Le/a/h/b/d/a/c/b$b;->H2()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/c/c;->c:Le/a/n4/c/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method
