.class public final Lp3/a/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp3/a/o;

.field public final b:Lp3/a/g1;


# direct methods
.method public constructor <init>(Lp3/a/o;Lp3/a/g1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "state is null"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/o;

    iput-object p1, p0, Lp3/a/p;->a:Lp3/a/o;

    const-string p1, "status is null"

    .line 3
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lp3/a/g1;

    iput-object p2, p0, Lp3/a/p;->b:Lp3/a/g1;

    return-void
.end method

.method public static a(Lp3/a/o;)Lp3/a/p;
    .locals 2

    .line 1
    sget-object v0, Lp3/a/o;->c:Lp3/a/o;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "state is TRANSIENT_ERROR. Use forError() instead"

    invoke-static {v0, v1}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lp3/a/p;

    sget-object v1, Lp3/a/g1;->f:Lp3/a/g1;

    invoke-direct {v0, p0, v1}, Lp3/a/p;-><init>(Lp3/a/o;Lp3/a/g1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lp3/a/p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lp3/a/p;

    .line 3
    iget-object v0, p0, Lp3/a/p;->a:Lp3/a/o;

    iget-object v2, p1, Lp3/a/p;->a:Lp3/a/o;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/p;->b:Lp3/a/g1;

    iget-object p1, p1, Lp3/a/p;->b:Lp3/a/g1;

    invoke-virtual {v0, p1}, Lp3/a/g1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/p;->a:Lp3/a/o;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    iget-object v1, p0, Lp3/a/p;->b:Lp3/a/g1;

    invoke-virtual {v1}, Lp3/a/g1;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/p;->b:Lp3/a/g1;

    invoke-virtual {v0}, Lp3/a/g1;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/p;->a:Lp3/a/o;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lp3/a/p;->a:Lp3/a/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp3/a/p;->b:Lp3/a/g1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
