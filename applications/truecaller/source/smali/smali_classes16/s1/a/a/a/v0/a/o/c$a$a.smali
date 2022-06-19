.class public final Ls1/a/a/a/v0/a/o/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/a/o/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/a/o/c;

.field public final b:I


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/o/c;I)V
    .locals 1

    const-string v0, "kind"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/a/o/c$a$a;->a:Ls1/a/a/a/v0/a/o/c;

    iput p2, p0, Ls1/a/a/a/v0/a/o/c$a$a;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ls1/a/a/a/v0/a/o/c$a$a;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/a/o/c$a$a;

    iget-object v0, p0, Ls1/a/a/a/v0/a/o/c$a$a;->a:Ls1/a/a/a/v0/a/o/c;

    iget-object v1, p1, Ls1/a/a/a/v0/a/o/c$a$a;->a:Ls1/a/a/a/v0/a/o/c;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ls1/a/a/a/v0/a/o/c$a$a;->b:I

    iget p1, p1, Ls1/a/a/a/v0/a/o/c$a$a;->b:I

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
    .locals 2

    iget-object v0, p0, Ls1/a/a/a/v0/a/o/c$a$a;->a:Ls1/a/a/a/v0/a/o/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ls1/a/a/a/v0/a/o/c$a$a;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "KindWithArity(kind="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/a/o/c$a$a;->a:Ls1/a/a/a/v0/a/o/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", arity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ls1/a/a/a/v0/a/o/c$a$a;->b:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
