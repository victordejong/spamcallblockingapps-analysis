.class public final Lcom/hiya/client/callerid/ui/b0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg/g/b/c/f;

.field private final b:Z


# direct methods
.method public constructor <init>(Lg/g/b/c/f;Z)V
    .locals 1

    const-string v0, "callerId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/b0/e;->a:Lg/g/b/c/f;

    iput-boolean p2, p0, Lcom/hiya/client/callerid/ui/b0/e;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Lg/g/b/c/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/b0/e;->a:Lg/g/b/c/f;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/b0/e;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/hiya/client/callerid/ui/b0/e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hiya/client/callerid/ui/b0/e;

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/b0/e;->a:Lg/g/b/c/f;

    iget-object v1, p1, Lcom/hiya/client/callerid/ui/b0/e;->a:Lg/g/b/c/f;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/b0/e;->b:Z

    iget-boolean p1, p1, Lcom/hiya/client/callerid/ui/b0/e;->b:Z

    if-ne v0, p1, :cond_0

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
    .locals 2

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/b0/e;->a:Lg/g/b/c/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hiya/client/callerid/ui/b0/e;->b:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallerIdWithSource(callerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/b0/e;->a:Lg/g/b/c/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isContact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hiya/client/callerid/ui/b0/e;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
