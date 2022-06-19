.class public final Le/a/h/b/d/a/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/h/b/d/a/b/p;

.field public final b:Le/a/h/b/d/a/b/a;

.field public final c:Lcom/truecaller/common/ui/avatar/AvatarXConfig;


# direct methods
.method public constructor <init>(Le/a/h/b/d/a/b/p;Le/a/h/b/d/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 1

    const-string v0, "itemData"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitle"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatar"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    iput-object p2, p0, Le/a/h/b/d/a/b/k;->b:Le/a/h/b/d/a/b/a;

    iput-object p3, p0, Le/a/h/b/d/a/b/k;->c:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/h/b/d/a/b/k;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/h/b/d/a/b/k;

    iget-object v0, p0, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    iget-object v1, p1, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/d/a/b/k;->b:Le/a/h/b/d/a/b/a;

    iget-object v1, p1, Le/a/h/b/d/a/b/k;->b:Le/a/h/b/d/a/b/a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/d/a/b/k;->c:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    iget-object p1, p1, Le/a/h/b/d/a/b/k;->c:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

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

    iget-object v0, p0, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/h/b/d/a/b/p;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/h/b/d/a/b/k;->b:Le/a/h/b/d/a/b/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Le/a/h/b/d/a/b/a;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/h/b/d/a/b/k;->c:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CompletedCallLogItem(itemData="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/a/b/k;->b:Le/a/h/b/d/a/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/a/b/k;->c:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
