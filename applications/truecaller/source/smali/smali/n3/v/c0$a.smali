.class public Ln3/v/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/v/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ln3/v/u$b;

.field public b:Ln3/v/z;


# direct methods
.method public constructor <init>(Ln3/v/a0;Ln3/v/u$b;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ln3/v/f0;->a:Ljava/util/Map;

    .line 3
    instance-of v0, p1, Ln3/v/z;

    .line 4
    instance-of v1, p1, Ln3/v/s;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 5
    new-instance v0, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    move-object v1, p1

    check-cast v1, Ln3/v/s;

    check-cast p1, Ln3/v/z;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Ln3/v/s;Ln3/v/z;)V

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 6
    new-instance v0, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    check-cast p1, Ln3/v/s;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Ln3/v/s;Ln3/v/z;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    move-object v0, p1

    check-cast v0, Ln3/v/z;

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ln3/v/f0;->c(Ljava/lang/Class;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 10
    sget-object v1, Ln3/v/f0;->b:Ljava/util/Map;

    .line 11
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 14
    invoke-static {v0, p1}, Ln3/v/f0;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Ln3/v/t;

    move-result-object p1

    .line 15
    new-instance v0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    invoke-direct {v0, p1}, Landroidx/lifecycle/SingleGeneratedAdapterObserver;-><init>(Ln3/v/t;)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ln3/v/t;

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    invoke-static {v3, p1}, Ln3/v/f0;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Ln3/v/t;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_4
    new-instance v0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    invoke-direct {v0, v1}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Ln3/v/t;)V

    goto :goto_1

    .line 20
    :cond_5
    new-instance v0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    invoke-direct {v0, p1}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    .line 21
    :goto_1
    iput-object v0, p0, Ln3/v/c0$a;->b:Ln3/v/z;

    .line 22
    iput-object p2, p0, Ln3/v/c0$a;->a:Ln3/v/u$b;

    return-void
.end method


# virtual methods
.method public a(Ln3/v/b0;Ln3/v/u$a;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ln3/v/u$a;->a()Ln3/v/u$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/v/c0$a;->a:Ln3/v/u$b;

    invoke-static {v1, v0}, Ln3/v/c0;->f(Ln3/v/u$b;Ln3/v/u$b;)Ln3/v/u$b;

    move-result-object v1

    iput-object v1, p0, Ln3/v/c0$a;->a:Ln3/v/u$b;

    .line 3
    iget-object v1, p0, Ln3/v/c0$a;->b:Ln3/v/z;

    invoke-interface {v1, p1, p2}, Ln3/v/z;->c7(Ln3/v/b0;Ln3/v/u$a;)V

    .line 4
    iput-object v0, p0, Ln3/v/c0$a;->a:Ln3/v/u$b;

    return-void
.end method
