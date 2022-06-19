.class Lg/f/c/a/i0/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/i0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
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
    invoke-direct {p0, v1, v2, v0}, Lg/f/c/a/i0/u$a;-><init>([J[J[J)V

    return-void
.end method

.method constructor <init>(Lg/f/c/a/i0/u$a;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Lg/f/c/a/i0/u$a;->a:[J

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lg/f/c/a/i0/u$a;->a:[J

    .line 8
    iget-object v0, p1, Lg/f/c/a/i0/u$a;->b:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lg/f/c/a/i0/u$a;->b:[J

    .line 9
    iget-object p1, p1, Lg/f/c/a/i0/u$a;->c:[J

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lg/f/c/a/i0/u$a;->c:[J

    return-void
.end method

.method constructor <init>([J[J[J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lg/f/c/a/i0/u$a;->a:[J

    .line 4
    iput-object p2, p0, Lg/f/c/a/i0/u$a;->b:[J

    .line 5
    iput-object p3, p0, Lg/f/c/a/i0/u$a;->c:[J

    return-void
.end method


# virtual methods
.method a(Lg/f/c/a/i0/u$a;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/f/c/a/i0/u$a;->a:[J

    iget-object v1, p1, Lg/f/c/a/i0/u$a;->a:[J

    invoke-static {v0, v1, p2}, Lg/f/c/a/i0/o;->a([J[JI)V

    .line 2
    iget-object v0, p0, Lg/f/c/a/i0/u$a;->b:[J

    iget-object v1, p1, Lg/f/c/a/i0/u$a;->b:[J

    invoke-static {v0, v1, p2}, Lg/f/c/a/i0/o;->a([J[JI)V

    .line 3
    iget-object v0, p0, Lg/f/c/a/i0/u$a;->c:[J

    iget-object p1, p1, Lg/f/c/a/i0/u$a;->c:[J

    invoke-static {v0, p1, p2}, Lg/f/c/a/i0/o;->a([J[JI)V

    return-void
.end method

.method b([J[J)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 1
    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
