.class Lg/f/c/a/i0/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/i0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Lg/f/c/a/i0/u$c;

.field final b:[J


# direct methods
.method constructor <init>(Lg/f/c/a/i0/u$b;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lg/f/c/a/i0/u$c;

    iget-object v1, p1, Lg/f/c/a/i0/u$b;->a:Lg/f/c/a/i0/u$c;

    invoke-direct {v0, v1}, Lg/f/c/a/i0/u$c;-><init>(Lg/f/c/a/i0/u$c;)V

    iput-object v0, p0, Lg/f/c/a/i0/u$b;->a:Lg/f/c/a/i0/u$c;

    .line 6
    iget-object p1, p1, Lg/f/c/a/i0/u$b;->b:[J

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lg/f/c/a/i0/u$b;->b:[J

    return-void
.end method

.method constructor <init>(Lg/f/c/a/i0/u$c;[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/f/c/a/i0/u$b;->a:Lg/f/c/a/i0/u$c;

    .line 3
    iput-object p2, p0, Lg/f/c/a/i0/u$b;->b:[J

    return-void
.end method
