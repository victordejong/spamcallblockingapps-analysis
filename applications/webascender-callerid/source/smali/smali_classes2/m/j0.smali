.class public final enum Lm/j0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/j0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm/j0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lm/j0;

.field public static final Companion:Lm/j0$a;

.field public static final enum SSL_3_0:Lm/j0;

.field public static final enum TLS_1_0:Lm/j0;

.field public static final enum TLS_1_1:Lm/j0;

.field public static final enum TLS_1_2:Lm/j0;

.field public static final enum TLS_1_3:Lm/j0;


# instance fields
.field private final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lm/j0;

    new-instance v1, Lm/j0;

    const-string v2, "TLS_1_3"

    const/4 v3, 0x0

    const-string v4, "TLSv1.3"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lm/j0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lm/j0;->TLS_1_3:Lm/j0;

    aput-object v1, v0, v3

    new-instance v1, Lm/j0;

    const-string v2, "TLS_1_2"

    const/4 v3, 0x1

    const-string v4, "TLSv1.2"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lm/j0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lm/j0;->TLS_1_2:Lm/j0;

    aput-object v1, v0, v3

    new-instance v1, Lm/j0;

    const-string v2, "TLS_1_1"

    const/4 v3, 0x2

    const-string v4, "TLSv1.1"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lm/j0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lm/j0;->TLS_1_1:Lm/j0;

    aput-object v1, v0, v3

    new-instance v1, Lm/j0;

    const-string v2, "TLS_1_0"

    const/4 v3, 0x3

    const-string v4, "TLSv1"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lm/j0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lm/j0;->TLS_1_0:Lm/j0;

    aput-object v1, v0, v3

    new-instance v1, Lm/j0;

    const-string v2, "SSL_3_0"

    const/4 v3, 0x4

    const-string v4, "SSLv3"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lm/j0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lm/j0;->SSL_3_0:Lm/j0;

    aput-object v1, v0, v3

    sput-object v0, Lm/j0;->$VALUES:[Lm/j0;

    new-instance v0, Lm/j0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm/j0$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lm/j0;->Companion:Lm/j0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lm/j0;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static final forJavaName(Ljava/lang/String;)Lm/j0;
    .locals 1

    sget-object v0, Lm/j0;->Companion:Lm/j0$a;

    invoke-virtual {v0, p0}, Lm/j0$a;->a(Ljava/lang/String;)Lm/j0;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lm/j0;
    .locals 1

    const-class v0, Lm/j0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm/j0;

    return-object p0
.end method

.method public static values()[Lm/j0;
    .locals 1

    sget-object v0, Lm/j0;->$VALUES:[Lm/j0;

    invoke-virtual {v0}, [Lm/j0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm/j0;

    return-object v0
.end method


# virtual methods
.method public final -deprecated_javaName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/j0;->javaName:Ljava/lang/String;

    return-object v0
.end method

.method public final javaName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/j0;->javaName:Ljava/lang/String;

    return-object v0
.end method
