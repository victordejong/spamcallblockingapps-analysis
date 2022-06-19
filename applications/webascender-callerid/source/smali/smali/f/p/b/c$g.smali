.class public final enum Lf/p/b/c$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/p/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/p/b/c$g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lf/p/b/c$g;

.field public static final enum FINISHED:Lf/p/b/c$g;

.field public static final enum PENDING:Lf/p/b/c$g;

.field public static final enum RUNNING:Lf/p/b/c$g;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lf/p/b/c$g;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf/p/b/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/p/b/c$g;->PENDING:Lf/p/b/c$g;

    .line 2
    new-instance v1, Lf/p/b/c$g;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lf/p/b/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lf/p/b/c$g;->RUNNING:Lf/p/b/c$g;

    .line 3
    new-instance v3, Lf/p/b/c$g;

    const-string v5, "FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lf/p/b/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lf/p/b/c$g;->FINISHED:Lf/p/b/c$g;

    const/4 v5, 0x3

    new-array v5, v5, [Lf/p/b/c$g;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lf/p/b/c$g;->$VALUES:[Lf/p/b/c$g;

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

.method public static valueOf(Ljava/lang/String;)Lf/p/b/c$g;
    .locals 1

    .line 1
    const-class v0, Lf/p/b/c$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/p/b/c$g;

    return-object p0
.end method

.method public static values()[Lf/p/b/c$g;
    .locals 1

    .line 1
    sget-object v0, Lf/p/b/c$g;->$VALUES:[Lf/p/b/c$g;

    invoke-virtual {v0}, [Lf/p/b/c$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/p/b/c$g;

    return-object v0
.end method
