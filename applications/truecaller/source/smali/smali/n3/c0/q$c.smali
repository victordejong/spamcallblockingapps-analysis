.class public final enum Ln3/c0/q$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/c0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln3/c0/q$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ln3/c0/q$c;

.field public static final enum b:Ln3/c0/q$c;

.field public static final enum c:Ln3/c0/q$c;

.field public static final synthetic d:[Ln3/c0/q$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ln3/c0/q$c;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln3/c0/q$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln3/c0/q$c;->a:Ln3/c0/q$c;

    .line 2
    new-instance v1, Ln3/c0/q$c;

    const-string v3, "TRUNCATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln3/c0/q$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln3/c0/q$c;->b:Ln3/c0/q$c;

    .line 3
    new-instance v3, Ln3/c0/q$c;

    const-string v5, "WRITE_AHEAD_LOGGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ln3/c0/q$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ln3/c0/q$c;->c:Ln3/c0/q$c;

    const/4 v5, 0x3

    new-array v5, v5, [Ln3/c0/q$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Ln3/c0/q$c;->d:[Ln3/c0/q$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln3/c0/q$c;
    .locals 1

    .line 1
    const-class v0, Ln3/c0/q$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln3/c0/q$c;

    return-object p0
.end method

.method public static values()[Ln3/c0/q$c;
    .locals 1

    .line 1
    sget-object v0, Ln3/c0/q$c;->d:[Ln3/c0/q$c;

    invoke-virtual {v0}, [Ln3/c0/q$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/c0/q$c;

    return-object v0
.end method
