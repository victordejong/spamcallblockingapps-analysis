.class public final enum Ls1/a/a/a/v0/a/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/a/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic d:[Ls1/a/a/a/v0/a/m;


# instance fields
.field public final a:Ls1/a/a/a/v0/f/e;

.field public final b:Ls1/a/a/a/v0/f/a;

.field public final c:Ls1/a/a/a/v0/f/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ls1/a/a/a/v0/a/m;

    new-instance v1, Ls1/a/a/a/v0/a/m;

    const-string v2, "kotlin/UByte"

    .line 1
    invoke-static {v2}, Ls1/a/a/a/v0/f/a;->e(Ljava/lang/String;)Ls1/a/a/a/v0/f/a;

    move-result-object v2

    const-string v3, "ClassId.fromString(\"kotlin/UByte\")"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "UBYTE"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Ls1/a/a/a/v0/a/m;-><init>(Ljava/lang/String;ILs1/a/a/a/v0/f/a;)V

    aput-object v1, v0, v4

    new-instance v1, Ls1/a/a/a/v0/a/m;

    const-string v2, "kotlin/UShort"

    .line 2
    invoke-static {v2}, Ls1/a/a/a/v0/f/a;->e(Ljava/lang/String;)Ls1/a/a/a/v0/f/a;

    move-result-object v2

    const-string v3, "ClassId.fromString(\"kotlin/UShort\")"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "USHORT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Ls1/a/a/a/v0/a/m;-><init>(Ljava/lang/String;ILs1/a/a/a/v0/f/a;)V

    aput-object v1, v0, v4

    new-instance v1, Ls1/a/a/a/v0/a/m;

    const-string v2, "kotlin/UInt"

    .line 3
    invoke-static {v2}, Ls1/a/a/a/v0/f/a;->e(Ljava/lang/String;)Ls1/a/a/a/v0/f/a;

    move-result-object v2

    const-string v3, "ClassId.fromString(\"kotlin/UInt\")"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "UINT"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Ls1/a/a/a/v0/a/m;-><init>(Ljava/lang/String;ILs1/a/a/a/v0/f/a;)V

    aput-object v1, v0, v4

    new-instance v1, Ls1/a/a/a/v0/a/m;

    const-string v2, "kotlin/ULong"

    .line 4
    invoke-static {v2}, Ls1/a/a/a/v0/f/a;->e(Ljava/lang/String;)Ls1/a/a/a/v0/f/a;

    move-result-object v2

    const-string v3, "ClassId.fromString(\"kotlin/ULong\")"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ULONG"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v2}, Ls1/a/a/a/v0/a/m;-><init>(Ljava/lang/String;ILs1/a/a/a/v0/f/a;)V

    aput-object v1, v0, v4

    sput-object v0, Ls1/a/a/a/v0/a/m;->d:[Ls1/a/a/a/v0/a/m;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILs1/a/a/a/v0/f/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ls1/a/a/a/v0/a/m;->c:Ls1/a/a/a/v0/f/a;

    .line 2
    invoke-virtual {p3}, Ls1/a/a/a/v0/f/a;->j()Ls1/a/a/a/v0/f/e;

    move-result-object p1

    const-string p2, "classId.shortClassName"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls1/a/a/a/v0/a/m;->a:Ls1/a/a/a/v0/f/e;

    .line 3
    new-instance p2, Ls1/a/a/a/v0/f/a;

    invoke-virtual {p3}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Array"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)V

    iput-object p2, p0, Ls1/a/a/a/v0/a/m;->b:Ls1/a/a/a/v0/f/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/a/m;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/a/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/a/m;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/a/m;
    .locals 1

    sget-object v0, Ls1/a/a/a/v0/a/m;->d:[Ls1/a/a/a/v0/a/m;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/a/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/a/m;

    return-object v0
.end method
