.class public final enum Ls1/a/a/a/v0/d/b/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/a/a/a/v0/d/b/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ls1/a/a/a/v0/d/b/a$a;

.field public static final enum b:Ls1/a/a/a/v0/d/b/a$a;

.field public static final enum c:Ls1/a/a/a/v0/d/b/a$a;

.field public static final synthetic d:[Ls1/a/a/a/v0/d/b/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ls1/a/a/a/v0/d/b/a$a;

    new-instance v1, Ls1/a/a/a/v0/d/b/a$a;

    const-string v2, "PROPERTY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/d/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/d/b/a$a;->a:Ls1/a/a/a/v0/d/b/a$a;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/d/b/a$a;

    const-string v2, "BACKING_FIELD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/d/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/d/b/a$a;->b:Ls1/a/a/a/v0/d/b/a$a;

    aput-object v1, v0, v3

    new-instance v1, Ls1/a/a/a/v0/d/b/a$a;

    const-string v2, "DELEGATE_FIELD"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/d/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/a/a/a/v0/d/b/a$a;->c:Ls1/a/a/a/v0/d/b/a$a;

    aput-object v1, v0, v3

    sput-object v0, Ls1/a/a/a/v0/d/b/a$a;->d:[Ls1/a/a/a/v0/d/b/a$a;

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

.method public static valueOf(Ljava/lang/String;)Ls1/a/a/a/v0/d/b/a$a;
    .locals 1

    const-class v0, Ls1/a/a/a/v0/d/b/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/d/b/a$a;

    return-object p0
.end method

.method public static values()[Ls1/a/a/a/v0/d/b/a$a;
    .locals 1

    sget-object v0, Ls1/a/a/a/v0/d/b/a$a;->d:[Ls1/a/a/a/v0/d/b/a$a;

    invoke-virtual {v0}, [Ls1/a/a/a/v0/d/b/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/a/a/a/v0/d/b/a$a;

    return-object v0
.end method
