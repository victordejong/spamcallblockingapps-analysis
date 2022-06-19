.class public final enum Le/m/b/x/d/k$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/x/d/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/b/x/d/k$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/m/b/x/d/k$c;

.field public static final synthetic b:[Le/m/b/x/d/k$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/m/b/x/d/k$c;

    const-string v1, "IGNORE_CASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/m/b/x/d/k$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/m/b/x/d/k$c;->a:Le/m/b/x/d/k$c;

    const/4 v1, 0x1

    new-array v1, v1, [Le/m/b/x/d/k$c;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Le/m/b/x/d/k$c;->b:[Le/m/b/x/d/k$c;

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

.method public static valueOf(Ljava/lang/String;)Le/m/b/x/d/k$c;
    .locals 1

    .line 1
    const-class v0, Le/m/b/x/d/k$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/m/b/x/d/k$c;

    return-object p0
.end method

.method public static values()[Le/m/b/x/d/k$c;
    .locals 1

    .line 1
    sget-object v0, Le/m/b/x/d/k$c;->b:[Le/m/b/x/d/k$c;

    invoke-virtual {v0}, [Le/m/b/x/d/k$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/b/x/d/k$c;

    return-object v0
.end method
