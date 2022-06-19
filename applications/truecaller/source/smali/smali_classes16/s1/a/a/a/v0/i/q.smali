.class public abstract enum Ls1/a/a/a/v0/i/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/i/q$b;,
        Ls1/a/a/a/v0/i/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/i/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ls1/a/a/a/v0/i/q;

.field public static final enum b:Ls1/a/a/a/v0/i/q;

.field public static final synthetic c:[Ls1/a/a/a/v0/i/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ls1/a/a/a/v0/i/q;

    new-instance v1, Ls1/a/a/a/v0/i/q$b;

    const-string v2, "PLAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/i/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/i/q;->a:Ls1/a/a/a/v0/i/q;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/i/q$a;

    const-string v2, "HTML"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/i/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/i/q;->b:Ls1/a/a/a/v0/i/q;

    aput-object v1, v0, v3

    sput-object v0, Ls1/a/a/a/v0/i/q;->c:[Ls1/a/a/a/v0/i/q;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILs1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/i/q;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/i/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/i/q;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/i/q;
    .locals 1

    sget-object v0, Ls1/a/a/a/v0/i/q;->c:[Ls1/a/a/a/v0/i/q;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/i/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/i/q;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method
