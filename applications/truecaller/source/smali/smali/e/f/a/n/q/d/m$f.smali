.class public final enum Le/f/a/n/q/d/m$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/q/d/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/f/a/n/q/d/m$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/f/a/n/q/d/m$f;

.field public static final enum b:Le/f/a/n/q/d/m$f;

.field public static final synthetic c:[Le/f/a/n/q/d/m$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Le/f/a/n/q/d/m$f;

    const-string v1, "MEMORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/f/a/n/q/d/m$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/a/n/q/d/m$f;->a:Le/f/a/n/q/d/m$f;

    .line 2
    new-instance v1, Le/f/a/n/q/d/m$f;

    const-string v3, "QUALITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/f/a/n/q/d/m$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/f/a/n/q/d/m$f;->b:Le/f/a/n/q/d/m$f;

    const/4 v3, 0x2

    new-array v3, v3, [Le/f/a/n/q/d/m$f;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Le/f/a/n/q/d/m$f;->c:[Le/f/a/n/q/d/m$f;

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

.method public static valueOf(Ljava/lang/String;)Le/f/a/n/q/d/m$f;
    .locals 1

    .line 1
    const-class v0, Le/f/a/n/q/d/m$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/f/a/n/q/d/m$f;

    return-object p0
.end method

.method public static values()[Le/f/a/n/q/d/m$f;
    .locals 1

    .line 1
    sget-object v0, Le/f/a/n/q/d/m$f;->c:[Le/f/a/n/q/d/m$f;

    invoke-virtual {v0}, [Le/f/a/n/q/d/m$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/f/a/n/q/d/m$f;

    return-object v0
.end method
