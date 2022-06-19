.class public final Le/a/c/r/j/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw3/b/a/b;


# direct methods
.method public constructor <init>(Lw3/b/a/b;)V
    .locals 1

    const-string v0, "messageDate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/r/j/q;->a:Lw3/b/a/b;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/r/j/q;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/r/j/q;

    iget-object v0, p0, Le/a/c/r/j/q;->a:Lw3/b/a/b;

    iget-object p1, p1, Le/a/c/r/j/q;->a:Lw3/b/a/b;

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
    .locals 1

    iget-object v0, p0, Le/a/c/r/j/q;->a:Lw3/b/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw3/b/a/e0/c;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "InfoCardMetadata(messageDate="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/c/r/j/q;->a:Lw3/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
