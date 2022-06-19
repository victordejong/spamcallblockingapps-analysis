.class public final Ln3/y/b/a/q0/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/q0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/q0/o;

.field public final b:Ln3/y/b/a/q0/o;


# direct methods
.method public constructor <init>(Ln3/y/b/a/q0/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/q0/n$a;->a:Ln3/y/b/a/q0/o;

    .line 3
    iput-object p1, p0, Ln3/y/b/a/q0/n$a;->b:Ln3/y/b/a/q0/o;

    return-void
.end method

.method public constructor <init>(Ln3/y/b/a/q0/o;Ln3/y/b/a/q0/o;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Ln3/y/b/a/q0/n$a;->a:Ln3/y/b/a/q0/o;

    .line 6
    iput-object p2, p0, Ln3/y/b/a/q0/n$a;->b:Ln3/y/b/a/q0/o;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Ln3/y/b/a/q0/n$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Ln3/y/b/a/q0/n$a;

    .line 3
    iget-object v2, p0, Ln3/y/b/a/q0/n$a;->a:Ln3/y/b/a/q0/o;

    iget-object v3, p1, Ln3/y/b/a/q0/n$a;->a:Ln3/y/b/a/q0/o;

    invoke-virtual {v2, v3}, Ln3/y/b/a/q0/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/y/b/a/q0/n$a;->b:Ln3/y/b/a/q0/o;

    iget-object p1, p1, Ln3/y/b/a/q0/n$a;->b:Ln3/y/b/a/q0/o;

    invoke-virtual {v2, p1}, Ln3/y/b/a/q0/o;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/n$a;->a:Ln3/y/b/a/q0/o;

    invoke-virtual {v0}, Ln3/y/b/a/q0/o;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ln3/y/b/a/q0/n$a;->b:Ln3/y/b/a/q0/o;

    invoke-virtual {v1}, Ln3/y/b/a/q0/o;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/n$a;->a:Ln3/y/b/a/q0/o;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ln3/y/b/a/q0/n$a;->a:Ln3/y/b/a/q0/o;

    iget-object v2, p0, Ln3/y/b/a/q0/n$a;->b:Ln3/y/b/a/q0/o;

    invoke-virtual {v1, v2}, Ln3/y/b/a/q0/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ln3/y/b/a/q0/n$a;->b:Ln3/y/b/a/q0/o;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    const-string v3, ", "

    invoke-static {v2, v3, v1}, Le/d/c/a/a;->Q1(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
