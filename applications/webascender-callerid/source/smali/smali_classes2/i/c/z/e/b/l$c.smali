.class abstract Li/c/z/e/b/l$c;
.super Li/c/z/i/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/z/i/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field g:I

.field volatile h:Z


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/z/i/b;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/b/l$c;->f:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract b(J)V
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/z/e/b/l$c;->h:Z

    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/b/l$c;->f:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Li/c/z/e/b/l$c;->g:I

    return-void
.end method

.method public final isEmpty()Z
    .locals 2

    .line 1
    iget v0, p0, Li/c/z/e/b/l$c;->g:I

    iget-object v1, p0, Li/c/z/e/b/l$c;->f:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Li/c/z/e/b/l$c;->g:I

    .line 2
    iget-object v1, p0, Li/c/z/e/b/l$c;->f:[Ljava/lang/Object;

    .line 3
    array-length v2, v1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 4
    iput v2, p0, Li/c/z/e/b/l$c;->g:I

    .line 5
    aget-object v0, v1, v0

    const-string v1, "array element is null"

    invoke-static {v0, v1}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public final request(J)V
    .locals 5

    .line 1
    invoke-static {p1, p2}, Li/c/z/i/g;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1, p2}, Li/c/z/j/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0}, Li/c/z/e/b/l$c;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Li/c/z/e/b/l$c;->b(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final requestFusion(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x1

    return p1
.end method
