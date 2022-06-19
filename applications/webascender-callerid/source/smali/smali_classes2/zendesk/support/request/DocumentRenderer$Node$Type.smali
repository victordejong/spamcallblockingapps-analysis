.class final enum Lzendesk/support/request/DocumentRenderer$Node$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/DocumentRenderer$Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/support/request/DocumentRenderer$Node$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum A:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum B:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum Br:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum Code:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum Div:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum Document:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum Em:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum H1:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum H2:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum H3:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum H4:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum H5:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum H6:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum Hr:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum I:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum Img:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum Li:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum Ol:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum P:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum Strong:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum Text:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum U:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum Ul:Lzendesk/support/request/DocumentRenderer$Node$Type;

.field public static final enum Unknown:Lzendesk/support/request/DocumentRenderer$Node$Type;


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v0, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v1, "B"

    const/4 v2, 0x0

    const-string v3, "b"

    invoke-direct {v0, v1, v2, v3}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lzendesk/support/request/DocumentRenderer$Node$Type;->B:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 2
    new-instance v1, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v3, "I"

    const/4 v4, 0x1

    const-string v5, "i"

    invoke-direct {v1, v3, v4, v5}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lzendesk/support/request/DocumentRenderer$Node$Type;->I:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 3
    new-instance v3, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v5, "Code"

    const/4 v6, 0x2

    const-string v7, "code"

    invoke-direct {v3, v5, v6, v7}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lzendesk/support/request/DocumentRenderer$Node$Type;->Code:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 4
    new-instance v5, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v7, "H1"

    const/4 v8, 0x3

    const-string v9, "h1"

    invoke-direct {v5, v7, v8, v9}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lzendesk/support/request/DocumentRenderer$Node$Type;->H1:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 5
    new-instance v7, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v9, "H2"

    const/4 v10, 0x4

    const-string v11, "h2"

    invoke-direct {v7, v9, v10, v11}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lzendesk/support/request/DocumentRenderer$Node$Type;->H2:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 6
    new-instance v9, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v11, "H3"

    const/4 v12, 0x5

    const-string v13, "h3"

    invoke-direct {v9, v11, v12, v13}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lzendesk/support/request/DocumentRenderer$Node$Type;->H3:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 7
    new-instance v11, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v13, "H4"

    const/4 v14, 0x6

    const-string v15, "h4"

    invoke-direct {v11, v13, v14, v15}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lzendesk/support/request/DocumentRenderer$Node$Type;->H4:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 8
    new-instance v13, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "H5"

    const/4 v14, 0x7

    const-string v12, "h5"

    invoke-direct {v13, v15, v14, v12}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lzendesk/support/request/DocumentRenderer$Node$Type;->H5:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 9
    new-instance v12, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "H6"

    const/16 v14, 0x8

    const-string v10, "h6"

    invoke-direct {v12, v15, v14, v10}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lzendesk/support/request/DocumentRenderer$Node$Type;->H6:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 10
    new-instance v10, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "Strong"

    const/16 v14, 0x9

    const-string v8, "strong"

    invoke-direct {v10, v15, v14, v8}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lzendesk/support/request/DocumentRenderer$Node$Type;->Strong:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 11
    new-instance v8, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "U"

    const/16 v14, 0xa

    const-string v6, "u"

    invoke-direct {v8, v15, v14, v6}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lzendesk/support/request/DocumentRenderer$Node$Type;->U:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 12
    new-instance v6, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "Em"

    const/16 v14, 0xb

    const-string v4, "em"

    invoke-direct {v6, v15, v14, v4}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lzendesk/support/request/DocumentRenderer$Node$Type;->Em:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 13
    new-instance v4, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "Br"

    const/16 v14, 0xc

    const-string v2, "br"

    invoke-direct {v4, v15, v14, v2}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lzendesk/support/request/DocumentRenderer$Node$Type;->Br:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 14
    new-instance v2, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "Hr"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "hr"

    invoke-direct {v2, v15, v14, v4}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lzendesk/support/request/DocumentRenderer$Node$Type;->Hr:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 15
    new-instance v4, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "Div"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "div"

    invoke-direct {v4, v15, v14, v2}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lzendesk/support/request/DocumentRenderer$Node$Type;->Div:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 16
    new-instance v2, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "P"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "p"

    invoke-direct {v2, v15, v14, v4}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lzendesk/support/request/DocumentRenderer$Node$Type;->P:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 17
    new-instance v4, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "Li"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "li"

    invoke-direct {v4, v15, v14, v2}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lzendesk/support/request/DocumentRenderer$Node$Type;->Li:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 18
    new-instance v2, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "A"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "a"

    invoke-direct {v2, v15, v14, v4}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lzendesk/support/request/DocumentRenderer$Node$Type;->A:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 19
    new-instance v4, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "Ol"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "ol"

    invoke-direct {v4, v15, v14, v2}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lzendesk/support/request/DocumentRenderer$Node$Type;->Ol:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 20
    new-instance v2, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "Ul"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "ul"

    invoke-direct {v2, v15, v14, v4}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lzendesk/support/request/DocumentRenderer$Node$Type;->Ul:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 21
    new-instance v4, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "Img"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "img"

    invoke-direct {v4, v15, v14, v2}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lzendesk/support/request/DocumentRenderer$Node$Type;->Img:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 22
    new-instance v2, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "Text"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "$text"

    invoke-direct {v2, v15, v14, v4}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lzendesk/support/request/DocumentRenderer$Node$Type;->Text:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 23
    new-instance v4, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v15, "Document"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const-string v2, "$document"

    invoke-direct {v4, v15, v14, v2}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lzendesk/support/request/DocumentRenderer$Node$Type;->Document:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 24
    new-instance v2, Lzendesk/support/request/DocumentRenderer$Node$Type;

    const-string v14, "Unknown"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const-string v4, "$unknown"

    invoke-direct {v2, v14, v15, v4}, Lzendesk/support/request/DocumentRenderer$Node$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lzendesk/support/request/DocumentRenderer$Node$Type;->Unknown:Lzendesk/support/request/DocumentRenderer$Node$Type;

    const/16 v4, 0x18

    new-array v4, v4, [Lzendesk/support/request/DocumentRenderer$Node$Type;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v2, v4, v0

    .line 25
    sput-object v4, Lzendesk/support/request/DocumentRenderer$Node$Type;->$VALUES:[Lzendesk/support/request/DocumentRenderer$Node$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
    iput-object p3, p0, Lzendesk/support/request/DocumentRenderer$Node$Type;->tag:Ljava/lang/String;

    return-void
.end method

.method static forTag(Ljava/lang/String;)Lzendesk/support/request/DocumentRenderer$Node$Type;
    .locals 5

    .line 1
    invoke-static {}, Lzendesk/support/request/DocumentRenderer$Node$Type;->values()[Lzendesk/support/request/DocumentRenderer$Node$Type;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lzendesk/support/request/DocumentRenderer$Node$Type;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lzendesk/support/request/DocumentRenderer$Node$Type;->Unknown:Lzendesk/support/request/DocumentRenderer$Node$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/support/request/DocumentRenderer$Node$Type;
    .locals 1

    .line 1
    const-class v0, Lzendesk/support/request/DocumentRenderer$Node$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/support/request/DocumentRenderer$Node$Type;

    return-object p0
.end method

.method public static values()[Lzendesk/support/request/DocumentRenderer$Node$Type;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/request/DocumentRenderer$Node$Type;->$VALUES:[Lzendesk/support/request/DocumentRenderer$Node$Type;

    invoke-virtual {v0}, [Lzendesk/support/request/DocumentRenderer$Node$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/support/request/DocumentRenderer$Node$Type;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer$Node$Type;->tag:Ljava/lang/String;

    return-object v0
.end method
