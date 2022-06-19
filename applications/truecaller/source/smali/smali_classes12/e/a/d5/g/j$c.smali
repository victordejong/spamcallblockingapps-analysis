.class public final enum Le/a/d5/g/j$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d5/g/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/d5/g/j$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Le/a/d5/g/j$c;

.field public static final enum d:Le/a/d5/g/j$c;

.field public static final enum e:Le/a/d5/g/j$c;

.field public static final enum f:Le/a/d5/g/j$c;

.field public static final synthetic g:[Le/a/d5/g/j$c;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Le/a/d5/g/j$c;

    const-string v1, "DIALER"

    const/4 v2, 0x0

    const v3, 0x7f120434

    invoke-direct {v0, v1, v2, v3, v2}, Le/a/d5/g/j$c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Le/a/d5/g/j$c;->c:Le/a/d5/g/j$c;

    .line 2
    new-instance v1, Le/a/d5/g/j$c;

    const-string v3, "CALLER_ID"

    const/4 v4, 0x1

    const v5, 0x7f12042f

    const v6, 0x7f081704

    invoke-direct {v1, v3, v4, v5, v6}, Le/a/d5/g/j$c;-><init>(Ljava/lang/String;III)V

    sput-object v1, Le/a/d5/g/j$c;->d:Le/a/d5/g/j$c;

    .line 3
    new-instance v3, Le/a/d5/g/j$c;

    const-string v5, "BLOCK"

    const/4 v6, 0x2

    const v7, 0x7f12042e

    const v8, 0x7f081706

    invoke-direct {v3, v5, v6, v7, v8}, Le/a/d5/g/j$c;-><init>(Ljava/lang/String;III)V

    sput-object v3, Le/a/d5/g/j$c;->e:Le/a/d5/g/j$c;

    .line 4
    new-instance v5, Le/a/d5/g/j$c;

    const-string v7, "AVAILABILITY"

    const/4 v8, 0x3

    const v9, 0x7f12042d

    const v10, 0x7f081702

    invoke-direct {v5, v7, v8, v9, v10}, Le/a/d5/g/j$c;-><init>(Ljava/lang/String;III)V

    sput-object v5, Le/a/d5/g/j$c;->f:Le/a/d5/g/j$c;

    const/4 v7, 0x4

    new-array v7, v7, [Le/a/d5/g/j$c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Le/a/d5/g/j$c;->g:[Le/a/d5/g/j$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Le/a/d5/g/j$c;->a:I

    .line 3
    iput p4, p0, Le/a/d5/g/j$c;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/a/d5/g/j$c;
    .locals 1

    .line 1
    const-class v0, Le/a/d5/g/j$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/d5/g/j$c;

    return-object p0
.end method

.method public static values()[Le/a/d5/g/j$c;
    .locals 1

    .line 1
    sget-object v0, Le/a/d5/g/j$c;->g:[Le/a/d5/g/j$c;

    invoke-virtual {v0}, [Le/a/d5/g/j$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/d5/g/j$c;

    return-object v0
.end method
