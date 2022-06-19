.class Lg/f/c/a/i0/u$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/i0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:[J

.field final b:[J

.field final c:[J


# direct methods
.method constructor <init>()V
    .locals 3

    const/16 v0, 0xa

    new-array v1, v0, [J

    new-array v2, v0, [J

    new-array v0, v0, [J

    .line 1
    invoke-direct {p0, v1, v2, v0}, Lg/f/c/a/i0/u$c;-><init>([J[J[J)V

    return-void
.end method

.method constructor <init>(Lg/f/c/a/i0/u$b;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lg/f/c/a/i0/u$c;-><init>()V

    .line 11
    invoke-static {p0, p1}, Lg/f/c/a/i0/u$c;->a(Lg/f/c/a/i0/u$c;Lg/f/c/a/i0/u$b;)Lg/f/c/a/i0/u$c;

    return-void
.end method

.method constructor <init>(Lg/f/c/a/i0/u$c;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Lg/f/c/a/i0/u$c;->a:[J

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lg/f/c/a/i0/u$c;->a:[J

    .line 8
    iget-object v0, p1, Lg/f/c/a/i0/u$c;->b:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lg/f/c/a/i0/u$c;->b:[J

    .line 9
    iget-object p1, p1, Lg/f/c/a/i0/u$c;->c:[J

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lg/f/c/a/i0/u$c;->c:[J

    return-void
.end method

.method constructor <init>([J[J[J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lg/f/c/a/i0/u$c;->a:[J

    .line 4
    iput-object p2, p0, Lg/f/c/a/i0/u$c;->b:[J

    .line 5
    iput-object p3, p0, Lg/f/c/a/i0/u$c;->c:[J

    return-void
.end method

.method static a(Lg/f/c/a/i0/u$c;Lg/f/c/a/i0/u$b;)Lg/f/c/a/i0/u$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lg/f/c/a/i0/u$c;->a:[J

    iget-object v1, p1, Lg/f/c/a/i0/u$b;->a:Lg/f/c/a/i0/u$c;

    iget-object v1, v1, Lg/f/c/a/i0/u$c;->a:[J

    iget-object v2, p1, Lg/f/c/a/i0/u$b;->b:[J

    invoke-static {v0, v1, v2}, Lg/f/c/a/i0/d0;->f([J[J[J)V

    .line 2
    iget-object v0, p0, Lg/f/c/a/i0/u$c;->b:[J

    iget-object v1, p1, Lg/f/c/a/i0/u$b;->a:Lg/f/c/a/i0/u$c;

    iget-object v2, v1, Lg/f/c/a/i0/u$c;->b:[J

    iget-object v1, v1, Lg/f/c/a/i0/u$c;->c:[J

    invoke-static {v0, v2, v1}, Lg/f/c/a/i0/d0;->f([J[J[J)V

    .line 3
    iget-object v0, p0, Lg/f/c/a/i0/u$c;->c:[J

    iget-object v1, p1, Lg/f/c/a/i0/u$b;->a:Lg/f/c/a/i0/u$c;

    iget-object v1, v1, Lg/f/c/a/i0/u$c;->c:[J

    iget-object p1, p1, Lg/f/c/a/i0/u$b;->b:[J

    invoke-static {v0, v1, p1}, Lg/f/c/a/i0/d0;->f([J[J[J)V

    return-object p0
.end method


# virtual methods
.method b()Z
    .locals 6

    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 1
    iget-object v2, p0, Lg/f/c/a/i0/u$c;->a:[J

    invoke-static {v1, v2}, Lg/f/c/a/i0/d0;->k([J[J)V

    new-array v2, v0, [J

    .line 2
    iget-object v3, p0, Lg/f/c/a/i0/u$c;->b:[J

    invoke-static {v2, v3}, Lg/f/c/a/i0/d0;->k([J[J)V

    new-array v3, v0, [J

    .line 3
    iget-object v4, p0, Lg/f/c/a/i0/u$c;->c:[J

    invoke-static {v3, v4}, Lg/f/c/a/i0/d0;->k([J[J)V

    new-array v4, v0, [J

    .line 4
    invoke-static {v4, v3}, Lg/f/c/a/i0/d0;->k([J[J)V

    new-array v5, v0, [J

    .line 5
    invoke-static {v5, v2, v1}, Lg/f/c/a/i0/d0;->m([J[J[J)V

    .line 6
    invoke-static {v5, v5, v3}, Lg/f/c/a/i0/d0;->f([J[J[J)V

    new-array v0, v0, [J

    .line 7
    invoke-static {v0, v1, v2}, Lg/f/c/a/i0/d0;->f([J[J[J)V

    .line 8
    sget-object v1, Lg/f/c/a/i0/v;->a:[J

    invoke-static {v0, v0, v1}, Lg/f/c/a/i0/d0;->f([J[J[J)V

    .line 9
    invoke-static {v0, v4}, Lg/f/c/a/i0/d0;->n([J[J)V

    .line 10
    invoke-static {v0, v0}, Lg/f/c/a/i0/d0;->h([J[J)V

    .line 11
    invoke-static {v5}, Lg/f/c/a/i0/d0;->a([J)[B

    move-result-object v1

    invoke-static {v0}, Lg/f/c/a/i0/d0;->a([J)[B

    move-result-object v0

    invoke-static {v1, v0}, Lg/f/c/a/i0/j;->b([B[B)Z

    move-result v0

    return v0
.end method

.method c()[B
    .locals 4

    const/16 v0, 0xa

    new-array v1, v0, [J

    new-array v2, v0, [J

    new-array v0, v0, [J

    .line 1
    iget-object v3, p0, Lg/f/c/a/i0/u$c;->c:[J

    invoke-static {v1, v3}, Lg/f/c/a/i0/d0;->e([J[J)V

    .line 2
    iget-object v3, p0, Lg/f/c/a/i0/u$c;->a:[J

    invoke-static {v2, v3, v1}, Lg/f/c/a/i0/d0;->f([J[J[J)V

    .line 3
    iget-object v3, p0, Lg/f/c/a/i0/u$c;->b:[J

    invoke-static {v0, v3, v1}, Lg/f/c/a/i0/d0;->f([J[J[J)V

    .line 4
    invoke-static {v0}, Lg/f/c/a/i0/d0;->a([J)[B

    move-result-object v0

    const/16 v1, 0x1f

    .line 5
    aget-byte v3, v0, v1

    invoke-static {v2}, Lg/f/c/a/i0/u;->a([J)I

    move-result v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method
