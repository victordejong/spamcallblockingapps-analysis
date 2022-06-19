.class public Le/q/f/a/e/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/q/f/a/e/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/q/f/a/e/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/q/f/a/e/b/c;->c:Z

    .line 3
    iput-boolean v0, p0, Le/q/f/a/e/b/c;->d:Z

    return-void
.end method


# virtual methods
.method public a(Le/q/f/a/e/b/a;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/q/f/a/e/b/c;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/q/f/a/e/b/c;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/q/f/a/e/b/c;->a:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Le/q/f/a/e/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/q/f/a/e/b/c;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/q/f/a/e/b/c;->b:Ljava/util/ArrayList;

    .line 7
    :cond_2
    iget-object v0, p0, Le/q/f/a/e/b/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Le/q/f/a/e/b/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/q/f/a/e/b/c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/q/f/a/e/b/c;->c:Z

    .line 3
    iput-boolean v0, p0, Le/q/f/a/e/b/c;->d:Z

    .line 4
    iget-object v0, p0, Le/q/f/a/e/b/c;->a:Ljava/util/ArrayList;

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Le/q/f/a/e/b/c;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Le/q/f/a/e/b/c;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Le/q/f/a/e/b/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Le/q/f/a/e/b/c;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Le/q/f/a/e/b/c;->b:Ljava/util/ArrayList;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Le/q/f/a/e/b/c;->d:Z

    .line 10
    iput-boolean v0, p0, Le/q/f/a/e/b/c;->c:Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Le/q/f/a/e/b/a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/q/f/a/e/b/c;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/q/f/a/e/b/a;

    return-object v0
.end method
