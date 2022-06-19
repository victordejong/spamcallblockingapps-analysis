.class public final Ls1/a/a/a/v0/c/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/c/a/e$a;
    }
.end annotation


# static fields
.field public static final c:Ls1/a/a/a/v0/c/a/e;

.field public static final d:Ls1/a/a/a/v0/c/a/e$a;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls1/a/a/a/v0/c/a/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/c/a/e$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Ls1/a/a/a/v0/c/a/e;->d:Ls1/a/a/a/v0/c/a/e$a;

    .line 1
    new-instance v0, Ls1/a/a/a/v0/c/a/e;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Ls1/a/a/a/v0/c/a/e;-><init>(II)V

    sput-object v0, Ls1/a/a/a/v0/c/a/e;->c:Ls1/a/a/a/v0/c/a/e;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls1/a/a/a/v0/c/a/e;->a:I

    iput p2, p0, Ls1/a/a/a/v0/c/a/e;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ls1/a/a/a/v0/c/a/e;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/c/a/e;

    iget v0, p0, Ls1/a/a/a/v0/c/a/e;->a:I

    iget v1, p1, Ls1/a/a/a/v0/c/a/e;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ls1/a/a/a/v0/c/a/e;->b:I

    iget p1, p1, Ls1/a/a/a/v0/c/a/e;->b:I

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

    iget v0, p0, Ls1/a/a/a/v0/c/a/e;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ls1/a/a/a/v0/c/a/e;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Position(line="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ls1/a/a/a/v0/c/a/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ls1/a/a/a/v0/c/a/e;->b:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
