.class public final Le/a/l/p2/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Le/a/l/p2/u0;

.field public final e:Le/a/l/p2/x;


# direct methods
.method public constructor <init>(Le/a/l/p2/u0;Le/a/l/p2/x;)V
    .locals 4

    const-string v0, "oldState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPremium"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/y0;->d:Le/a/l/p2/u0;

    iput-object p2, p0, Le/a/l/p2/y0;->e:Le/a/l/p2/x;

    .line 2
    iget-boolean v0, p1, Le/a/l/p2/u0;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v3, p2, Le/a/l/p2/x;->j:Z

    xor-int/2addr v3, v2

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 4
    :goto_0
    iput-boolean v3, p0, Le/a/l/p2/y0;->a:Z

    if-nez v0, :cond_1

    .line 5
    iget-boolean v0, p2, Le/a/l/p2/x;->j:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    move v1, v2

    .line 6
    :cond_1
    iput-boolean v1, p0, Le/a/l/p2/y0;->b:Z

    .line 7
    iget-object p1, p1, Le/a/l/p2/u0;->b:Ljava/lang/String;

    .line 8
    iget-object p2, p2, Le/a/l/p2/x;->g:Ljava/lang/String;

    .line 9
    invoke-static {p1, p2}, Lw3/c/a/a/a/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Le/a/l/p2/y0;->c:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/l/p2/y0;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/l/p2/y0;

    iget-object v0, p0, Le/a/l/p2/y0;->d:Le/a/l/p2/u0;

    iget-object v1, p1, Le/a/l/p2/y0;->d:Le/a/l/p2/u0;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/y0;->e:Le/a/l/p2/x;

    iget-object p1, p1, Le/a/l/p2/y0;->e:Le/a/l/p2/x;

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

    iget-object v0, p0, Le/a/l/p2/y0;->d:Le/a/l/p2/u0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/l/p2/u0;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/y0;->e:Le/a/l/p2/x;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Le/a/l/p2/x;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "PremiumStatusUpdate(oldState="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/l/p2/y0;->d:Le/a/l/p2/u0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newPremium="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/y0;->e:Le/a/l/p2/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
