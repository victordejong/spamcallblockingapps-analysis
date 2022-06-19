.class public final enum Lg/g/a/a/c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lg/g/a/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/a/a/c;",
        ">;",
        "Lg/g/a/a/b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/a/a/c;

.field public static final enum ADD_ALLOW_LIST_ITEM:Lg/g/a/a/c;

.field public static final enum ADD_DENY_LIST_ITEM:Lg/g/a/a/c;

.field public static final enum GET_ALLOW_LIST:Lg/g/a/a/c;

.field public static final enum GET_DENY_LIST:Lg/g/a/a/c;

.field public static final enum MATERIALIZE_CALL_LOGS:Lg/g/a/a/c;

.field public static final enum READ_CONTACTS:Lg/g/a/a/c;

.field public static final enum REMOVE_ALLOW_LIST_ITEM:Lg/g/a/a/c;

.field public static final enum REMOVE_DENY_LIST_ITEM:Lg/g/a/a/c;

.field public static final enum UNDEFINED:Lg/g/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lg/g/a/a/c;

    const-string v1, "READ_CONTACTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/g/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/g/a/a/c;->READ_CONTACTS:Lg/g/a/a/c;

    .line 2
    new-instance v1, Lg/g/a/a/c;

    const-string v3, "MATERIALIZE_CALL_LOGS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/g/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/c;->MATERIALIZE_CALL_LOGS:Lg/g/a/a/c;

    .line 3
    new-instance v3, Lg/g/a/a/c;

    const-string v5, "ADD_DENY_LIST_ITEM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg/g/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/g/a/a/c;->ADD_DENY_LIST_ITEM:Lg/g/a/a/c;

    .line 4
    new-instance v5, Lg/g/a/a/c;

    const-string v7, "ADD_ALLOW_LIST_ITEM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lg/g/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/g/a/a/c;->ADD_ALLOW_LIST_ITEM:Lg/g/a/a/c;

    .line 5
    new-instance v7, Lg/g/a/a/c;

    const-string v9, "REMOVE_DENY_LIST_ITEM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lg/g/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/g/a/a/c;->REMOVE_DENY_LIST_ITEM:Lg/g/a/a/c;

    .line 6
    new-instance v9, Lg/g/a/a/c;

    const-string v11, "REMOVE_ALLOW_LIST_ITEM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lg/g/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/g/a/a/c;->REMOVE_ALLOW_LIST_ITEM:Lg/g/a/a/c;

    .line 7
    new-instance v11, Lg/g/a/a/c;

    const-string v13, "GET_DENY_LIST"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lg/g/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/g/a/a/c;->GET_DENY_LIST:Lg/g/a/a/c;

    .line 8
    new-instance v13, Lg/g/a/a/c;

    const-string v15, "GET_ALLOW_LIST"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lg/g/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg/g/a/a/c;->GET_ALLOW_LIST:Lg/g/a/a/c;

    .line 9
    new-instance v15, Lg/g/a/a/c;

    const-string v14, "UNDEFINED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lg/g/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lg/g/a/a/c;->UNDEFINED:Lg/g/a/a/c;

    const/16 v14, 0x9

    new-array v14, v14, [Lg/g/a/a/c;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 10
    sput-object v14, Lg/g/a/a/c;->$VALUES:[Lg/g/a/a/c;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/a/a/c;
    .locals 1

    .line 1
    const-class v0, Lg/g/a/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/a/a/c;

    return-object p0
.end method

.method public static values()[Lg/g/a/a/c;
    .locals 1

    .line 1
    sget-object v0, Lg/g/a/a/c;->$VALUES:[Lg/g/a/a/c;

    invoke-virtual {v0}, [Lg/g/a/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/a/a/c;

    return-object v0
.end method
