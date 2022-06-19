.class public final enum Le/m/d/y/e1/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_messaging/zzq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/d/y/e1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/d/y/e1/a$b;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_messaging/zzq;"
    }
.end annotation


# static fields
.field public static final enum b:Le/m/d/y/e1/a$b;

.field public static final enum c:Le/m/d/y/e1/a$b;

.field public static final enum d:Le/m/d/y/e1/a$b;

.field public static final synthetic e:[Le/m/d/y/e1/a$b;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le/m/d/y/e1/a$b;

    const-string v1, "UNKNOWN_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Le/m/d/y/e1/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/m/d/y/e1/a$b;->b:Le/m/d/y/e1/a$b;

    new-instance v1, Le/m/d/y/e1/a$b;

    const-string v3, "MESSAGE_DELIVERED"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Le/m/d/y/e1/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/m/d/y/e1/a$b;->c:Le/m/d/y/e1/a$b;

    new-instance v3, Le/m/d/y/e1/a$b;

    const-string v5, "MESSAGE_OPEN"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Le/m/d/y/e1/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Le/m/d/y/e1/a$b;->d:Le/m/d/y/e1/a$b;

    const/4 v5, 0x3

    new-array v5, v5, [Le/m/d/y/e1/a$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le/m/d/y/e1/a$b;->e:[Le/m/d/y/e1/a$b;

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

    iput p3, p0, Le/m/d/y/e1/a$b;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/m/d/y/e1/a$b;
    .locals 1

    .line 1
    const-class v0, Le/m/d/y/e1/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/m/d/y/e1/a$b;

    return-object p0
.end method

.method public static values()[Le/m/d/y/e1/a$b;
    .locals 1

    .line 1
    sget-object v0, Le/m/d/y/e1/a$b;->e:[Le/m/d/y/e1/a$b;

    invoke-virtual {v0}, [Le/m/d/y/e1/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/d/y/e1/a$b;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Le/m/d/y/e1/a$b;->a:I

    return v0
.end method
