.class public final Le/a/v4/s0/l/e/a$a$a;
.super Le/a/v4/s0/l/e/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/v4/s0/l/e/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/v4/s0/l/e/a$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Le/a/v4/s0/l/e/b/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Le/a/v4/s0/l/e/a$a$a;-><init>(Le/a/v4/s0/l/e/b/b;I)V

    return-void
.end method

.method public constructor <init>(Le/a/v4/s0/l/e/b/b;I)V
    .locals 2

    and-int/lit8 p1, p2, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Le/a/v4/s0/l/e/b/a;

    const/4 v0, -0x2

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Le/a/v4/s0/l/e/b/a;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    const-string v0, "error"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Le/a/v4/s0/l/e/a$a;-><init>(Le/a/v4/s0/l/e/b/b;Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/v4/s0/l/e/a$a$a;->b:Le/a/v4/s0/l/e/b/b;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/v4/s0/l/e/a$a$a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/v4/s0/l/e/a$a$a;

    iget-object v0, p0, Le/a/v4/s0/l/e/a$a$a;->b:Le/a/v4/s0/l/e/b/b;

    iget-object p1, p1, Le/a/v4/s0/l/e/a$a$a;->b:Le/a/v4/s0/l/e/b/b;

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

    iget-object v0, p0, Le/a/v4/s0/l/e/a$a$a;->b:Le/a/v4/s0/l/e/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "EmptyBodyError(error="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/v4/s0/l/e/a$a$a;->b:Le/a/v4/s0/l/e/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
