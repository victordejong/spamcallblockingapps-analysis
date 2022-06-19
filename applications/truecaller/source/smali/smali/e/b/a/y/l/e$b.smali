.class public final enum Le/b/a/y/l/e$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/a/y/l/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/b/a/y/l/e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/b/a/y/l/e$b;

.field public static final enum b:Le/b/a/y/l/e$b;

.field public static final enum c:Le/b/a/y/l/e$b;

.field public static final enum d:Le/b/a/y/l/e$b;

.field public static final synthetic e:[Le/b/a/y/l/e$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Le/b/a/y/l/e$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/b/a/y/l/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/b/a/y/l/e$b;->a:Le/b/a/y/l/e$b;

    .line 2
    new-instance v1, Le/b/a/y/l/e$b;

    const-string v3, "ADD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/b/a/y/l/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/b/a/y/l/e$b;->b:Le/b/a/y/l/e$b;

    .line 3
    new-instance v3, Le/b/a/y/l/e$b;

    const-string v5, "INVERT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/b/a/y/l/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/b/a/y/l/e$b;->c:Le/b/a/y/l/e$b;

    .line 4
    new-instance v5, Le/b/a/y/l/e$b;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le/b/a/y/l/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le/b/a/y/l/e$b;->d:Le/b/a/y/l/e$b;

    const/4 v7, 0x4

    new-array v7, v7, [Le/b/a/y/l/e$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Le/b/a/y/l/e$b;->e:[Le/b/a/y/l/e$b;

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

.method public static valueOf(Ljava/lang/String;)Le/b/a/y/l/e$b;
    .locals 1

    .line 1
    const-class v0, Le/b/a/y/l/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/b/a/y/l/e$b;

    return-object p0
.end method

.method public static values()[Le/b/a/y/l/e$b;
    .locals 1

    .line 1
    sget-object v0, Le/b/a/y/l/e$b;->e:[Le/b/a/y/l/e$b;

    invoke-virtual {v0}, [Le/b/a/y/l/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/b/a/y/l/e$b;

    return-object v0
.end method
