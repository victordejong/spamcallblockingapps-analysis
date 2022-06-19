.class public final enum Lp3/a/o1/o/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp3/a/o1/o/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lp3/a/o1/o/j;

.field public static final enum c:Lp3/a/o1/o/j;

.field public static final enum d:Lp3/a/o1/o/j;

.field public static final enum e:Lp3/a/o1/o/j;

.field public static final synthetic f:[Lp3/a/o1/o/j;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lp3/a/o1/o/j;

    const-string v1, "HTTP_1_0"

    const/4 v2, 0x0

    const-string v3, "http/1.0"

    invoke-direct {v0, v1, v2, v3}, Lp3/a/o1/o/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lp3/a/o1/o/j;->b:Lp3/a/o1/o/j;

    .line 2
    new-instance v1, Lp3/a/o1/o/j;

    const-string v3, "HTTP_1_1"

    const/4 v4, 0x1

    const-string v5, "http/1.1"

    invoke-direct {v1, v3, v4, v5}, Lp3/a/o1/o/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lp3/a/o1/o/j;->c:Lp3/a/o1/o/j;

    .line 3
    new-instance v3, Lp3/a/o1/o/j;

    const-string v5, "SPDY_3"

    const/4 v6, 0x2

    const-string v7, "spdy/3.1"

    invoke-direct {v3, v5, v6, v7}, Lp3/a/o1/o/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lp3/a/o1/o/j;->d:Lp3/a/o1/o/j;

    .line 4
    new-instance v5, Lp3/a/o1/o/j;

    const-string v7, "HTTP_2"

    const/4 v8, 0x3

    const-string v9, "h2"

    invoke-direct {v5, v7, v8, v9}, Lp3/a/o1/o/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lp3/a/o1/o/j;->e:Lp3/a/o1/o/j;

    const/4 v7, 0x4

    new-array v7, v7, [Lp3/a/o1/o/j;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lp3/a/o1/o/j;->f:[Lp3/a/o1/o/j;

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
    iput-object p3, p0, Lp3/a/o1/o/j;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lp3/a/o1/o/j;
    .locals 1

    .line 1
    const-class v0, Lp3/a/o1/o/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp3/a/o1/o/j;

    return-object p0
.end method

.method public static values()[Lp3/a/o1/o/j;
    .locals 1

    .line 1
    sget-object v0, Lp3/a/o1/o/j;->f:[Lp3/a/o1/o/j;

    invoke-virtual {v0}, [Lp3/a/o1/o/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp3/a/o1/o/j;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o1/o/j;->a:Ljava/lang/String;

    return-object v0
.end method
