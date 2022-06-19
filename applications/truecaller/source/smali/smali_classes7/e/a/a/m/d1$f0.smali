.class public final Le/a/a/m/d1$f0;
.super Le/a/a/m/d1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/m/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f0"
.end annotation


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-string v0, "WhoViewedMe"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/a/m/d1;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    iput p1, p0, Le/a/a/m/d1$f0;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/a/m/d1$f0;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/a/m/d1$f0;

    iget v0, p0, Le/a/a/m/d1$f0;->b:I

    iget p1, p1, Le/a/a/m/d1$f0;->b:I

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
    .locals 1

    iget v0, p0, Le/a/a/m/d1$f0;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "WhoViewedMe(number="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/a/m/d1$f0;->b:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
