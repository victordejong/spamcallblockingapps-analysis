.class Lcom/google/protobuf/i$a;
.super Lcom/google/protobuf/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/i;->p()Lcom/google/protobuf/i$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private f:I

.field private final g:I

.field final synthetic h:Lcom/google/protobuf/i;


# direct methods
.method constructor <init>(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/i$a;->h:Lcom/google/protobuf/i;

    invoke-direct {p0}, Lcom/google/protobuf/i$b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/i$a;->f:I

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/i;->size()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/i$a;->g:I

    return-void
.end method


# virtual methods
.method public c()B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/i$a;->f:I

    .line 2
    iget v1, p0, Lcom/google/protobuf/i$a;->g:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 3
    iput v1, p0, Lcom/google/protobuf/i$a;->f:I

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/i$a;->h:Lcom/google/protobuf/i;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/i;->m(I)B

    move-result v0

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/i$a;->f:I

    iget v1, p0, Lcom/google/protobuf/i$a;->g:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
