.class public final Le/a/f/z/n0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/incallui/utils/audio/AudioRoute;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/p5/r0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/p5/r0/a;

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/incallui/utils/audio/AudioRoute;Ljava/util/List;Le/a/p5/r0/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/incallui/utils/audio/AudioRoute;",
            "Ljava/util/List<",
            "Le/a/p5/r0/a;",
            ">;",
            "Le/a/p5/r0/a;",
            "Z)V"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectedHeadsets"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/z/n0/a;->a:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    iput-object p2, p0, Le/a/f/z/n0/a;->b:Ljava/util/List;

    iput-object p3, p0, Le/a/f/z/n0/a;->c:Le/a/p5/r0/a;

    iput-boolean p4, p0, Le/a/f/z/n0/a;->d:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/f/z/n0/a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/f/z/n0/a;

    iget-object v0, p0, Le/a/f/z/n0/a;->a:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    iget-object v1, p1, Le/a/f/z/n0/a;->a:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/f/z/n0/a;->b:Ljava/util/List;

    iget-object v1, p1, Le/a/f/z/n0/a;->b:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/f/z/n0/a;->c:Le/a/p5/r0/a;

    iget-object v1, p1, Le/a/f/z/n0/a;->c:Le/a/p5/r0/a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/f/z/n0/a;->d:Z

    iget-boolean p1, p1, Le/a/f/z/n0/a;->d:Z

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
    .locals 3

    iget-object v0, p0, Le/a/f/z/n0/a;->a:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/f/z/n0/a;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/f/z/n0/a;->c:Le/a/p5/r0/a;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Le/a/p5/r0/a;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/f/z/n0/a;->d:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AudioState(route="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/f/z/n0/a;->a:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectedHeadsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/f/z/n0/a;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activeHeadset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/f/z/n0/a;->c:Le/a/p5/r0/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", muted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/f/z/n0/a;->d:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
