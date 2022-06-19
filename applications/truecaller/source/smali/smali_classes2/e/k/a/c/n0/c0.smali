.class public Le/k/a/c/n0/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Le/k/a/c/i;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/i;Z)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Le/k/a/c/n0/c0;->c:Le/k/a/c/i;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Le/k/a/c/n0/c0;->b:Ljava/lang/Class;

    .line 12
    iput-boolean p2, p0, Le/k/a/c/n0/c0;->d:Z

    if-eqz p2, :cond_0

    .line 13
    iget p1, p1, Le/k/a/c/i;->b:I

    add-int/lit8 p1, p1, -0x2

    goto :goto_0

    .line 14
    :cond_0
    iget p1, p1, Le/k/a/c/i;->b:I

    add-int/lit8 p1, p1, -0x1

    .line 15
    :goto_0
    iput p1, p0, Le/k/a/c/n0/c0;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Le/k/a/c/n0/c0;->b:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/k/a/c/n0/c0;->c:Le/k/a/c/i;

    .line 5
    iput-boolean p2, p0, Le/k/a/c/n0/c0;->d:Z

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    .line 8
    :goto_0
    iput p1, p0, Le/k/a/c/n0/c0;->a:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Le/k/a/c/n0/c0;

    if-eq v2, v3, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Le/k/a/c/n0/c0;

    .line 3
    iget-boolean v2, p1, Le/k/a/c/n0/c0;->d:Z

    iget-boolean v3, p0, Le/k/a/c/n0/c0;->d:Z

    if-ne v2, v3, :cond_5

    .line 4
    iget-object v2, p0, Le/k/a/c/n0/c0;->b:Ljava/lang/Class;

    if-eqz v2, :cond_4

    .line 5
    iget-object p1, p1, Le/k/a/c/n0/c0;->b:Ljava/lang/Class;

    if-ne p1, v2, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 6
    :cond_4
    iget-object v0, p0, Le/k/a/c/n0/c0;->c:Le/k/a/c/i;

    iget-object p1, p1, Le/k/a/c/n0/c0;->c:Le/k/a/c/i;

    invoke-virtual {v0, p1}, Le/k/a/c/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/n0/c0;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/c0;->b:Ljava/lang/Class;

    const-string v1, "}"

    const-string v2, ", typed? "

    if-eqz v0, :cond_0

    const-string v0, "{class: "

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Le/k/a/c/n0/c0;->b:Ljava/lang/Class;

    invoke-static {v3, v0, v2}, Le/d/c/a/a;->z0(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-boolean v2, p0, Le/k/a/c/n0/c0;->d:Z

    invoke-static {v0, v2, v1}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "{type: "

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Le/k/a/c/n0/c0;->c:Le/k/a/c/i;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Le/k/a/c/n0/c0;->d:Z

    invoke-static {v0, v2, v1}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
