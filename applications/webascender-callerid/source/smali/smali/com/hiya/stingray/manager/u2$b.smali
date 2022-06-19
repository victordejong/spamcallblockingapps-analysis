.class public final enum Lcom/hiya/stingray/manager/u2$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/manager/u2$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/manager/u2$b;

.field public static final enum APP_LAUNCH:Lcom/hiya/stingray/manager/u2$b;

.field public static final enum BLOCK:Lcom/hiya/stingray/manager/u2$b;

.field public static final enum DEBUG:Lcom/hiya/stingray/manager/u2$b;

.field public static final enum HELP:Lcom/hiya/stingray/manager/u2$b;

.field public static final enum SAVE_TO_CONTACTS:Lcom/hiya/stingray/manager/u2$b;

.field public static final enum SPAM_REPORT:Lcom/hiya/stingray/manager/u2$b;


# instance fields
.field private final handler:Lkotlin/w/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/q<",
            "Lcom/hiya/stingray/q/d/a;",
            "Lcom/hiya/stingray/manager/x3;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final paramIndex:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/hiya/stingray/manager/u2$b;

    new-instance v1, Lcom/hiya/stingray/manager/u2$b;

    .line 1
    sget-object v2, Lcom/hiya/stingray/manager/u2$b$a;->f:Lcom/hiya/stingray/manager/u2$b$a;

    const-string v3, "DEBUG"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hiya/stingray/manager/u2$b;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/w/b/q;)V

    sput-object v1, Lcom/hiya/stingray/manager/u2$b;->DEBUG:Lcom/hiya/stingray/manager/u2$b;

    aput-object v1, v0, v4

    new-instance v1, Lcom/hiya/stingray/manager/u2$b;

    const-string v7, "HELP"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v6, v1

    .line 2
    invoke-direct/range {v6 .. v12}, Lcom/hiya/stingray/manager/u2$b;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/w/b/q;ILkotlin/w/c/g;)V

    sput-object v1, Lcom/hiya/stingray/manager/u2$b;->HELP:Lcom/hiya/stingray/manager/u2$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/hiya/stingray/manager/u2$b;

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/hiya/stingray/manager/u2$b$b;->f:Lcom/hiya/stingray/manager/u2$b$b;

    const-string v5, "APP_LAUNCH"

    const/4 v6, 0x2

    invoke-direct {v1, v5, v6, v3, v4}, Lcom/hiya/stingray/manager/u2$b;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/w/b/q;)V

    sput-object v1, Lcom/hiya/stingray/manager/u2$b;->APP_LAUNCH:Lcom/hiya/stingray/manager/u2$b;

    aput-object v1, v0, v6

    new-instance v1, Lcom/hiya/stingray/manager/u2$b;

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/hiya/stingray/manager/u2$b$c;->f:Lcom/hiya/stingray/manager/u2$b$c;

    const-string v4, "SPAM_REPORT"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/hiya/stingray/manager/u2$b;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/w/b/q;)V

    sput-object v1, Lcom/hiya/stingray/manager/u2$b;->SPAM_REPORT:Lcom/hiya/stingray/manager/u2$b;

    aput-object v1, v0, v5

    new-instance v1, Lcom/hiya/stingray/manager/u2$b;

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/hiya/stingray/manager/u2$b$d;->f:Lcom/hiya/stingray/manager/u2$b$d;

    const-string v4, "BLOCK"

    const/4 v6, 0x4

    invoke-direct {v1, v4, v6, v2, v3}, Lcom/hiya/stingray/manager/u2$b;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/w/b/q;)V

    sput-object v1, Lcom/hiya/stingray/manager/u2$b;->BLOCK:Lcom/hiya/stingray/manager/u2$b;

    aput-object v1, v0, v6

    new-instance v1, Lcom/hiya/stingray/manager/u2$b;

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/hiya/stingray/manager/u2$b$e;->f:Lcom/hiya/stingray/manager/u2$b$e;

    const-string v4, "SAVE_TO_CONTACTS"

    const/4 v5, 0x5

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/hiya/stingray/manager/u2$b;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/w/b/q;)V

    sput-object v1, Lcom/hiya/stingray/manager/u2$b;->SAVE_TO_CONTACTS:Lcom/hiya/stingray/manager/u2$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/hiya/stingray/manager/u2$b;->$VALUES:[Lcom/hiya/stingray/manager/u2$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/w/b/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lkotlin/w/b/q<",
            "-",
            "Lcom/hiya/stingray/q/d/a;",
            "-",
            "Lcom/hiya/stingray/manager/x3;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/hiya/stingray/manager/u2$b;->paramIndex:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/hiya/stingray/manager/u2$b;->handler:Lkotlin/w/b/q;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/w/b/q;ILkotlin/w/c/g;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/manager/u2$b;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/w/b/q;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/manager/u2$b;
    .locals 1

    const-class v0, Lcom/hiya/stingray/manager/u2$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/manager/u2$b;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/manager/u2$b;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/manager/u2$b;->$VALUES:[Lcom/hiya/stingray/manager/u2$b;

    invoke-virtual {v0}, [Lcom/hiya/stingray/manager/u2$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/manager/u2$b;

    return-object v0
.end method


# virtual methods
.method public final getHandler()Lkotlin/w/b/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/w/b/q<",
            "Lcom/hiya/stingray/q/d/a;",
            "Lcom/hiya/stingray/manager/x3;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2$b;->handler:Lkotlin/w/b/q;

    return-object v0
.end method

.method public final getParamIndex()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u2$b;->paramIndex:Ljava/lang/Integer;

    return-object v0
.end method
