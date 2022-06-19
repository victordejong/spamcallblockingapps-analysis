.class Lg/f/c/a/i0/u$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/i0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final a:Lg/f/c/a/i0/u$c;

.field final b:[J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lg/f/c/a/i0/u$c;

    invoke-direct {v0}, Lg/f/c/a/i0/u$c;-><init>()V

    const/16 v1, 0xa

    new-array v1, v1, [J

    invoke-direct {p0, v0, v1}, Lg/f/c/a/i0/u$d;-><init>(Lg/f/c/a/i0/u$c;[J)V

    return-void
.end method

.method constructor <init>(Lg/f/c/a/i0/u$c;[J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lg/f/c/a/i0/u$d;->a:Lg/f/c/a/i0/u$c;

    .line 4
    iput-object p2, p0, Lg/f/c/a/i0/u$d;->b:[J

    return-void
.end method

.method static synthetic a(Lg/f/c/a/i0/u$d;Lg/f/c/a/i0/u$b;)Lg/f/c/a/i0/u$d;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lg/f/c/a/i0/u$d;->b(Lg/f/c/a/i0/u$d;Lg/f/c/a/i0/u$b;)Lg/f/c/a/i0/u$d;

    return-object p0
.end method

.method private static b(Lg/f/c/a/i0/u$d;Lg/f/c/a/i0/u$b;)Lg/f/c/a/i0/u$d;
    .locals 3

    .line 1
    iget-object v0, p0, Lg/f/c/a/i0/u$d;->a:Lg/f/c/a/i0/u$c;

    iget-object v0, v0, Lg/f/c/a/i0/u$c;->a:[J

    iget-object v1, p1, Lg/f/c/a/i0/u$b;->a:Lg/f/c/a/i0/u$c;

    iget-object v1, v1, Lg/f/c/a/i0/u$c;->a:[J

    iget-object v2, p1, Lg/f/c/a/i0/u$b;->b:[J

    invoke-static {v0, v1, v2}, Lg/f/c/a/i0/d0;->f([J[J[J)V

    .line 2
    iget-object v0, p0, Lg/f/c/a/i0/u$d;->a:Lg/f/c/a/i0/u$c;

    iget-object v0, v0, Lg/f/c/a/i0/u$c;->b:[J

    iget-object v1, p1, Lg/f/c/a/i0/u$b;->a:Lg/f/c/a/i0/u$c;

    iget-object v2, v1, Lg/f/c/a/i0/u$c;->b:[J

    iget-object v1, v1, Lg/f/c/a/i0/u$c;->c:[J

    invoke-static {v0, v2, v1}, Lg/f/c/a/i0/d0;->f([J[J[J)V

    .line 3
    iget-object v0, p0, Lg/f/c/a/i0/u$d;->a:Lg/f/c/a/i0/u$c;

    iget-object v0, v0, Lg/f/c/a/i0/u$c;->c:[J

    iget-object v1, p1, Lg/f/c/a/i0/u$b;->a:Lg/f/c/a/i0/u$c;

    iget-object v1, v1, Lg/f/c/a/i0/u$c;->c:[J

    iget-object v2, p1, Lg/f/c/a/i0/u$b;->b:[J

    invoke-static {v0, v1, v2}, Lg/f/c/a/i0/d0;->f([J[J[J)V

    .line 4
    iget-object v0, p0, Lg/f/c/a/i0/u$d;->b:[J

    iget-object p1, p1, Lg/f/c/a/i0/u$b;->a:Lg/f/c/a/i0/u$c;

    iget-object v1, p1, Lg/f/c/a/i0/u$c;->a:[J

    iget-object p1, p1, Lg/f/c/a/i0/u$c;->b:[J

    invoke-static {v0, v1, p1}, Lg/f/c/a/i0/d0;->f([J[J[J)V

    return-object p0
.end method
