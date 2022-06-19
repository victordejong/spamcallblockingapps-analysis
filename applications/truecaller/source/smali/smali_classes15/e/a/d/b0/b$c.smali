.class public final Le/a/d/b0/b$c;
.super Le/a/d/b0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/b0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Le/a/d/b0/b;-><init>(ILs1/z/c/f;)V

    iput p1, p0, Le/a/d/b0/b$c;->a:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/d/b0/b$c;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/d/b0/b$c;

    iget v0, p0, Le/a/d/b0/b$c;->a:I

    iget p1, p1, Le/a/d/b0/b$c;->a:I

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

    iget v0, p0, Le/a/d/b0/b$c;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Searching(peerPosition="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/d/b0/b$c;->a:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
