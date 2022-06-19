.class public final Lcom/hiya/stingray/manager/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/hiya/stingray/t/b0;

.field private b:Lcom/hiya/stingray/service/a/a;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/t/b0;Lcom/hiya/stingray/service/a/a;)V
    .locals 1

    const-string v0, "blockStatus"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoBlockType"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/n1;->a:Lcom/hiya/stingray/t/b0;

    iput-object p2, p0, Lcom/hiya/stingray/manager/n1;->b:Lcom/hiya/stingray/service/a/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/hiya/stingray/service/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/n1;->b:Lcom/hiya/stingray/service/a/a;

    return-object v0
.end method

.method public final b()Lcom/hiya/stingray/t/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/n1;->a:Lcom/hiya/stingray/t/b0;

    return-object v0
.end method

.method public final c(Lcom/hiya/stingray/service/a/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/manager/n1;->b:Lcom/hiya/stingray/service/a/a;

    return-void
.end method

.method public final d(Lcom/hiya/stingray/t/b0;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/manager/n1;->a:Lcom/hiya/stingray/t/b0;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/hiya/stingray/manager/n1;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hiya/stingray/manager/n1;

    iget-object v0, p0, Lcom/hiya/stingray/manager/n1;->a:Lcom/hiya/stingray/t/b0;

    iget-object v1, p1, Lcom/hiya/stingray/manager/n1;->a:Lcom/hiya/stingray/t/b0;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/manager/n1;->b:Lcom/hiya/stingray/service/a/a;

    iget-object p1, p1, Lcom/hiya/stingray/manager/n1;->b:Lcom/hiya/stingray/service/a/a;

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

    iget-object v0, p0, Lcom/hiya/stingray/manager/n1;->a:Lcom/hiya/stingray/t/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/manager/n1;->b:Lcom/hiya/stingray/service/a/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlockHint(blockStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/manager/n1;->a:Lcom/hiya/stingray/t/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autoBlockType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/manager/n1;->b:Lcom/hiya/stingray/service/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
