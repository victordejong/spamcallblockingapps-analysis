.class public final enum Lcom/facebook/internal/p0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/p0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/p0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/internal/SmartLoginOption;",
        "",
        "value",
        "",
        "(Ljava/lang/String;IJ)V",
        "getValue",
        "()J",
        "None",
        "Enabled",
        "RequireConfirm",
        "Companion",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lcom/facebook/internal/p0$a;

.field public static final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/p0;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum d:Lcom/facebook/internal/p0;

.field public static final enum e:Lcom/facebook/internal/p0;

.field public static final enum f:Lcom/facebook/internal/p0;

.field public static final synthetic g:[Lcom/facebook/internal/p0;


# instance fields
.field public final a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/facebook/internal/p0;

    const-string v1, "None"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/internal/p0;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/internal/p0;->d:Lcom/facebook/internal/p0;

    .line 2
    new-instance v1, Lcom/facebook/internal/p0;

    const-string v3, "Enabled"

    const/4 v4, 0x1

    const-wide/16 v5, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/facebook/internal/p0;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lcom/facebook/internal/p0;->e:Lcom/facebook/internal/p0;

    .line 3
    new-instance v3, Lcom/facebook/internal/p0;

    const-string v5, "RequireConfirm"

    const/4 v6, 0x2

    const-wide/16 v7, 0x2

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/facebook/internal/p0;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/facebook/internal/p0;->f:Lcom/facebook/internal/p0;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/internal/p0;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/facebook/internal/p0;->g:[Lcom/facebook/internal/p0;

    new-instance v0, Lcom/facebook/internal/p0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/p0$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/facebook/internal/p0;->b:Lcom/facebook/internal/p0$a;

    .line 4
    const-class v0, Lcom/facebook/internal/p0;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "allOf(SmartLoginOption::class.java)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/internal/p0;->c:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/facebook/internal/p0;->a:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/p0;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/internal/p0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/facebook/internal/p0;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/p0;
    .locals 2

    sget-object v0, Lcom/facebook/internal/p0;->g:[Lcom/facebook/internal/p0;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/facebook/internal/p0;

    return-object v0
.end method
