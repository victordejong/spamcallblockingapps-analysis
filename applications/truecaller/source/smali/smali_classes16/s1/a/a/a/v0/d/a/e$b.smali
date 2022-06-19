.class public enum Ls1/a/a/a/v0/d/a/e$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/d/a/e$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/d/a/e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ls1/a/a/a/v0/d/a/e$b;

.field public static final enum c:Ls1/a/a/a/v0/d/a/e$b;

.field public static final enum d:Ls1/a/a/a/v0/d/a/e$b;

.field public static final enum e:Ls1/a/a/a/v0/d/a/e$b;

.field public static final synthetic f:[Ls1/a/a/a/v0/d/a/e$b;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ls1/a/a/a/v0/d/a/e$b;

    new-instance v1, Ls1/a/a/a/v0/d/a/e$b;

    const-string v2, "NULL"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1
    invoke-direct {v1, v2, v3, v4}, Ls1/a/a/a/v0/d/a/e$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v1, Ls1/a/a/a/v0/d/a/e$b;->b:Ls1/a/a/a/v0/d/a/e$b;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/d/a/e$b;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INDEX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Ls1/a/a/a/v0/d/a/e$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v1, Ls1/a/a/a/v0/d/a/e$b;->c:Ls1/a/a/a/v0/d/a/e$b;

    aput-object v1, v0, v4

    new-instance v1, Ls1/a/a/a/v0/d/a/e$b;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "FALSE"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Ls1/a/a/a/v0/d/a/e$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v1, Ls1/a/a/a/v0/d/a/e$b;->d:Ls1/a/a/a/v0/d/a/e$b;

    aput-object v1, v0, v4

    new-instance v1, Ls1/a/a/a/v0/d/a/e$b$a;

    const-string v2, "MAP_GET_OR_DEFAULT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/d/a/e$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/d/a/e$b;->e:Ls1/a/a/a/v0/d/a/e$b;

    aput-object v1, v0, v3

    sput-object v0, Ls1/a/a/a/v0/d/a/e$b;->f:[Ls1/a/a/a/v0/d/a/e$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/e$b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Ls1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/d/a/e$b;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/d/a/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/d/a/e$b;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/d/a/e$b;
    .locals 1

    sget-object v0, Ls1/a/a/a/v0/d/a/e$b;->f:[Ls1/a/a/a/v0/d/a/e$b;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/d/a/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/d/a/e$b;

    return-object v0
.end method
