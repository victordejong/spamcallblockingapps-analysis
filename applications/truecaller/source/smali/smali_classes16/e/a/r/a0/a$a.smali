.class public final enum Le/a/r/a0/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r/a0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r/a0/a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/r/a0/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le/a/r/a0/a$a;

.field public static final enum c:Le/a/r/a0/a$a;

.field public static final enum d:Le/a/r/a0/a$a;

.field public static final enum e:Le/a/r/a0/a$a;

.field public static final synthetic f:[Le/a/r/a0/a$a;

.field public static final g:Le/a/r/a0/a$a$a;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Le/a/r/a0/a$a;

    new-instance v1, Le/a/r/a0/a$a;

    const-string v2, "SIM"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, v3, v3}, Le/a/r/a0/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/a/r/a0/a$a;->b:Le/a/r/a0/a$a;

    aput-object v1, v0, v3

    new-instance v1, Le/a/r/a0/a$a;

    const-string v2, "GOOGLE"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Le/a/r/a0/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/a/r/a0/a$a;->c:Le/a/r/a0/a$a;

    aput-object v1, v0, v3

    new-instance v1, Le/a/r/a0/a$a;

    const-string v2, "SIM_GOOGLE"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v3}, Le/a/r/a0/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/a/r/a0/a$a;->d:Le/a/r/a0/a$a;

    aput-object v1, v0, v3

    new-instance v1, Le/a/r/a0/a$a;

    const-string v2, "GOOGLE_SIM"

    const/4 v3, 0x3

    .line 4
    invoke-direct {v1, v2, v3, v3}, Le/a/r/a0/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/a/r/a0/a$a;->e:Le/a/r/a0/a$a;

    aput-object v1, v0, v3

    sput-object v0, Le/a/r/a0/a$a;->f:[Le/a/r/a0/a$a;

    new-instance v0, Le/a/r/a0/a$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/r/a0/a$a$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/r/a0/a$a;->g:Le/a/r/a0/a$a$a;

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

    iput p3, p0, Le/a/r/a0/a$a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/a/r/a0/a$a;
    .locals 1

    const-class v0, Le/a/r/a0/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/r/a0/a$a;

    return-object p0
.end method

.method public static values()[Le/a/r/a0/a$a;
    .locals 1

    sget-object v0, Le/a/r/a0/a$a;->f:[Le/a/r/a0/a$a;

    invoke-virtual {v0}, [Le/a/r/a0/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/r/a0/a$a;

    return-object v0
.end method
