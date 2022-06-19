.class public final Le/m/a/b/j/j$b;
.super Le/m/a/b/j/r$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/b/j/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B

.field public c:Le/m/a/b/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/b/j/r$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/m/a/b/j/r;
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/b/j/j$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " backendName"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Le/m/a/b/j/j$b;->c:Le/m/a/b/d;

    if-nez v1, :cond_1

    const-string v1, " priority"

    .line 3
    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v0, Le/m/a/b/j/j;

    iget-object v1, p0, Le/m/a/b/j/j$b;->a:Ljava/lang/String;

    iget-object v2, p0, Le/m/a/b/j/j$b;->b:[B

    iget-object v3, p0, Le/m/a/b/j/j$b;->c:Le/m/a/b/d;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Le/m/a/b/j/j;-><init>(Ljava/lang/String;[BLe/m/a/b/d;Le/m/a/b/j/j$a;)V

    return-object v0

    .line 6
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Ljava/lang/String;)Le/m/a/b/j/r$a;
    .locals 1

    const-string v0, "Null backendName"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Le/m/a/b/j/j$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Le/m/a/b/d;)Le/m/a/b/j/r$a;
    .locals 1

    const-string v0, "Null priority"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Le/m/a/b/j/j$b;->c:Le/m/a/b/d;

    return-object p0
.end method
