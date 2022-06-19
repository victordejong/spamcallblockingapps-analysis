.class public final enum Lg/g/b/a/i/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/b/a/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/b/a/i/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/b/a/i/a$a;

.field public static final enum CALLER_PROFILE:Lg/g/b/a/i/a$a;

.field public static final enum TRANSLATION:Lg/g/b/a/i/a$a;


# instance fields
.field private rowLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lg/g/b/a/i/a$a;

    new-instance v1, Lg/g/b/a/i/a$a;

    const-string v2, "TRANSLATION"

    const/4 v3, 0x0

    const v4, 0x7fffffff

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lg/g/b/a/i/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/g/b/a/i/a$a;->TRANSLATION:Lg/g/b/a/i/a$a;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/a/i/a$a;

    const-string v2, "CALLER_PROFILE"

    const/4 v3, 0x1

    const/16 v4, 0x1388

    invoke-direct {v1, v2, v3, v4}, Lg/g/b/a/i/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/g/b/a/i/a$a;->CALLER_PROFILE:Lg/g/b/a/i/a$a;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/b/a/i/a$a;->$VALUES:[Lg/g/b/a/i/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/g/b/a/i/a$a;->rowLimit:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/g/b/a/i/a$a;
    .locals 1

    const-class v0, Lg/g/b/a/i/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/b/a/i/a$a;

    return-object p0
.end method

.method public static values()[Lg/g/b/a/i/a$a;
    .locals 1

    sget-object v0, Lg/g/b/a/i/a$a;->$VALUES:[Lg/g/b/a/i/a$a;

    invoke-virtual {v0}, [Lg/g/b/a/i/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/b/a/i/a$a;

    return-object v0
.end method


# virtual methods
.method public final getRowLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lg/g/b/a/i/a$a;->rowLimit:I

    return v0
.end method

.method public final setRowLimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg/g/b/a/i/a$a;->rowLimit:I

    return-void
.end method
