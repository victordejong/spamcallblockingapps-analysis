.class public Ln3/n/e;
.super Ln3/n/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ln3/n/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/n/d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ln3/n/d;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln3/n/e;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ln3/n/e;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ln3/n/e;->c:Ljava/util/List;

    .line 5
    new-instance v0, Le/a/v1;

    invoke-direct {v0}, Le/a/v1;-><init>()V

    invoke-virtual {p0, v0}, Ln3/n/e;->a(Ln3/n/d;)V

    .line 6
    iget-object v0, p0, Ln3/n/e;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.truecaller.callhero_assistant"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".DataBinderMapperImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Ln3/n/e;->c:Ljava/util/List;

    const-string v1, "com.truecaller.banuba.DataBinderMapperImpl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/n/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/n/d;

    .line 2
    invoke-virtual {v1, p1}, Ln3/n/d;->convertBrIdToString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ln3/n/e;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0, p1}, Ln3/n/e;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Ln3/n/f;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/n/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/n/d;

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Ln3/n/d;->getDataBinder(Ln3/n/f;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ln3/n/e;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0, p1, p2, p3}, Ln3/n/e;->c(Ln3/n/f;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Ln3/n/f;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/n/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/n/d;

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Ln3/n/d;->getDataBinder(Ln3/n/f;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ln3/n/e;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0, p1, p2, p3}, Ln3/n/e;->d(Ln3/n/f;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/n/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/n/d;

    .line 2
    invoke-virtual {v1, p1}, Ln3/n/d;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ln3/n/e;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0, p1}, Ln3/n/e;->e(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Ln3/n/d;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/n/e;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/n/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p1}, Ln3/n/d;->collectDependencies()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/n/d;

    .line 6
    invoke-virtual {p0, v0}, Ln3/n/e;->a(Ln3/n/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic convertBrIdToString(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Ln3/n/e;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f()Z
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/n/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 3
    const-class v4, Ln3/n/d;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/n/d;

    invoke-virtual {p0, v3}, Ln3/n/e;->a(Ln3/n/d;)V

    .line 5
    iget-object v3, p0, Ln3/n/e;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public bridge synthetic getDataBinder(Ln3/n/f;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ln3/n/e;->c(Ln3/n/f;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDataBinder(Ln3/n/f;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ln3/n/e;->d(Ln3/n/f;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getLayoutId(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Ln3/n/e;->e(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
