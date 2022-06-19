.class public final Le/a/p5/r0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/r0/a;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/p5/r0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Le/a/p5/r0/d;-><init>(Le/a/p5/r0/a;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Le/a/p5/r0/a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/r0/a;",
            "Ljava/util/List<",
            "Le/a/p5/r0/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "connectedHeadsets"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/p5/r0/d;->a:Le/a/p5/r0/a;

    iput-object p2, p0, Le/a/p5/r0/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/p5/r0/d;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/p5/r0/d;

    iget-object v0, p0, Le/a/p5/r0/d;->a:Le/a/p5/r0/a;

    iget-object v1, p1, Le/a/p5/r0/d;->a:Le/a/p5/r0/a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/p5/r0/d;->b:Ljava/util/List;

    iget-object p1, p1, Le/a/p5/r0/d;->b:Ljava/util/List;

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

    iget-object v0, p0, Le/a/p5/r0/d;->a:Le/a/p5/r0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/p5/r0/a;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/p5/r0/d;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "BluetoothHeadsetStatus(activeHeadset="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/p5/r0/d;->a:Le/a/p5/r0/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectedHeadsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/p5/r0/d;->b:Ljava/util/List;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->l(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
