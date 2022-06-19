.class public final enum Lg/g/a/a/i/j/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/a/a/i/j/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/a/a/i/j/b;

.field public static final enum ABSTAIN:Lg/g/a/a/i/j/b;

.field public static final enum CORRECT:Lg/g/a/a/i/j/b;

.field public static final enum INCORRECT:Lg/g/a/a/i/j/b;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lg/g/a/a/i/j/b;

    const-string v1, "ABSTAIN"

    const/4 v2, 0x0

    const-string v3, "abstain"

    invoke-direct {v0, v1, v2, v3}, Lg/g/a/a/i/j/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lg/g/a/a/i/j/b;->ABSTAIN:Lg/g/a/a/i/j/b;

    .line 2
    new-instance v1, Lg/g/a/a/i/j/b;

    const-string v3, "CORRECT"

    const/4 v4, 0x1

    const-string v5, "correct"

    invoke-direct {v1, v3, v4, v5}, Lg/g/a/a/i/j/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/g/a/a/i/j/b;->CORRECT:Lg/g/a/a/i/j/b;

    .line 3
    new-instance v3, Lg/g/a/a/i/j/b;

    const-string v5, "INCORRECT"

    const/4 v6, 0x2

    const-string v7, "incorrect"

    invoke-direct {v3, v5, v6, v7}, Lg/g/a/a/i/j/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lg/g/a/a/i/j/b;->INCORRECT:Lg/g/a/a/i/j/b;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/g/a/a/i/j/b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lg/g/a/a/i/j/b;->$VALUES:[Lg/g/a/a/i/j/b;

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

    .line 2
    iput-object p3, p0, Lg/g/a/a/i/j/b;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/g/a/a/i/j/b;
    .locals 1

    .line 1
    const-class v0, Lg/g/a/a/i/j/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/a/a/i/j/b;

    return-object p0
.end method

.method public static values()[Lg/g/a/a/i/j/b;
    .locals 1

    .line 1
    sget-object v0, Lg/g/a/a/i/j/b;->$VALUES:[Lg/g/a/a/i/j/b;

    invoke-virtual {v0}, [Lg/g/a/a/i/j/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/a/a/i/j/b;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/j/b;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/j/b;->name:Ljava/lang/String;

    return-object v0
.end method
