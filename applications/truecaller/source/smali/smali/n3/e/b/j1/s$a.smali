.class public final enum Ln3/e/b/j1/s$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/b/j1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln3/e/b/j1/s$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ln3/e/b/j1/s$a;

.field public static final synthetic b:[Ln3/e/b/j1/s$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ln3/e/b/j1/s$a;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln3/e/b/j1/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln3/e/b/j1/s$a;->a:Ln3/e/b/j1/s$a;

    const/4 v1, 0x1

    new-array v1, v1, [Ln3/e/b/j1/s$a;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Ln3/e/b/j1/s$a;->b:[Ln3/e/b/j1/s$a;

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

.method public static valueOf(Ljava/lang/String;)Ln3/e/b/j1/s$a;
    .locals 1

    .line 1
    const-class v0, Ln3/e/b/j1/s$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln3/e/b/j1/s$a;

    return-object p0
.end method

.method public static values()[Ln3/e/b/j1/s$a;
    .locals 1

    .line 1
    sget-object v0, Ln3/e/b/j1/s$a;->b:[Ln3/e/b/j1/s$a;

    invoke-virtual {v0}, [Ln3/e/b/j1/s$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/e/b/j1/s$a;

    return-object v0
.end method
