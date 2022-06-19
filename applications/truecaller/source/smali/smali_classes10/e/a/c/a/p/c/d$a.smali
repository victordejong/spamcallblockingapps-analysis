.class public final Le/a/c/a/p/c/d$a;
.super Le/a/c/a/p/c/d;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/p/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/p/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Le/a/c/a/p/c/a;

.field public final c:Le/a/c/y/m;


# direct methods
.method public constructor <init>(Le/a/c/a/p/c/a;Le/a/c/y/m;)V
    .locals 3

    const-string v0, "meta"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiModel"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/p/c/a;->a:Le/a/c/a/p/c/b;

    .line 2
    iget-wide v0, v0, Le/a/c/a/p/c/b;->a:J

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v0, v1, v2}, Le/a/c/a/p/c/d;-><init>(JLs1/z/c/f;)V

    iput-object p1, p0, Le/a/c/a/p/c/d$a;->b:Le/a/c/a/p/c/a;

    iput-object p2, p0, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    return-void
.end method


# virtual methods
.method public a()Lw3/b/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/a/p/c/d$a;->b:Le/a/c/a/p/c/a;

    .line 2
    iget-object v0, v0, Le/a/c/a/p/c/a;->b:Lw3/b/a/b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/a/p/c/d$a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/a/p/c/d$a;

    iget-object v0, p0, Le/a/c/a/p/c/d$a;->b:Le/a/c/a/p/c/a;

    iget-object v1, p1, Le/a/c/a/p/c/d$a;->b:Le/a/c/a/p/c/a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    iget-object p1, p1, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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

    iget-object v0, p0, Le/a/c/a/p/c/d$a;->b:Le/a/c/a/p/c/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/c/a/p/c/a;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Le/a/c/y/m;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Past(meta="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/c/a/p/c/d$a;->b:Le/a/c/a/p/c/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uiModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
