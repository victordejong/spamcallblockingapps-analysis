.class public final Le/a/b0/a/c/m/a$b;
.super Le/a/b0/a/c/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/a/c/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

.field public final b:Ljava/lang/String;

.field public final c:Le/a/b0/a/c/m/a$c;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;Ljava/lang/String;Le/a/b0/a/c/m/a$c;)V
    .locals 1

    const-string v0, "position"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallbackConfig"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/b0/a/c/m/a;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/b0/a/c/m/a$b;->a:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    iput-object p2, p0, Le/a/b0/a/c/m/a$b;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/b0/a/c/m/a$b;->c:Le/a/b0/a/c/m/a$c;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/a/c/m/a$b;->a:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/b0/a/c/m/a$b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/b0/a/c/m/a$b;

    .line 1
    iget-object v0, p0, Le/a/b0/a/c/m/a$b;->a:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    iget-object v1, p1, Le/a/b0/a/c/m/a$b;->a:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b0/a/c/m/a$b;->b:Ljava/lang/String;

    iget-object v1, p1, Le/a/b0/a/c/m/a$b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b0/a/c/m/a$b;->c:Le/a/b0/a/c/m/a$c;

    iget-object p1, p1, Le/a/b0/a/c/m/a$b;->c:Le/a/b0/a/c/m/a$c;

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

    .line 1
    iget-object v0, p0, Le/a/b0/a/c/m/a$b;->a:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/b0/a/c/m/a$b;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/b0/a/c/m/a$b;->c:Le/a/b0/a/c/m/a$c;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Le/a/b0/a/c/m/a$c;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Image(position="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Le/a/b0/a/c/m/a$b;->a:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b0/a/c/m/a$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fallbackConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b0/a/c/m/a$b;->c:Le/a/b0/a/c/m/a$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
