.class public final Lcom/truecaller/util/background/qa/WorkActionStatusActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/util/background/qa/WorkActionStatusActivity$c;,
        Lcom/truecaller/util/background/qa/WorkActionStatusActivity$b;,
        Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001:\u0003\u000b\u001c\u0015B\u0007\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R4\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R(\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00130\u00078\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u000cR$\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00178\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u000cR\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/truecaller/util/background/qa/WorkActionStatusActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "",
        "Ljavax/inject/Provider;",
        "Le/a/y2/k;",
        "a",
        "Ljava/util/Map;",
        "getActionSpecs",
        "()Ljava/util/Map;",
        "setActionSpecs",
        "(Ljava/util/Map;)V",
        "actionSpecs",
        "Le/a/y2/g;",
        "",
        "",
        "c",
        "groupedActions",
        "",
        "Ln3/m0/x;",
        "d",
        "bucketStatus",
        "Ln3/m0/y;",
        "b",
        "Ln3/m0/y;",
        "getWorkManager",
        "()Ln3/m0/y;",
        "setWorkManager",
        "(Ln3/m0/y;)V",
        "workManager",
        "<init>",
        "()V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/a/y2/a;",
            "Ljavax/inject/Provider<",
            "Le/a/y2/k;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Ln3/m0/y;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/a/y2/g;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/a/y2/g;",
            "Ln3/m0/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    sget-object p1, Le/a/k2;->a:Le/a/k2$a;

    invoke-virtual {p1}, Le/a/k2$a;->a()Le/a/k2;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/k2;->h(Lcom/truecaller/util/background/qa/WorkActionStatusActivity;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity;->a:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 5
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Le/a/y2/a;

    .line 9
    new-instance v4, Le/a/y2/g;

    .line 10
    iget-object v5, v3, Le/a/y2/a;->d:Lcom/truecaller/background_work/WorkActionPeriod;

    .line 11
    iget-boolean v6, v3, Le/a/y2/a;->e:Z

    .line 12
    invoke-direct {v4, v5, v6}, Le/a/y2/g;-><init>(Lcom/truecaller/background_work/WorkActionPeriod;Z)V

    .line 13
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 14
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    :cond_0
    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 16
    :goto_1
    iget-object v3, v3, Le/a/y2/a;->c:Ljava/lang/String;

    .line 17
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_2
    iput-object v2, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity;->c:Ljava/util/Map;

    .line 20
    new-instance p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;

    invoke-direct {p1, p0}, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;-><init>(Lcom/truecaller/util/background/qa/WorkActionStatusActivity;)V

    .line 21
    iget-object v2, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity;->c:Ljava/util/Map;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 24
    check-cast v4, Le/a/y2/g;

    .line 25
    iget-object v5, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity;->b:Ln3/m0/y;

    if-eqz v5, :cond_3

    .line 26
    iget-object v6, v4, Le/a/y2/g;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {v5, v6}, Ln3/m0/y;->m(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v5

    .line 28
    new-instance v6, Ls1/k;

    invoke-direct {v6, v4, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string p1, "workManager"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/k;

    .line 31
    iget-object v3, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 32
    check-cast v3, Le/a/y2/g;

    .line 33
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 34
    check-cast v2, Landroidx/lifecycle/LiveData;

    .line 35
    new-instance v4, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$d;

    invoke-direct {v4, v3, p0, p1}, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$d;-><init>(Le/a/y2/g;Lcom/truecaller/util/background/qa/WorkActionStatusActivity;Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;)V

    invoke-virtual {v2, p0, v4}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    goto :goto_3

    .line 36
    :cond_5
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "Clicking on the work action will trigger it"

    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 41
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 42
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    return-void

    :cond_6
    const-string p1, "groupedActions"

    .line 47
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string p1, "actionSpecs"

    .line 48
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
