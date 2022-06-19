.class public final enum Ls1/a/a/a/v0/e/v$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/e/v$c;",
        ">;",
        "Ls1/a/a/a/v0/h/i$a;"
    }
.end annotation


# static fields
.field public static final enum b:Ls1/a/a/a/v0/e/v$c;

.field public static final enum c:Ls1/a/a/a/v0/e/v$c;

.field public static final enum d:Ls1/a/a/a/v0/e/v$c;

.field public static final synthetic e:[Ls1/a/a/a/v0/e/v$c;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/v$c;

    const-string v1, "WARNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ls1/a/a/a/v0/e/v$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls1/a/a/a/v0/e/v$c;->b:Ls1/a/a/a/v0/e/v$c;

    .line 2
    new-instance v1, Ls1/a/a/a/v0/e/v$c;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ls1/a/a/a/v0/e/v$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ls1/a/a/a/v0/e/v$c;->c:Ls1/a/a/a/v0/e/v$c;

    .line 3
    new-instance v3, Ls1/a/a/a/v0/e/v$c;

    const-string v5, "HIDDEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ls1/a/a/a/v0/e/v$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ls1/a/a/a/v0/e/v$c;->d:Ls1/a/a/a/v0/e/v$c;

    const/4 v5, 0x3

    new-array v5, v5, [Ls1/a/a/a/v0/e/v$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Ls1/a/a/a/v0/e/v$c;->e:[Ls1/a/a/a/v0/e/v$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Ls1/a/a/a/v0/e/v$c;->a:I

    return-void
.end method

.method public static a(I)Ls1/a/a/a/v0/e/v$c;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Ls1/a/a/a/v0/e/v$c;->d:Ls1/a/a/a/v0/e/v$c;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Ls1/a/a/a/v0/e/v$c;->c:Ls1/a/a/a/v0/e/v$c;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Ls1/a/a/a/v0/e/v$c;->b:Ls1/a/a/a/v0/e/v$c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/e/v$c;
    .locals 1

    .line 1
    const-class v0, Ls1/a/a/a/v0/e/v$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/e/v$c;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/e/v$c;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/v$c;->e:[Ls1/a/a/a/v0/e/v$c;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/e/v$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/e/v$c;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/e/v$c;->a:I

    return v0
.end method
