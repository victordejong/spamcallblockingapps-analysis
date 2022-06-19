.class public Le/d/b/a/b/k$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/d/b/a/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Le/d/b/a/b/k;


# direct methods
.method public constructor <init>(Le/d/b/a/b/k;Le/d/b/a/b/k$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/d/b/a/b/k$d;->c:Le/d/b/a/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 1
    iget v0, p0, Le/d/b/a/b/k$d;->b:I

    iget-object v1, p0, Le/d/b/a/b/k$d;->c:Le/d/b/a/b/k;

    .line 2
    iget-object v2, v1, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    .line 3
    iget v2, v2, Le/d/b/a/b/k$b;->c:I

    if-ne v0, v2, :cond_0

    .line 4
    iget v0, v1, Le/d/b/a/b/k;->c:I

    iget v1, p0, Le/d/b/a/b/k$d;->a:I

    sub-int/2addr v0, v1

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG: Invalid call to getLength()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
