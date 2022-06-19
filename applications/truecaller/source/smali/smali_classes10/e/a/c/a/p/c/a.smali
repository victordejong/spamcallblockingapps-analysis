.class public final Le/a/c/a/p/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/a/p/c/b;

.field public final b:Lw3/b/a/b;

.field public final c:Z


# direct methods
.method public constructor <init>(Le/a/c/a/p/c/b;Lw3/b/a/b;Z)V
    .locals 1

    const-string v0, "coords"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateTime"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a/p/c/a;->a:Le/a/c/a/p/c/b;

    iput-object p2, p0, Le/a/c/a/p/c/a;->b:Lw3/b/a/b;

    iput-boolean p3, p0, Le/a/c/a/p/c/a;->c:Z

    return-void
.end method

.method public constructor <init>(Le/a/c/a/p/c/b;Lw3/b/a/b;ZI)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    const-string p4, "coords"

    .line 1
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "dateTime"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a/p/c/a;->a:Le/a/c/a/p/c/b;

    iput-object p2, p0, Le/a/c/a/p/c/a;->b:Lw3/b/a/b;

    iput-boolean p3, p0, Le/a/c/a/p/c/a;->c:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/a/p/c/a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/a/p/c/a;

    iget-object v0, p0, Le/a/c/a/p/c/a;->a:Le/a/c/a/p/c/b;

    iget-object v1, p1, Le/a/c/a/p/c/a;->a:Le/a/c/a/p/c/b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/a/p/c/a;->b:Lw3/b/a/b;

    iget-object v1, p1, Le/a/c/a/p/c/a;->b:Lw3/b/a/b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/c/a/p/c/a;->c:Z

    iget-boolean p1, p1, Le/a/c/a/p/c/a;->c:Z

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
    .locals 3

    iget-object v0, p0, Le/a/c/a/p/c/a;->a:Le/a/c/a/p/c/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/c/a/p/c/b;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/a/p/c/a;->b:Lw3/b/a/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lw3/b/a/e0/c;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/c/a/p/c/a;->c:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "CardMeta(coords="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/c/a/p/c/a;->a:Le/a/c/a/p/c/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/a/p/c/a;->b:Lw3/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isTransactionHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/c/a/p/c/a;->c:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
