.class public final Le/a/d/c0/j$b;
.super Le/a/d/c0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/c0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Le/a/d/b0/a;

.field public final b:Z


# direct methods
.method public constructor <init>(Le/a/d/b0/a;Z)V
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/d/c0/j;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/d/c0/j$b;->a:Le/a/d/b0/a;

    iput-boolean p2, p0, Le/a/d/c0/j$b;->b:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/d/c0/j$b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/d/c0/j$b;

    iget-object v0, p0, Le/a/d/c0/j$b;->a:Le/a/d/b0/a;

    iget-object v1, p1, Le/a/d/c0/j$b;->a:Le/a/d/b0/a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/d/c0/j$b;->b:Z

    iget-boolean p1, p1, Le/a/d/c0/j$b;->b:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Le/a/d/c0/j$b;->a:Le/a/d/b0/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/d/b0/a;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/d/c0/j$b;->b:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Ready(user="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/d/c0/j$b;->a:Le/a/d/b0/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFinal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d/c0/j$b;->b:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
