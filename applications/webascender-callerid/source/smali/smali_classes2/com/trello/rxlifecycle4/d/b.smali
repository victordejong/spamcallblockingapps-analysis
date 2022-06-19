.class public final enum Lcom/trello/rxlifecycle4/d/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trello/rxlifecycle4/d/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trello/rxlifecycle4/d/b;

.field public static final enum ATTACH:Lcom/trello/rxlifecycle4/d/b;

.field public static final enum CREATE:Lcom/trello/rxlifecycle4/d/b;

.field public static final enum CREATE_VIEW:Lcom/trello/rxlifecycle4/d/b;

.field public static final enum DESTROY:Lcom/trello/rxlifecycle4/d/b;

.field public static final enum DESTROY_VIEW:Lcom/trello/rxlifecycle4/d/b;

.field public static final enum DETACH:Lcom/trello/rxlifecycle4/d/b;

.field public static final enum PAUSE:Lcom/trello/rxlifecycle4/d/b;

.field public static final enum RESUME:Lcom/trello/rxlifecycle4/d/b;

.field public static final enum START:Lcom/trello/rxlifecycle4/d/b;

.field public static final enum STOP:Lcom/trello/rxlifecycle4/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/trello/rxlifecycle4/d/b;

    const-string v1, "ATTACH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle4/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle4/d/b;->ATTACH:Lcom/trello/rxlifecycle4/d/b;

    .line 2
    new-instance v1, Lcom/trello/rxlifecycle4/d/b;

    const-string v3, "CREATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/trello/rxlifecycle4/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/trello/rxlifecycle4/d/b;->CREATE:Lcom/trello/rxlifecycle4/d/b;

    .line 3
    new-instance v3, Lcom/trello/rxlifecycle4/d/b;

    const-string v5, "CREATE_VIEW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/trello/rxlifecycle4/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/trello/rxlifecycle4/d/b;->CREATE_VIEW:Lcom/trello/rxlifecycle4/d/b;

    .line 4
    new-instance v5, Lcom/trello/rxlifecycle4/d/b;

    const-string v7, "START"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/trello/rxlifecycle4/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/trello/rxlifecycle4/d/b;->START:Lcom/trello/rxlifecycle4/d/b;

    .line 5
    new-instance v7, Lcom/trello/rxlifecycle4/d/b;

    const-string v9, "RESUME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/trello/rxlifecycle4/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/trello/rxlifecycle4/d/b;->RESUME:Lcom/trello/rxlifecycle4/d/b;

    .line 6
    new-instance v9, Lcom/trello/rxlifecycle4/d/b;

    const-string v11, "PAUSE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/trello/rxlifecycle4/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/trello/rxlifecycle4/d/b;->PAUSE:Lcom/trello/rxlifecycle4/d/b;

    .line 7
    new-instance v11, Lcom/trello/rxlifecycle4/d/b;

    const-string v13, "STOP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/trello/rxlifecycle4/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/trello/rxlifecycle4/d/b;->STOP:Lcom/trello/rxlifecycle4/d/b;

    .line 8
    new-instance v13, Lcom/trello/rxlifecycle4/d/b;

    const-string v15, "DESTROY_VIEW"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/trello/rxlifecycle4/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/trello/rxlifecycle4/d/b;->DESTROY_VIEW:Lcom/trello/rxlifecycle4/d/b;

    .line 9
    new-instance v15, Lcom/trello/rxlifecycle4/d/b;

    const-string v14, "DESTROY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/trello/rxlifecycle4/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/trello/rxlifecycle4/d/b;->DESTROY:Lcom/trello/rxlifecycle4/d/b;

    .line 10
    new-instance v14, Lcom/trello/rxlifecycle4/d/b;

    const-string v12, "DETACH"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/trello/rxlifecycle4/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/trello/rxlifecycle4/d/b;->DETACH:Lcom/trello/rxlifecycle4/d/b;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/trello/rxlifecycle4/d/b;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Lcom/trello/rxlifecycle4/d/b;->$VALUES:[Lcom/trello/rxlifecycle4/d/b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/trello/rxlifecycle4/d/b;
    .locals 1

    .line 1
    const-class v0, Lcom/trello/rxlifecycle4/d/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/trello/rxlifecycle4/d/b;

    return-object p0
.end method

.method public static values()[Lcom/trello/rxlifecycle4/d/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/trello/rxlifecycle4/d/b;->$VALUES:[Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {v0}, [Lcom/trello/rxlifecycle4/d/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trello/rxlifecycle4/d/b;

    return-object v0
.end method
