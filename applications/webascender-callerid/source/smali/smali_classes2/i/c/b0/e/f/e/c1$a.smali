.class final Li/c/b0/e/f/e/c1$a;
.super Li/c/b0/e/e/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/e/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field h:I

.field i:Z

.field volatile j:Z


# direct methods
.method constructor <init>(Li/c/b0/b/c0;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;[TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/e/e/c;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/c1$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/c1$a;->g:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/c1$a;->g:[Ljava/lang/Object;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/c1$a;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    aget-object v3, v0, v2

    if-nez v3, :cond_0

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/e/c1$a;->f:Li/c/b0/b/c0;

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The element at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is null"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_0
    iget-object v4, p0, Li/c/b0/e/f/e/c1$a;->f:Li/c/b0/b/c0;

    invoke-interface {v4, v3}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Li/c/b0/e/f/e/c1$a;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Li/c/b0/e/f/e/c1$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/c1$a;->g:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Li/c/b0/e/f/e/c1$a;->h:I

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/c1$a;->j:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/c1$a;->j:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget v0, p0, Li/c/b0/e/f/e/c1$a;->h:I

    iget-object v1, p0, Li/c/b0/e/f/e/c1$a;->g:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Li/c/b0/e/f/e/c1$a;->h:I

    .line 2
    iget-object v1, p0, Li/c/b0/e/f/e/c1$a;->g:[Ljava/lang/Object;

    .line 3
    array-length v2, v1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 4
    iput v2, p0, Li/c/b0/e/f/e/c1$a;->h:I

    .line 5
    aget-object v0, v1, v0

    const-string v1, "The array element is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/c1$a;->i:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
