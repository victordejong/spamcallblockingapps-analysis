.class public final enum Le/a/f/a/t/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/f/a/t/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/f/a/t/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/a/f/a/t/c$a;

.field public static final enum b:Le/a/f/a/t/c$a;

.field public static final synthetic c:[Le/a/f/a/t/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Le/a/f/a/t/c$a;

    new-instance v1, Le/a/f/a/t/c$a;

    const-string v2, "Business"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/f/a/t/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/f/a/t/c$a;->a:Le/a/f/a/t/c$a;

    aput-object v1, v0, v3

    new-instance v1, Le/a/f/a/t/c$a;

    const-string v2, "P2P"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Le/a/f/a/t/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/f/a/t/c$a;->b:Le/a/f/a/t/c$a;

    aput-object v1, v0, v3

    sput-object v0, Le/a/f/a/t/c$a;->c:[Le/a/f/a/t/c$a;

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

.method public static valueOf(Ljava/lang/String;)Le/a/f/a/t/c$a;
    .locals 1

    const-class v0, Le/a/f/a/t/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/f/a/t/c$a;

    return-object p0
.end method

.method public static values()[Le/a/f/a/t/c$a;
    .locals 1

    sget-object v0, Le/a/f/a/t/c$a;->c:[Le/a/f/a/t/c$a;

    invoke-virtual {v0}, [Le/a/f/a/t/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/f/a/t/c$a;

    return-object v0
.end method
