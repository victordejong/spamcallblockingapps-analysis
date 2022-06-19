.class public final enum Lf/s/a/a$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/s/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/s/a/a$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lf/s/a/a$d;

.field public static final enum AES256_SIV:Lf/s/a/a$d;


# instance fields
.field private final mDeterministicAeadKeyTemplate:Lg/f/c/a/f0/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lf/s/a/a$d;

    sget-object v1, Lg/f/c/a/b0/c;->a:Lg/f/c/a/f0/u0;

    const-string v2, "AES256_SIV"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lf/s/a/a$d;-><init>(Ljava/lang/String;ILg/f/c/a/f0/u0;)V

    sput-object v0, Lf/s/a/a$d;->AES256_SIV:Lf/s/a/a$d;

    const/4 v1, 0x1

    new-array v1, v1, [Lf/s/a/a$d;

    aput-object v0, v1, v3

    .line 2
    sput-object v1, Lf/s/a/a$d;->$VALUES:[Lf/s/a/a$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILg/f/c/a/f0/u0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/c/a/f0/u0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lf/s/a/a$d;->mDeterministicAeadKeyTemplate:Lg/f/c/a/f0/u0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf/s/a/a$d;
    .locals 1

    .line 1
    const-class v0, Lf/s/a/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/s/a/a$d;

    return-object p0
.end method

.method public static values()[Lf/s/a/a$d;
    .locals 1

    .line 1
    sget-object v0, Lf/s/a/a$d;->$VALUES:[Lf/s/a/a$d;

    invoke-virtual {v0}, [Lf/s/a/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/s/a/a$d;

    return-object v0
.end method


# virtual methods
.method getKeyTemplate()Lg/f/c/a/f0/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/s/a/a$d;->mDeterministicAeadKeyTemplate:Lg/f/c/a/f0/u0;

    return-object v0
.end method
