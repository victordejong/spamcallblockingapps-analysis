.class public final Le/a/l/p2/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001a\u0010\u000c\u001a\u00020\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0010\u001a\u0004\u0008\u000f\u0010\u0012R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0007\u00a8\u0006\u001b"
    }
    d2 = {
        "Le/a/l/p2/n1;",
        "",
        "",
        "d",
        "()Z",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lw3/b/a/b;",
        "b",
        "Lw3/b/a/b;",
        "getStartDate",
        "()Lw3/b/a/b;",
        "startDate",
        "c",
        "endDate",
        "a",
        "Ljava/lang/String;",
        "theme",
        "<init>",
        "(Ljava/lang/String;Lw3/b/a/b;Lw3/b/a/b;)V",
        "premium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "theme"
    .end annotation
.end field

.field private final b:Lw3/b/a/b;
    .annotation runtime Le/m/e/d0/b;
        value = "start_date"
    .end annotation
.end field

.field private final c:Lw3/b/a/b;
    .annotation runtime Le/m/e/d0/b;
        value = "end_date"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lw3/b/a/b;Lw3/b/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/n1;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/l/p2/n1;->b:Lw3/b/a/b;

    iput-object p3, p0, Le/a/l/p2/n1;->c:Lw3/b/a/b;

    return-void
.end method

.method public static a(Le/a/l/p2/n1;Ljava/lang/String;Lw3/b/a/b;Lw3/b/a/b;I)Le/a/l/p2/n1;
    .locals 0

    and-int/lit8 p2, p4, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Le/a/l/p2/n1;->a:Ljava/lang/String;

    :cond_0
    and-int/lit8 p2, p4, 0x2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Le/a/l/p2/n1;->b:Lw3/b/a/b;

    goto :goto_0

    :cond_1
    move-object p2, p3

    :goto_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Le/a/l/p2/n1;->c:Lw3/b/a/b;

    .line 1
    :cond_2
    new-instance p0, Le/a/l/p2/n1;

    invoke-direct {p0, p1, p2, p3}, Le/a/l/p2/n1;-><init>(Ljava/lang/String;Lw3/b/a/b;Lw3/b/a/b;)V

    return-object p0
.end method


# virtual methods
.method public final b()Lw3/b/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/p2/n1;->c:Lw3/b/a/b;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/p2/n1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/p2/n1;->b:Lw3/b/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw3/b/a/e0/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Le/a/l/p2/n1;->c:Lw3/b/a/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lw3/b/a/e0/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/l/p2/n1;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/l/p2/n1;

    iget-object v0, p0, Le/a/l/p2/n1;->a:Ljava/lang/String;

    iget-object v1, p1, Le/a/l/p2/n1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/n1;->b:Lw3/b/a/b;

    iget-object v1, p1, Le/a/l/p2/n1;->b:Lw3/b/a/b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/n1;->c:Lw3/b/a/b;

    iget-object p1, p1, Le/a/l/p2/n1;->c:Lw3/b/a/b;

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

    iget-object v0, p0, Le/a/l/p2/n1;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/n1;->b:Lw3/b/a/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lw3/b/a/e0/c;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/n1;->c:Lw3/b/a/b;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lw3/b/a/e0/c;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Promotion(theme="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/l/p2/n1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/n1;->b:Lw3/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/n1;->c:Lw3/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
