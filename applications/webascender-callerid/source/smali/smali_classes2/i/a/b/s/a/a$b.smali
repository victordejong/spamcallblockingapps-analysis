.class Li/a/b/s/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/b/s/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final f:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Li/a/b/s/a/a$d<",
            "TK;>;TV;>;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Li/a/b/s/a/a$d<",
            "TK;>;TV;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic i:Li/a/b/s/a/a;


# direct methods
.method private constructor <init>(Li/a/b/s/a/a;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Li/a/b/s/a/a$d<",
            "TK;>;TV;>;>;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Li/a/b/s/a/a$b;->i:Li/a/b/s/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Li/a/b/s/a/a$b;->f:Ljava/util/Iterator;

    .line 4
    invoke-direct {p0}, Li/a/b/s/a/a$b;->a()V

    return-void
.end method

.method synthetic constructor <init>(Li/a/b/s/a/a;Ljava/util/Iterator;Li/a/b/s/a/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Li/a/b/s/a/a$b;-><init>(Li/a/b/s/a/a;Ljava/util/Iterator;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    :cond_0
    iget-object v0, p0, Li/a/b/s/a/a$b;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Li/a/b/s/a/a$b;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Li/a/b/s/a/a$b;->g:Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/b/s/a/a$d;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Li/a/b/s/a/a$b;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Li/a/b/s/a/a$b;->g:Ljava/util/Map$Entry;

    .line 5
    iput-object v0, p0, Li/a/b/s/a/a$b;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/a/b/s/a/a$b;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Li/a/b/s/a/a$c;

    iget-object v2, p0, Li/a/b/s/a/a$b;->i:Li/a/b/s/a/a;

    iget-object v3, p0, Li/a/b/s/a/a$b;->g:Ljava/util/Map$Entry;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Li/a/b/s/a/a$c;-><init>(Li/a/b/s/a/a;Ljava/lang/Object;Ljava/util/Map$Entry;Li/a/b/s/a/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-direct {p0}, Li/a/b/s/a/a$b;->a()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Li/a/b/s/a/a$b;->a()V

    .line 4
    throw v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/b/s/a/a$b;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/b/s/a/a$b;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
