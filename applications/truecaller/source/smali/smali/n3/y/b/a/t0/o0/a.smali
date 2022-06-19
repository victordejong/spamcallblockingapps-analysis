.class public final Ln3/y/b/a/t0/o0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/t0/o0/a$a;
    }
.end annotation


# static fields
.field public static final e:Ln3/y/b/a/t0/o0/a;


# instance fields
.field public final a:I

.field public final b:[J

.field public final c:[Ln3/y/b/a/t0/o0/a$a;

.field public final d:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln3/y/b/a/t0/o0/a;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-direct {v0, v1}, Ln3/y/b/a/t0/o0/a;-><init>([J)V

    sput-object v0, Ln3/y/b/a/t0/o0/a;->e:Ln3/y/b/a/t0/o0/a;

    return-void
.end method

.method public varargs constructor <init>([J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    .line 3
    iput v0, p0, Ln3/y/b/a/t0/o0/a;->a:I

    .line 4
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/t0/o0/a;->b:[J

    .line 5
    new-array p1, v0, [Ln3/y/b/a/t0/o0/a$a;

    iput-object p1, p0, Ln3/y/b/a/t0/o0/a;->c:[Ln3/y/b/a/t0/o0/a$a;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 6
    iget-object v1, p0, Ln3/y/b/a/t0/o0/a;->c:[Ln3/y/b/a/t0/o0/a$a;

    new-instance v2, Ln3/y/b/a/t0/o0/a$a;

    invoke-direct {v2}, Ln3/y/b/a/t0/o0/a$a;-><init>()V

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Ln3/y/b/a/t0/o0/a;->d:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Ln3/y/b/a/t0/o0/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Ln3/y/b/a/t0/o0/a;

    .line 3
    iget v2, p0, Ln3/y/b/a/t0/o0/a;->a:I

    iget v3, p1, Ln3/y/b/a/t0/o0/a;->a:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Ln3/y/b/a/t0/o0/a;->d:J

    iget-wide v4, p1, Ln3/y/b/a/t0/o0/a;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Ln3/y/b/a/t0/o0/a;->b:[J

    iget-object v3, p1, Ln3/y/b/a/t0/o0/a;->b:[J

    .line 4
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/y/b/a/t0/o0/a;->c:[Ln3/y/b/a/t0/o0/a$a;

    iget-object p1, p1, Ln3/y/b/a/t0/o0/a;->c:[Ln3/y/b/a/t0/o0/a$a;

    .line 5
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Ln3/y/b/a/t0/o0/a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    const-wide/16 v1, 0x0

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v1, p0, Ln3/y/b/a/t0/o0/a;->d:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Ln3/y/b/a/t0/o0/a;->b:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Ln3/y/b/a/t0/o0/a;->c:[Ln3/y/b/a/t0/o0/a$a;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
