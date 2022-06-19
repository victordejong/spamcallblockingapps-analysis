.class public final Lcom/hiya/stingray/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lg/g/b/c/f;

.field private b:Z

.field private c:Lcom/hiya/stingray/manager/n1;

.field private d:Lcom/hiya/stingray/t/e0;


# direct methods
.method public constructor <init>(Lg/g/b/c/f;ZLcom/hiya/stingray/manager/n1;Lcom/hiya/stingray/t/e0;)V
    .locals 1

    const-string v0, "callerId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockHint"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/f$b;->a:Lg/g/b/c/f;

    iput-boolean p2, p0, Lcom/hiya/stingray/f$b;->b:Z

    iput-object p3, p0, Lcom/hiya/stingray/f$b;->c:Lcom/hiya/stingray/manager/n1;

    iput-object p4, p0, Lcom/hiya/stingray/f$b;->d:Lcom/hiya/stingray/t/e0;

    return-void
.end method

.method public synthetic constructor <init>(Lg/g/b/c/f;ZLcom/hiya/stingray/manager/n1;Lcom/hiya/stingray/t/e0;ILkotlin/w/c/g;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 2
    new-instance p3, Lcom/hiya/stingray/manager/n1;

    .line 3
    sget-object p6, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    .line 4
    sget-object v0, Lcom/hiya/stingray/service/a/a;->AUTO_BLOCK_PASS:Lcom/hiya/stingray/service/a/a;

    .line 5
    invoke-direct {p3, p6, v0}, Lcom/hiya/stingray/manager/n1;-><init>(Lcom/hiya/stingray/t/b0;Lcom/hiya/stingray/service/a/a;)V

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/f$b;-><init>(Lg/g/b/c/f;ZLcom/hiya/stingray/manager/n1;Lcom/hiya/stingray/t/e0;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/hiya/stingray/manager/n1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/f$b;->c:Lcom/hiya/stingray/manager/n1;

    return-object v0
.end method

.method public final b()Lcom/hiya/stingray/t/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/f$b;->d:Lcom/hiya/stingray/t/e0;

    return-object v0
.end method

.method public final c()Lg/g/b/c/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/f$b;->a:Lg/g/b/c/f;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/f$b;->b:Z

    return v0
.end method

.method public final e(Lcom/hiya/stingray/manager/n1;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/f$b;->c:Lcom/hiya/stingray/manager/n1;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/hiya/stingray/f$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hiya/stingray/f$b;

    iget-object v0, p0, Lcom/hiya/stingray/f$b;->a:Lg/g/b/c/f;

    iget-object v1, p1, Lcom/hiya/stingray/f$b;->a:Lg/g/b/c/f;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hiya/stingray/f$b;->b:Z

    iget-boolean v1, p1, Lcom/hiya/stingray/f$b;->b:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/f$b;->c:Lcom/hiya/stingray/manager/n1;

    iget-object v1, p1, Lcom/hiya/stingray/f$b;->c:Lcom/hiya/stingray/manager/n1;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/f$b;->d:Lcom/hiya/stingray/t/e0;

    iget-object p1, p1, Lcom/hiya/stingray/f$b;->d:Lcom/hiya/stingray/t/e0;

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

.method public final f(Lcom/hiya/stingray/t/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/f$b;->d:Lcom/hiya/stingray/t/e0;

    return-void
.end method

.method public final g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/f$b;->b:Z

    return-void
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/hiya/stingray/f$b;->a:Lg/g/b/c/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hiya/stingray/f$b;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/f$b;->c:Lcom/hiya/stingray/manager/n1;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/f$b;->d:Lcom/hiya/stingray/t/e0;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostCall(callerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/f$b;->a:Lg/g/b/c/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isContact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hiya/stingray/f$b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", blockHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/f$b;->c:Lcom/hiya/stingray/manager/n1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callRawItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/f$b;->d:Lcom/hiya/stingray/t/e0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
