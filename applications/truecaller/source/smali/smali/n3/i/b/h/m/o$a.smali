.class public final enum Ln3/i/b/h/m/o$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/i/b/h/m/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln3/i/b/h/m/o$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ln3/i/b/h/m/o$a;

.field public static final enum b:Ln3/i/b/h/m/o$a;

.field public static final enum c:Ln3/i/b/h/m/o$a;

.field public static final enum d:Ln3/i/b/h/m/o$a;

.field public static final synthetic e:[Ln3/i/b/h/m/o$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ln3/i/b/h/m/o$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln3/i/b/h/m/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln3/i/b/h/m/o$a;->a:Ln3/i/b/h/m/o$a;

    new-instance v1, Ln3/i/b/h/m/o$a;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln3/i/b/h/m/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln3/i/b/h/m/o$a;->b:Ln3/i/b/h/m/o$a;

    new-instance v3, Ln3/i/b/h/m/o$a;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ln3/i/b/h/m/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ln3/i/b/h/m/o$a;->c:Ln3/i/b/h/m/o$a;

    new-instance v5, Ln3/i/b/h/m/o$a;

    const-string v7, "CENTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ln3/i/b/h/m/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ln3/i/b/h/m/o$a;->d:Ln3/i/b/h/m/o$a;

    const/4 v7, 0x4

    new-array v7, v7, [Ln3/i/b/h/m/o$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ln3/i/b/h/m/o$a;->e:[Ln3/i/b/h/m/o$a;

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

.method public static valueOf(Ljava/lang/String;)Ln3/i/b/h/m/o$a;
    .locals 1

    .line 1
    const-class v0, Ln3/i/b/h/m/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln3/i/b/h/m/o$a;

    return-object p0
.end method

.method public static values()[Ln3/i/b/h/m/o$a;
    .locals 1

    .line 1
    sget-object v0, Ln3/i/b/h/m/o$a;->e:[Ln3/i/b/h/m/o$a;

    invoke-virtual {v0}, [Ln3/i/b/h/m/o$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/i/b/h/m/o$a;

    return-object v0
.end method
