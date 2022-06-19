.class public final Lcom/hiya/client/callerid/ui/incallui/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/incallui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:Z

.field private final f:Ljava/lang/Integer;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIZZLjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->a:I

    iput p2, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->b:I

    iput p3, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->c:I

    iput-boolean p4, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->d:Z

    iput-boolean p5, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->e:Z

    iput-object p6, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->f:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->d:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->b:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->c:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/hiya/client/callerid/ui/incallui/c$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hiya/client/callerid/ui/incallui/c$a;

    iget v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->a:I

    iget v1, p1, Lcom/hiya/client/callerid/ui/incallui/c$a;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->b:I

    iget v1, p1, Lcom/hiya/client/callerid/ui/incallui/c$a;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->c:I

    iget v1, p1, Lcom/hiya/client/callerid/ui/incallui/c$a;->c:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->d:Z

    iget-boolean v1, p1, Lcom/hiya/client/callerid/ui/incallui/c$a;->d:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->e:Z

    iget-boolean v1, p1, Lcom/hiya/client/callerid/ui/incallui/c$a;->e:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->f:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/hiya/client/callerid/ui/incallui/c$a;->f:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/hiya/client/callerid/ui/incallui/c$a;->g:Ljava/lang/String;

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

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->e:Z

    return v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->d:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->e:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->f:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvatarViewUpdate(visibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageDimension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageMarginDimension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frameVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", thickFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", drawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/c$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
