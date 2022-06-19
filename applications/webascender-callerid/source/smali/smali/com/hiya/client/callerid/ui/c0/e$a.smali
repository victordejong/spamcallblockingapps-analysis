.class public final Lcom/hiya/client/callerid/ui/c0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/c0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lcom/hiya/client/callerid/ui/b0/e;


# direct methods
.method public constructor <init>(ZZLcom/hiya/client/callerid/ui/b0/e;)V
    .locals 1

    const-string v0, "callerIdWithSource"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/hiya/client/callerid/ui/c0/e$a;->a:Z

    iput-boolean p2, p0, Lcom/hiya/client/callerid/ui/c0/e$a;->b:Z

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/c0/e$a;->c:Lcom/hiya/client/callerid/ui/b0/e;

    return-void
.end method


# virtual methods
.method public final a()Lcom/hiya/client/callerid/ui/b0/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e$a;->c:Lcom/hiya/client/callerid/ui/b0/e;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/c0/e$a;->a:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/c0/e$a;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/hiya/client/callerid/ui/c0/e$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hiya/client/callerid/ui/c0/e$a;

    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/c0/e$a;->a:Z

    iget-boolean v1, p1, Lcom/hiya/client/callerid/ui/c0/e$a;->a:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/c0/e$a;->b:Z

    iget-boolean v1, p1, Lcom/hiya/client/callerid/ui/c0/e$a;->b:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e$a;->c:Lcom/hiya/client/callerid/ui/b0/e;

    iget-object p1, p1, Lcom/hiya/client/callerid/ui/c0/e$a;->c:Lcom/hiya/client/callerid/ui/b0/e;

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

    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/c0/e$a;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hiya/client/callerid/ui/c0/e$a;->b:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/c0/e$a;->c:Lcom/hiya/client/callerid/ui/b0/e;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultBundle(processCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hiya/client/callerid/ui/c0/e$a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showOverlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hiya/client/callerid/ui/c0/e$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callerIdWithSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/c0/e$a;->c:Lcom/hiya/client/callerid/ui/b0/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
