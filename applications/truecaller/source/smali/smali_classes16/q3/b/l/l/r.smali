.class public final enum Lq3/b/l/l/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq3/b/l/l/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lq3/b/l/l/r;

.field public static final enum f:Lq3/b/l/l/r;

.field public static final enum g:Lq3/b/l/l/r;

.field public static final enum h:Lq3/b/l/l/r;

.field public static final synthetic i:[Lq3/b/l/l/r;


# instance fields
.field public final a:B

.field public final b:B

.field public final c:C

.field public final d:C


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x4

    new-array v0, v0, [Lq3/b/l/l/r;

    new-instance v1, Lq3/b/l/l/r;

    const-string v2, "OBJ"

    const/4 v3, 0x0

    const/16 v4, 0x7b

    const/16 v5, 0x7d

    .line 1
    invoke-direct {v1, v2, v3, v4, v5}, Lq3/b/l/l/r;-><init>(Ljava/lang/String;ICC)V

    sput-object v1, Lq3/b/l/l/r;->e:Lq3/b/l/l/r;

    aput-object v1, v0, v3

    new-instance v1, Lq3/b/l/l/r;

    const-string v2, "LIST"

    const/4 v3, 0x1

    const/16 v6, 0x5b

    const/16 v7, 0x5d

    .line 2
    invoke-direct {v1, v2, v3, v6, v7}, Lq3/b/l/l/r;-><init>(Ljava/lang/String;ICC)V

    sput-object v1, Lq3/b/l/l/r;->f:Lq3/b/l/l/r;

    aput-object v1, v0, v3

    new-instance v1, Lq3/b/l/l/r;

    const-string v2, "MAP"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v4, v5}, Lq3/b/l/l/r;-><init>(Ljava/lang/String;ICC)V

    sput-object v1, Lq3/b/l/l/r;->g:Lq3/b/l/l/r;

    aput-object v1, v0, v3

    new-instance v1, Lq3/b/l/l/r;

    const-string v2, "POLY_OBJ"

    const/4 v3, 0x3

    .line 4
    invoke-direct {v1, v2, v3, v6, v7}, Lq3/b/l/l/r;-><init>(Ljava/lang/String;ICC)V

    sput-object v1, Lq3/b/l/l/r;->h:Lq3/b/l/l/r;

    aput-object v1, v0, v3

    sput-object v0, Lq3/b/l/l/r;->i:[Lq3/b/l/l/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ICC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CC)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-char p3, p0, Lq3/b/l/l/r;->c:C

    iput-char p4, p0, Lq3/b/l/l/r;->d:C

    .line 2
    invoke-static {p3}, Lq3/b/l/l/i;->a(C)B

    move-result p1

    iput-byte p1, p0, Lq3/b/l/l/r;->a:B

    .line 3
    invoke-static {p4}, Lq3/b/l/l/i;->a(C)B

    move-result p1

    iput-byte p1, p0, Lq3/b/l/l/r;->b:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq3/b/l/l/r;
    .locals 1

    const-class v0, Lq3/b/l/l/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq3/b/l/l/r;

    return-object p0
.end method

.method public static values()[Lq3/b/l/l/r;
    .locals 1

    sget-object v0, Lq3/b/l/l/r;->i:[Lq3/b/l/l/r;

    invoke-virtual {v0}, [Lq3/b/l/l/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq3/b/l/l/r;

    return-object v0
.end method
