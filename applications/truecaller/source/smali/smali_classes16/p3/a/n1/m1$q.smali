.class public final enum Lp3/a/n1/m1$q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp3/a/n1/m1$q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lp3/a/n1/m1$q;

.field public static final enum b:Lp3/a/n1/m1$q;

.field public static final enum c:Lp3/a/n1/m1$q;

.field public static final synthetic d:[Lp3/a/n1/m1$q;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lp3/a/n1/m1$q;

    const-string v1, "NO_RESOLUTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp3/a/n1/m1$q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp3/a/n1/m1$q;->a:Lp3/a/n1/m1$q;

    .line 2
    new-instance v1, Lp3/a/n1/m1$q;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lp3/a/n1/m1$q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lp3/a/n1/m1$q;->b:Lp3/a/n1/m1$q;

    .line 3
    new-instance v3, Lp3/a/n1/m1$q;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lp3/a/n1/m1$q;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lp3/a/n1/m1$q;->c:Lp3/a/n1/m1$q;

    const/4 v5, 0x3

    new-array v5, v5, [Lp3/a/n1/m1$q;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lp3/a/n1/m1$q;->d:[Lp3/a/n1/m1$q;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lp3/a/n1/m1$q;
    .locals 1

    .line 1
    const-class v0, Lp3/a/n1/m1$q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp3/a/n1/m1$q;

    return-object p0
.end method

.method public static values()[Lp3/a/n1/m1$q;
    .locals 1

    .line 1
    sget-object v0, Lp3/a/n1/m1$q;->d:[Lp3/a/n1/m1$q;

    invoke-virtual {v0}, [Lp3/a/n1/m1$q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp3/a/n1/m1$q;

    return-object v0
.end method
