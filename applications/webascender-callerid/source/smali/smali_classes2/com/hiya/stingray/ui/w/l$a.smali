.class public final Lcom/hiya/stingray/ui/w/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/w/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Lcom/hiya/stingray/t/h1/i;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/hiya/stingray/t/h1/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;Z",
            "Lcom/hiya/stingray/t/h1/i;",
            ")V"
        }
    .end annotation

    const-string v0, "place"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l$a;->a:Ljava/util/List;

    iput-boolean p2, p0, Lcom/hiya/stingray/ui/w/l$a;->b:Z

    iput-object p3, p0, Lcom/hiya/stingray/ui/w/l$a;->c:Lcom/hiya/stingray/t/h1/i;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$a;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b()Lcom/hiya/stingray/t/h1/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$a;->c:Lcom/hiya/stingray/t/h1/i;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/w/l$a;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/hiya/stingray/ui/w/l$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hiya/stingray/ui/w/l$a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$a;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/hiya/stingray/ui/w/l$a;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hiya/stingray/ui/w/l$a;->b:Z

    iget-boolean v1, p1, Lcom/hiya/stingray/ui/w/l$a;->b:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$a;->c:Lcom/hiya/stingray/t/h1/i;

    iget-object p1, p1, Lcom/hiya/stingray/ui/w/l$a;->c:Lcom/hiya/stingray/t/h1/i;

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hiya/stingray/ui/w/l$a;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/ui/w/l$a;->c:Lcom/hiya/stingray/t/h1/i;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BusinessesQueryResult(businesses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l$a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", queryChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hiya/stingray/ui/w/l$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", place="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l$a;->c:Lcom/hiya/stingray/t/h1/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
