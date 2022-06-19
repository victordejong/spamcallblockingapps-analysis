.class public final Ls1/a/a/a/v0/a/p/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/a/p/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/f/a;

.field public final b:Ls1/a/a/a/v0/f/a;

.field public final c:Ls1/a/a/a/v0/f/a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V
    .locals 1

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinReadOnly"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinMutable"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/a/p/c$a;->a:Ls1/a/a/a/v0/f/a;

    iput-object p2, p0, Ls1/a/a/a/v0/a/p/c$a;->b:Ls1/a/a/a/v0/f/a;

    iput-object p3, p0, Ls1/a/a/a/v0/a/p/c$a;->c:Ls1/a/a/a/v0/f/a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ls1/a/a/a/v0/a/p/c$a;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/a/p/c$a;

    iget-object v0, p0, Ls1/a/a/a/v0/a/p/c$a;->a:Ls1/a/a/a/v0/f/a;

    iget-object v1, p1, Ls1/a/a/a/v0/a/p/c$a;->a:Ls1/a/a/a/v0/f/a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/a/p/c$a;->b:Ls1/a/a/a/v0/f/a;

    iget-object v1, p1, Ls1/a/a/a/v0/a/p/c$a;->b:Ls1/a/a/a/v0/f/a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/a/p/c$a;->c:Ls1/a/a/a/v0/f/a;

    iget-object p1, p1, Ls1/a/a/a/v0/a/p/c$a;->c:Ls1/a/a/a/v0/f/a;

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

    iget-object v0, p0, Ls1/a/a/a/v0/a/p/c$a;->a:Ls1/a/a/a/v0/f/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/a;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ls1/a/a/a/v0/a/p/c$a;->b:Ls1/a/a/a/v0/f/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ls1/a/a/a/v0/f/a;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ls1/a/a/a/v0/a/p/c$a;->c:Ls1/a/a/a/v0/f/a;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ls1/a/a/a/v0/f/a;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "PlatformMutabilityMapping(javaClass="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/a/p/c$a;->a:Ls1/a/a/a/v0/f/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kotlinReadOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/a/p/c$a;->b:Ls1/a/a/a/v0/f/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kotlinMutable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/a/p/c$a;->c:Ls1/a/a/a/v0/f/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
