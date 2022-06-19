.class public final enum Lg/f/c/a/i0/y$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/i0/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/f/c/a/i0/y$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/f/c/a/i0/y$c;

.field public static final enum DER:Lg/f/c/a/i0/y$c;

.field public static final enum IEEE_P1363:Lg/f/c/a/i0/y$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg/f/c/a/i0/y$c;

    const-string v1, "IEEE_P1363"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/f/c/a/i0/y$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/f/c/a/i0/y$c;->IEEE_P1363:Lg/f/c/a/i0/y$c;

    .line 2
    new-instance v1, Lg/f/c/a/i0/y$c;

    const-string v3, "DER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/f/c/a/i0/y$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/f/c/a/i0/y$c;->DER:Lg/f/c/a/i0/y$c;

    const/4 v3, 0x2

    new-array v3, v3, [Lg/f/c/a/i0/y$c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lg/f/c/a/i0/y$c;->$VALUES:[Lg/f/c/a/i0/y$c;

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

.method public static valueOf(Ljava/lang/String;)Lg/f/c/a/i0/y$c;
    .locals 1

    .line 1
    const-class v0, Lg/f/c/a/i0/y$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/f/c/a/i0/y$c;

    return-object p0
.end method

.method public static values()[Lg/f/c/a/i0/y$c;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/i0/y$c;->$VALUES:[Lg/f/c/a/i0/y$c;

    invoke-virtual {v0}, [Lg/f/c/a/i0/y$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/f/c/a/i0/y$c;

    return-object v0
.end method
