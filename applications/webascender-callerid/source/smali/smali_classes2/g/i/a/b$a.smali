.class final enum Lg/i/a/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/i/a/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/i/a/b$a;

.field public static final enum None:Lg/i/a/b$a;

.field public static final enum Picasso252:Lg/i/a/b$a;

.field public static final enum Picasso271828:Lg/i/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lg/i/a/b$a;

    const-string v1, "Picasso252"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/i/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/i/a/b$a;->Picasso252:Lg/i/a/b$a;

    new-instance v1, Lg/i/a/b$a;

    const-string v3, "Picasso271828"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/i/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/i/a/b$a;->Picasso271828:Lg/i/a/b$a;

    new-instance v3, Lg/i/a/b$a;

    const-string v5, "None"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg/i/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/i/a/b$a;->None:Lg/i/a/b$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/i/a/b$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lg/i/a/b$a;->$VALUES:[Lg/i/a/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lg/i/a/b$a;
    .locals 1

    .line 1
    const-class v0, Lg/i/a/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/i/a/b$a;

    return-object p0
.end method

.method public static values()[Lg/i/a/b$a;
    .locals 1

    .line 1
    sget-object v0, Lg/i/a/b$a;->$VALUES:[Lg/i/a/b$a;

    invoke-virtual {v0}, [Lg/i/a/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/i/a/b$a;

    return-object v0
.end method
