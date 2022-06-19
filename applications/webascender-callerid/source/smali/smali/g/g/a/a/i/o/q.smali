.class public final Lg/g/a/a/i/o/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isPrivate:Z
    .annotation runtime Lcom/google/gson/v/c;
        value = "isPrivate"
    .end annotation
.end field

.field private final pai:Lg/g/a/a/i/o/r;
    .annotation runtime Lcom/google/gson/v/c;
        value = "pai"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/g/a/a/i/o/r;Z)V
    .locals 1

    const-string v0, "pai"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/a/i/o/q;->pai:Lg/g/a/a/i/o/r;

    iput-boolean p2, p0, Lg/g/a/a/i/o/q;->isPrivate:Z

    return-void
.end method

.method public static synthetic copy$default(Lg/g/a/a/i/o/q;Lg/g/a/a/i/o/r;ZILjava/lang/Object;)Lg/g/a/a/i/o/q;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lg/g/a/a/i/o/q;->pai:Lg/g/a/a/i/o/r;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lg/g/a/a/i/o/q;->isPrivate:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lg/g/a/a/i/o/q;->copy(Lg/g/a/a/i/o/r;Z)Lg/g/a/a/i/o/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lg/g/a/a/i/o/r;
    .locals 1

    iget-object v0, p0, Lg/g/a/a/i/o/q;->pai:Lg/g/a/a/i/o/r;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lg/g/a/a/i/o/q;->isPrivate:Z

    return v0
.end method

.method public final copy(Lg/g/a/a/i/o/r;Z)Lg/g/a/a/i/o/q;
    .locals 1

    const-string v0, "pai"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/g/a/a/i/o/q;

    invoke-direct {v0, p1, p2}, Lg/g/a/a/i/o/q;-><init>(Lg/g/a/a/i/o/r;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lg/g/a/a/i/o/q;

    if-eqz v0, :cond_0

    check-cast p1, Lg/g/a/a/i/o/q;

    iget-object v0, p0, Lg/g/a/a/i/o/q;->pai:Lg/g/a/a/i/o/r;

    iget-object v1, p1, Lg/g/a/a/i/o/q;->pai:Lg/g/a/a/i/o/r;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lg/g/a/a/i/o/q;->isPrivate:Z

    iget-boolean p1, p1, Lg/g/a/a/i/o/q;->isPrivate:Z

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

.method public final getPai()Lg/g/a/a/i/o/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/q;->pai:Lg/g/a/a/i/o/r;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lg/g/a/a/i/o/q;->pai:Lg/g/a/a/i/o/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/g/a/a/i/o/q;->isPrivate:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isPrivate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/g/a/a/i/o/q;->isPrivate:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkInfoDTO(pai="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/i/o/q;->pai:Lg/g/a/a/i/o/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPrivate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/g/a/a/i/o/q;->isPrivate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
