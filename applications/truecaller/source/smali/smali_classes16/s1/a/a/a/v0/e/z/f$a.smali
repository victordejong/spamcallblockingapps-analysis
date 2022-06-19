.class public final Ls1/a/a/a/v0/e/z/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/z/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/z/f$a$a;
    }
.end annotation


# static fields
.field public static final d:Ls1/a/a/a/v0/e/z/f$a;

.field public static final e:Ls1/a/a/a/v0/e/z/f$a$a;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls1/a/a/a/v0/e/z/f$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/e/z/f$a$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Ls1/a/a/a/v0/e/z/f$a;->e:Ls1/a/a/a/v0/e/z/f$a$a;

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/z/f$a;

    const/16 v1, 0x100

    invoke-direct {v0, v1, v1, v1}, Ls1/a/a/a/v0/e/z/f$a;-><init>(III)V

    sput-object v0, Ls1/a/a/a/v0/e/z/f$a;->d:Ls1/a/a/a/v0/e/z/f$a;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls1/a/a/a/v0/e/z/f$a;->a:I

    iput p2, p0, Ls1/a/a/a/v0/e/z/f$a;->b:I

    iput p3, p0, Ls1/a/a/a/v0/e/z/f$a;->c:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls1/a/a/a/v0/e/z/f$a;->a:I

    iput p2, p0, Ls1/a/a/a/v0/e/z/f$a;->b:I

    iput p3, p0, Ls1/a/a/a/v0/e/z/f$a;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ls1/a/a/a/v0/e/z/f$a;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/e/z/f$a;

    iget v0, p0, Ls1/a/a/a/v0/e/z/f$a;->a:I

    iget v1, p1, Ls1/a/a/a/v0/e/z/f$a;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ls1/a/a/a/v0/e/z/f$a;->b:I

    iget v1, p1, Ls1/a/a/a/v0/e/z/f$a;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ls1/a/a/a/v0/e/z/f$a;->c:I

    iget p1, p1, Ls1/a/a/a/v0/e/z/f$a;->c:I

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

    iget v0, p0, Ls1/a/a/a/v0/e/z/f$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ls1/a/a/a/v0/e/z/f$a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ls1/a/a/a/v0/e/z/f$a;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/z/f$a;->c:I

    const/16 v1, 0x2e

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ls1/a/a/a/v0/e/z/f$a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Ls1/a/a/a/v0/e/z/f$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ls1/a/a/a/v0/e/z/f$a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Ls1/a/a/a/v0/e/z/f$a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Ls1/a/a/a/v0/e/z/f$a;->c:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
