.class public final enum Le/m/d/z/o/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/d/z/o/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/d/z/o/b;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final enum b:Le/m/d/z/o/b;

.field public static final enum c:Le/m/d/z/o/b;

.field public static final enum d:Le/m/d/z/o/b;

.field public static final enum e:Le/m/d/z/o/b;

.field public static final synthetic f:[Le/m/d/z/o/b;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Le/m/d/z/o/b;

    const-string v1, "APPLICATION_PROCESS_STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Le/m/d/z/o/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/m/d/z/o/b;->b:Le/m/d/z/o/b;

    .line 2
    new-instance v1, Le/m/d/z/o/b;

    const-string v3, "FOREGROUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Le/m/d/z/o/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/m/d/z/o/b;->c:Le/m/d/z/o/b;

    .line 3
    new-instance v3, Le/m/d/z/o/b;

    const-string v5, "BACKGROUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Le/m/d/z/o/b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Le/m/d/z/o/b;->d:Le/m/d/z/o/b;

    .line 4
    new-instance v5, Le/m/d/z/o/b;

    const-string v7, "FOREGROUND_BACKGROUND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Le/m/d/z/o/b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Le/m/d/z/o/b;->e:Le/m/d/z/o/b;

    const/4 v7, 0x4

    new-array v7, v7, [Le/m/d/z/o/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Le/m/d/z/o/b;->f:[Le/m/d/z/o/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Le/m/d/z/o/b;->a:I

    return-void
.end method

.method public static a(I)Le/m/d/z/o/b;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Le/m/d/z/o/b;->e:Le/m/d/z/o/b;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Le/m/d/z/o/b;->d:Le/m/d/z/o/b;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Le/m/d/z/o/b;->c:Le/m/d/z/o/b;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Le/m/d/z/o/b;->b:Le/m/d/z/o/b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Le/m/d/z/o/b;
    .locals 1

    .line 1
    const-class v0, Le/m/d/z/o/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/m/d/z/o/b;

    return-object p0
.end method

.method public static values()[Le/m/d/z/o/b;
    .locals 1

    .line 1
    sget-object v0, Le/m/d/z/o/b;->f:[Le/m/d/z/o/b;

    invoke-virtual {v0}, [Le/m/d/z/o/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/d/z/o/b;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Le/m/d/z/o/b;->a:I

    return v0
.end method
