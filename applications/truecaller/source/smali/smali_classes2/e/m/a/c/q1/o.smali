.class public final Le/m/a/c/q1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [J

    .line 2
    iput-object v0, p0, Le/m/a/c/q1/o;->b:[J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .line 1
    iget v0, p0, Le/m/a/c/q1/o;->a:I

    iget-object v1, p0, Le/m/a/c/q1/o;->b:[J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Le/m/a/c/q1/o;->b:[J

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/a/c/q1/o;->b:[J

    iget v1, p0, Le/m/a/c/q1/o;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/m/a/c/q1/o;->a:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public b(I)J
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Le/m/a/c/q1/o;->a:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/c/q1/o;->b:[J

    aget-wide v1, v0, p1

    return-wide v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid index "

    const-string v2, ", size is "

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Le/m/a/c/q1/o;->a:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
