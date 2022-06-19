.class public Le/k/a/c/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Le/k/a/c/v;

.field public static final e:Le/k/a/c/v;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Le/k/a/b/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le/k/a/c/v;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/k/a/c/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/k/a/c/v;->d:Le/k/a/c/v;

    .line 2
    new-instance v0, Le/k/a/c/v;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v2}, Le/k/a/c/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/k/a/c/v;->e:Le/k/a/c/v;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/k/a/c/n0/g;->a:[Ljava/lang/annotation/Annotation;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 3
    :cond_0
    iput-object p1, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Le/k/a/c/v;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Le/k/a/c/n0/g;->a:[Ljava/lang/annotation/Annotation;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 7
    :cond_0
    iput-object p1, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Le/k/a/c/v;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Le/k/a/c/v;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/v;

    sget-object v1, Le/k/a/b/a0/g;->b:Le/k/a/b/a0/g;

    invoke-virtual {v1, p0}, Le/k/a/b/a0/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/k/a/c/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_1
    :goto_0
    sget-object p0, Le/k/a/c/v;->d:Le/k/a/c/v;

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/v;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    if-nez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object p0, Le/k/a/c/v;->d:Le/k/a/c/v;

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Le/k/a/c/v;

    sget-object v1, Le/k/a/b/a0/g;->b:Le/k/a/b/a0/g;

    invoke-virtual {v1, p0}, Le/k/a/b/a0/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Le/k/a/c/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d()Le/k/a/c/v;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Le/k/a/b/a0/g;->b:Le/k/a/b/a0/g;

    iget-object v1, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/k/a/b/a0/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    return-object p0

    .line 4
    :cond_1
    new-instance v1, Le/k/a/c/v;

    iget-object v2, p0, Le/k/a/c/v;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Le/k/a/c/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/v;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Le/k/a/c/v;

    .line 3
    iget-object v2, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 4
    iget-object v2, p1, Le/k/a/c/v;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 5
    :cond_3
    iget-object v3, p1, Le/k/a/c/v;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object v2, p0, Le/k/a/c/v;->b:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 7
    iget-object p1, p1, Le/k/a/c/v;->b:Ljava/lang/String;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    .line 8
    :cond_6
    iget-object p1, p1, Le/k/a/c/v;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Le/k/a/c/c0/k;)Le/k/a/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;)",
            "Le/k/a/b/p;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/v;->c:Le/k/a/b/p;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Le/k/a/b/w/i;

    iget-object v0, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Le/k/a/b/w/i;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 4
    new-instance v0, Le/k/a/b/w/i;

    invoke-direct {v0, p1}, Le/k/a/b/w/i;-><init>(Ljava/lang/String;)V

    .line 5
    :goto_0
    iput-object v0, p0, Le/k/a/c/v;->c:Le/k/a/b/p;

    :cond_1
    return-object v0
.end method

.method public g(Ljava/lang/String;)Le/k/a/c/v;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iget-object v0, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 2
    :cond_1
    new-instance v0, Le/k/a/c/v;

    iget-object v1, p0, Le/k/a/c/v;->b:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Le/k/a/c/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/v;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/v;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    sget-object v0, Le/k/a/c/v;->d:Le/k/a/c/v;

    return-object v0

    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/v;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "{"

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/k/a/c/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
