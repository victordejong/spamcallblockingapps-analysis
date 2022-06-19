.class public Ln3/i/b/h/i;
.super Ln3/i/b/h/d;
.source "SourceFile"

# interfaces
.implements Ln3/i/b/h/h;


# instance fields
.field public H0:[Ln3/i/b/h/d;

.field public I0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/i/b/h/d;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ln3/i/b/h/d;

    .line 2
    iput-object v0, p0, Ln3/i/b/h/i;->H0:[Ln3/i/b/h/d;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ln3/i/b/h/i;->I0:I

    return-void
.end method


# virtual methods
.method public V(Ljava/util/ArrayList;ILn3/i/b/h/m/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ln3/i/b/h/m/n;",
            ">;I",
            "Ln3/i/b/h/m/n;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Ln3/i/b/h/i;->I0:I

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Ln3/i/b/h/i;->H0:[Ln3/i/b/h/d;

    aget-object v2, v2, v1

    .line 3
    invoke-virtual {p3, v2}, Ln3/i/b/h/m/n;->a(Ln3/i/b/h/d;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    :goto_1
    iget v1, p0, Ln3/i/b/h/i;->I0:I

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Ln3/i/b/h/i;->H0:[Ln3/i/b/h/d;

    aget-object v1, v1, v0

    .line 6
    invoke-static {v1, p2, p1, p3}, Landroid/support/v4/media/session/MediaSessionCompat;->a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Ln3/i/b/h/d;)V
    .locals 3

    if-eq p1, p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v0, p0, Ln3/i/b/h/i;->I0:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ln3/i/b/h/i;->H0:[Ln3/i/b/h/d;

    array-length v2, v1

    if-le v0, v2, :cond_1

    .line 2
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/i/b/h/d;

    iput-object v0, p0, Ln3/i/b/h/i;->H0:[Ln3/i/b/h/d;

    .line 3
    :cond_1
    iget-object v0, p0, Ln3/i/b/h/i;->H0:[Ln3/i/b/h/d;

    iget v1, p0, Ln3/i/b/h/i;->I0:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, p0, Ln3/i/b/h/i;->I0:I

    :cond_2
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ln3/i/b/h/i;->I0:I

    .line 2
    iget-object v0, p0, Ln3/i/b/h/i;->H0:[Ln3/i/b/h/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ln3/i/b/h/e;)V
    .locals 0

    return-void
.end method

.method public k(Ln3/i/b/h/d;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/i/b/h/d;",
            "Ljava/util/HashMap<",
            "Ln3/i/b/h/d;",
            "Ln3/i/b/h/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Ln3/i/b/h/d;->k(Ln3/i/b/h/d;Ljava/util/HashMap;)V

    .line 2
    check-cast p1, Ln3/i/b/h/i;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ln3/i/b/h/i;->I0:I

    .line 4
    iget v1, p1, Ln3/i/b/h/i;->I0:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 5
    iget-object v2, p1, Ln3/i/b/h/i;->H0:[Ln3/i/b/h/d;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/i/b/h/d;

    invoke-virtual {p0, v2}, Ln3/i/b/h/i;->a(Ln3/i/b/h/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
