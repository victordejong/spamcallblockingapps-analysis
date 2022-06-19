.class public final Ln3/y/b/a/t0/j$b;
.super Ln3/y/b/a/t0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final e:I

.field public final f:I

.field public final g:[I

.field public final h:[I

.field public final i:[Ln3/y/b/a/l0;

.field public final j:[Ljava/lang/Object;

.field public final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ln3/y/b/a/t0/l0;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ln3/y/b/a/t0/j$e;",
            ">;",
            "Ln3/y/b/a/t0/l0;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p2}, Ln3/y/b/a/t0/a;-><init>(ZLn3/y/b/a/t0/l0;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 3
    new-array p3, p2, [I

    iput-object p3, p0, Ln3/y/b/a/t0/j$b;->g:[I

    .line 4
    new-array p3, p2, [I

    iput-object p3, p0, Ln3/y/b/a/t0/j$b;->h:[I

    .line 5
    new-array p3, p2, [Ln3/y/b/a/l0;

    iput-object p3, p0, Ln3/y/b/a/t0/j$b;->i:[Ln3/y/b/a/l0;

    .line 6
    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Ln3/y/b/a/t0/j$b;->j:[Ljava/lang/Object;

    .line 7
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Ln3/y/b/a/t0/j$b;->k:Ljava/util/HashMap;

    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/j$e;

    .line 9
    iget-object v2, p0, Ln3/y/b/a/t0/j$b;->i:[Ln3/y/b/a/l0;

    iget-object v3, v1, Ln3/y/b/a/t0/j$e;->a:Ln3/y/b/a/t0/r;

    .line 10
    iget-object v3, v3, Ln3/y/b/a/t0/r;->m:Ln3/y/b/a/t0/r$b;

    .line 11
    aput-object v3, v2, v0

    .line 12
    iget-object v3, p0, Ln3/y/b/a/t0/j$b;->h:[I

    aput p2, v3, v0

    .line 13
    iget-object v3, p0, Ln3/y/b/a/t0/j$b;->g:[I

    aput p3, v3, v0

    .line 14
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ln3/y/b/a/l0;->o()I

    move-result v2

    add-int/2addr p2, v2

    .line 15
    iget-object v2, p0, Ln3/y/b/a/t0/j$b;->i:[Ln3/y/b/a/l0;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ln3/y/b/a/l0;->i()I

    move-result v2

    add-int/2addr p3, v2

    .line 16
    iget-object v2, p0, Ln3/y/b/a/t0/j$b;->j:[Ljava/lang/Object;

    iget-object v1, v1, Ln3/y/b/a/t0/j$e;->b:Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 17
    iget-object v1, p0, Ln3/y/b/a/t0/j$b;->k:Ljava/util/HashMap;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_0

    .line 18
    :cond_0
    iput p2, p0, Ln3/y/b/a/t0/j$b;->e:I

    .line 19
    iput p3, p0, Ln3/y/b/a/t0/j$b;->f:I

    return-void
.end method


# virtual methods
.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/t0/j$b;->f:I

    return v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/t0/j$b;->e:I

    return v0
.end method
