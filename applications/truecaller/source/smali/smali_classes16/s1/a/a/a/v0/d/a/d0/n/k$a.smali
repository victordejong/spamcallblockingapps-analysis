.class public final Ls1/a/a/a/v0/d/a/d0/n/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/d0/n/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/m/e0;

.field public final b:Ls1/a/a/a/v0/m/e0;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/b1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ljava/util/List;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/e0;",
            "Ls1/a/a/a/v0/m/e0;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/b1;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/w0;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p2, "returnType"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "valueParameters"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "typeParameters"

    invoke-static {p4, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "errors"

    invoke-static {p6, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->a:Ls1/a/a/a/v0/m/e0;

    const/4 p1, 0x0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->b:Ls1/a/a/a/v0/m/e0;

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->c:Ljava/util/List;

    iput-object p4, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->d:Ljava/util/List;

    iput-boolean p5, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->e:Z

    iput-object p6, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ls1/a/a/a/v0/d/a/d0/n/k$a;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/d/a/d0/n/k$a;

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->a:Ls1/a/a/a/v0/m/e0;

    iget-object v1, p1, Ls1/a/a/a/v0/d/a/d0/n/k$a;->a:Ls1/a/a/a/v0/m/e0;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->b:Ls1/a/a/a/v0/m/e0;

    iget-object v1, p1, Ls1/a/a/a/v0/d/a/d0/n/k$a;->b:Ls1/a/a/a/v0/m/e0;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->c:Ljava/util/List;

    iget-object v1, p1, Ls1/a/a/a/v0/d/a/d0/n/k$a;->c:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->d:Ljava/util/List;

    iget-object v1, p1, Ls1/a/a/a/v0/d/a/d0/n/k$a;->d:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->e:Z

    iget-boolean v1, p1, Ls1/a/a/a/v0/d/a/d0/n/k$a;->e:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->f:Ljava/util/List;

    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/n/k$a;->f:Ljava/util/List;

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

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->a:Ls1/a/a/a/v0/m/e0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->b:Ls1/a/a/a/v0/m/e0;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ls1/a/a/a/v0/m/e0;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->c:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->d:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->e:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->f:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "MethodSignatureData(returnType="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->a:Ls1/a/a/a/v0/m/e0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", receiverType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->b:Ls1/a/a/a/v0/m/e0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", valueParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typeParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasStableParameterNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$a;->f:Ljava/util/List;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->l(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
