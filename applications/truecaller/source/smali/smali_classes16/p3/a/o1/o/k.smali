.class public final enum Lp3/a/o1/o/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp3/a/o1/o/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lp3/a/o1/o/k;

.field public static final enum c:Lp3/a/o1/o/k;

.field public static final enum d:Lp3/a/o1/o/k;

.field public static final enum e:Lp3/a/o1/o/k;

.field public static final synthetic f:[Lp3/a/o1/o/k;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lp3/a/o1/o/k;

    const-string v1, "TLS_1_2"

    const/4 v2, 0x0

    const-string v3, "TLSv1.2"

    invoke-direct {v0, v1, v2, v3}, Lp3/a/o1/o/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lp3/a/o1/o/k;->b:Lp3/a/o1/o/k;

    .line 2
    new-instance v1, Lp3/a/o1/o/k;

    const-string v3, "TLS_1_1"

    const/4 v4, 0x1

    const-string v5, "TLSv1.1"

    invoke-direct {v1, v3, v4, v5}, Lp3/a/o1/o/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lp3/a/o1/o/k;->c:Lp3/a/o1/o/k;

    .line 3
    new-instance v3, Lp3/a/o1/o/k;

    const-string v5, "TLS_1_0"

    const/4 v6, 0x2

    const-string v7, "TLSv1"

    invoke-direct {v3, v5, v6, v7}, Lp3/a/o1/o/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lp3/a/o1/o/k;->d:Lp3/a/o1/o/k;

    .line 4
    new-instance v5, Lp3/a/o1/o/k;

    const-string v7, "SSL_3_0"

    const/4 v8, 0x3

    const-string v9, "SSLv3"

    invoke-direct {v5, v7, v8, v9}, Lp3/a/o1/o/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lp3/a/o1/o/k;->e:Lp3/a/o1/o/k;

    const/4 v7, 0x4

    new-array v7, v7, [Lp3/a/o1/o/k;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lp3/a/o1/o/k;->f:[Lp3/a/o1/o/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
    iput-object p3, p0, Lp3/a/o1/o/k;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lp3/a/o1/o/k;
    .locals 1

    .line 1
    const-class v0, Lp3/a/o1/o/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp3/a/o1/o/k;

    return-object p0
.end method

.method public static values()[Lp3/a/o1/o/k;
    .locals 1

    .line 1
    sget-object v0, Lp3/a/o1/o/k;->f:[Lp3/a/o1/o/k;

    invoke-virtual {v0}, [Lp3/a/o1/o/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp3/a/o1/o/k;

    return-object v0
.end method
