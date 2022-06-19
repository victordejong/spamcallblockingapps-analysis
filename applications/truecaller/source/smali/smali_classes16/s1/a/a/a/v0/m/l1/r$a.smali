.class public abstract enum Ls1/a/a/a/v0/m/l1/r$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/m/l1/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/m/l1/r$a$c;,
        Ls1/a/a/a/v0/m/l1/r$a$a;,
        Ls1/a/a/a/v0/m/l1/r$a$d;,
        Ls1/a/a/a/v0/m/l1/r$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/m/l1/r$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ls1/a/a/a/v0/m/l1/r$a;

.field public static final enum b:Ls1/a/a/a/v0/m/l1/r$a;

.field public static final enum c:Ls1/a/a/a/v0/m/l1/r$a;

.field public static final enum d:Ls1/a/a/a/v0/m/l1/r$a;

.field public static final synthetic e:[Ls1/a/a/a/v0/m/l1/r$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ls1/a/a/a/v0/m/l1/r$a;

    new-instance v1, Ls1/a/a/a/v0/m/l1/r$a$c;

    const-string v2, "START"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/m/l1/r$a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/m/l1/r$a;->a:Ls1/a/a/a/v0/m/l1/r$a;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/m/l1/r$a$a;

    const-string v2, "ACCEPT_NULL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/m/l1/r$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/m/l1/r$a;->b:Ls1/a/a/a/v0/m/l1/r$a;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/m/l1/r$a$d;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/m/l1/r$a$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/m/l1/r$a;->c:Ls1/a/a/a/v0/m/l1/r$a;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/m/l1/r$a$b;

    const-string v2, "NOT_NULL"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/m/l1/r$a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/m/l1/r$a;->d:Ls1/a/a/a/v0/m/l1/r$a;

    aput-object v1, v0, v3

    sput-object v0, Ls1/a/a/a/v0/m/l1/r$a;->e:[Ls1/a/a/a/v0/m/l1/r$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILs1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/m/l1/r$a;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/m/l1/r$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/m/l1/r$a;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/m/l1/r$a;
    .locals 1

    sget-object v0, Ls1/a/a/a/v0/m/l1/r$a;->e:[Ls1/a/a/a/v0/m/l1/r$a;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/m/l1/r$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/m/l1/r$a;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ls1/a/a/a/v0/m/i1;)Ls1/a/a/a/v0/m/l1/r$a;
.end method

.method public final c(Ls1/a/a/a/v0/m/i1;)Ls1/a/a/a/v0/m/l1/r$a;
    .locals 7

    const-string v0, "$this$resultNullability"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ls1/a/a/a/v0/m/l1/r$a;->b:Ls1/a/a/a/v0/m/l1/r$a;

    goto :goto_0

    :cond_0
    const-string v0, "type"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ls1/a/a/a/v0/m/l1/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/v0/m/l1/b;-><init>(ZZZLs1/a/a/a/v0/m/l1/e;I)V

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->C2(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    sget-object v1, Ls1/a/a/a/v0/m/h$a$b;->a:Ls1/a/a/a/v0/m/h$a$b;

    invoke-static {v0, p1, v1}, Ls1/a/a/a/v0/m/c;->a(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/h$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Ls1/a/a/a/v0/m/l1/r$a;->d:Ls1/a/a/a/v0/m/l1/r$a;

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Ls1/a/a/a/v0/m/l1/r$a;->c:Ls1/a/a/a/v0/m/l1/r$a;

    :goto_0
    return-object p1
.end method
