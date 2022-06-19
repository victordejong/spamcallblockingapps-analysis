.class public final enum Lt3/a/a/e/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lt3/a/a/e/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lt3/a/a/e/b;

.field public static final enum b:Lt3/a/a/e/b;

.field public static final synthetic c:[Lt3/a/a/e/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lt3/a/a/e/b;

    new-instance v1, Lt3/a/a/e/b;

    const-string v2, "RECT"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, v3}, Lt3/a/a/e/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lt3/a/a/e/b;->a:Lt3/a/a/e/b;

    aput-object v1, v0, v3

    new-instance v1, Lt3/a/a/e/b;

    const-string v2, "CIRCLE"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lt3/a/a/e/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lt3/a/a/e/b;->b:Lt3/a/a/e/b;

    aput-object v1, v0, v3

    sput-object v0, Lt3/a/a/e/b;->c:[Lt3/a/a/e/b;

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

.method public static valueOf(Ljava/lang/String;)Lt3/a/a/e/b;
    .locals 1

    const-class v0, Lt3/a/a/e/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt3/a/a/e/b;

    return-object p0
.end method

.method public static values()[Lt3/a/a/e/b;
    .locals 1

    sget-object v0, Lt3/a/a/e/b;->c:[Lt3/a/a/e/b;

    invoke-virtual {v0}, [Lt3/a/a/e/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt3/a/a/e/b;

    return-object v0
.end method
