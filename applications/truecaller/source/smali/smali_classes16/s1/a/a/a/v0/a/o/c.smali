.class public final enum Ls1/a/a/a/v0/a/o/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/a/o/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/a/o/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Ls1/a/a/a/v0/a/o/c;

.field public static final enum d:Ls1/a/a/a/v0/a/o/c;

.field public static final enum e:Ls1/a/a/a/v0/a/o/c;

.field public static final enum f:Ls1/a/a/a/v0/a/o/c;

.field public static final synthetic g:[Ls1/a/a/a/v0/a/o/c;

.field public static final h:Ls1/a/a/a/v0/a/o/c$a;


# instance fields
.field public final a:Ls1/a/a/a/v0/f/b;

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ls1/a/a/a/v0/a/o/c;

    new-instance v1, Ls1/a/a/a/v0/a/o/c;

    .line 1
    sget-object v2, Ls1/a/a/a/v0/a/k;->k:Ls1/a/a/a/v0/f/b;

    const-string v3, "Function"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2, v3}, Ls1/a/a/a/v0/a/o/c;-><init>(Ljava/lang/String;ILs1/a/a/a/v0/f/b;Ljava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/a/o/c;->c:Ls1/a/a/a/v0/a/o/c;

    aput-object v1, v0, v4

    new-instance v1, Ls1/a/a/a/v0/a/o/c;

    .line 2
    sget-object v2, Ls1/a/a/a/v0/a/k;->c:Ls1/a/a/a/v0/f/b;

    const-string v3, "SuspendFunction"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2, v3}, Ls1/a/a/a/v0/a/o/c;-><init>(Ljava/lang/String;ILs1/a/a/a/v0/f/b;Ljava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/a/o/c;->d:Ls1/a/a/a/v0/a/o/c;

    aput-object v1, v0, v4

    new-instance v1, Ls1/a/a/a/v0/a/o/c;

    .line 3
    sget-object v2, Ls1/a/a/a/v0/a/k;->h:Ls1/a/a/a/v0/f/b;

    const-string v3, "KFunction"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2, v3}, Ls1/a/a/a/v0/a/o/c;-><init>(Ljava/lang/String;ILs1/a/a/a/v0/f/b;Ljava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/a/o/c;->e:Ls1/a/a/a/v0/a/o/c;

    aput-object v1, v0, v4

    new-instance v1, Ls1/a/a/a/v0/a/o/c;

    const-string v3, "KSuspendFunction"

    const/4 v4, 0x3

    .line 4
    invoke-direct {v1, v3, v4, v2, v3}, Ls1/a/a/a/v0/a/o/c;-><init>(Ljava/lang/String;ILs1/a/a/a/v0/f/b;Ljava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/a/o/c;->f:Ls1/a/a/a/v0/a/o/c;

    aput-object v1, v0, v4

    sput-object v0, Ls1/a/a/a/v0/a/o/c;->g:[Ls1/a/a/a/v0/a/o/c;

    new-instance v0, Ls1/a/a/a/v0/a/o/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/a/o/c$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Ls1/a/a/a/v0/a/o/c;->h:Ls1/a/a/a/v0/a/o/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILs1/a/a/a/v0/f/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ls1/a/a/a/v0/a/o/c;->a:Ls1/a/a/a/v0/f/b;

    iput-object p4, p0, Ls1/a/a/a/v0/a/o/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/a/o/c;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/a/o/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/a/o/c;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/a/o/c;
    .locals 1

    sget-object v0, Ls1/a/a/a/v0/a/o/c;->g:[Ls1/a/a/a/v0/a/o/c;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/a/o/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/a/o/c;

    return-object v0
.end method


# virtual methods
.method public final a(I)Ls1/a/a/a/v0/f/e;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ls1/a/a/a/v0/a/o/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object p1

    const-string v0, "Name.identifier(\"$classNamePrefix$arity\")"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
