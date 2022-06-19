.class public final enum Lcom/truecaller/messaging/conversation/ConversationAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/messaging/conversation/ConversationAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/messaging/conversation/ConversationAction;

.field public static final enum TOP_BLOCK:Lcom/truecaller/messaging/conversation/ConversationAction;

.field public static final enum TOP_SAVE:Lcom/truecaller/messaging/conversation/ConversationAction;

.field public static final enum TOP_UNBLOCK:Lcom/truecaller/messaging/conversation/ConversationAction;


# instance fields
.field public dynamicTitle:Ljava/lang/String;

.field public final icon:I

.field public final menuId:I

.field public final textViewId:I

.field public final tint:I

.field public final title:I


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v8, Lcom/truecaller/messaging/conversation/ConversationAction;

    const-string v1, "TOP_SAVE"

    const/4 v2, 0x0

    const v3, 0x7f08060b

    const v4, 0x7f120231

    const v5, 0x7f040729

    const v6, 0x7f0a00dd

    const v7, 0x7f0a00de

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/truecaller/messaging/conversation/ConversationAction;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v8, Lcom/truecaller/messaging/conversation/ConversationAction;->TOP_SAVE:Lcom/truecaller/messaging/conversation/ConversationAction;

    .line 2
    new-instance v0, Lcom/truecaller/messaging/conversation/ConversationAction;

    const-string v10, "TOP_BLOCK"

    const/4 v11, 0x1

    const v12, 0x7f0803a1

    const v13, 0x7f1201b8

    const v14, 0x7f040729

    const v15, 0x7f0a0094

    const v16, 0x7f0a0096

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/truecaller/messaging/conversation/ConversationAction;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/truecaller/messaging/conversation/ConversationAction;->TOP_BLOCK:Lcom/truecaller/messaging/conversation/ConversationAction;

    .line 3
    new-instance v1, Lcom/truecaller/messaging/conversation/ConversationAction;

    const-string v18, "TOP_UNBLOCK"

    const/16 v19, 0x2

    const v20, 0x7f0803a1

    const v21, 0x7f1201bf

    const v22, 0x7f040722

    const v23, 0x7f0a00ec

    const v24, 0x7f0a00ed

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lcom/truecaller/messaging/conversation/ConversationAction;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/ConversationAction;->TOP_UNBLOCK:Lcom/truecaller/messaging/conversation/ConversationAction;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/truecaller/messaging/conversation/ConversationAction;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 4
    sput-object v2, Lcom/truecaller/messaging/conversation/ConversationAction;->$VALUES:[Lcom/truecaller/messaging/conversation/ConversationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p6, p0, Lcom/truecaller/messaging/conversation/ConversationAction;->menuId:I

    .line 3
    iput p3, p0, Lcom/truecaller/messaging/conversation/ConversationAction;->icon:I

    .line 4
    iput p4, p0, Lcom/truecaller/messaging/conversation/ConversationAction;->title:I

    .line 5
    iput p5, p0, Lcom/truecaller/messaging/conversation/ConversationAction;->tint:I

    .line 6
    iput p7, p0, Lcom/truecaller/messaging/conversation/ConversationAction;->textViewId:I

    return-void
.end method

.method public static findById(I)Lcom/truecaller/messaging/conversation/ConversationAction;
    .locals 4

    .line 1
    invoke-static {}, Lcom/truecaller/messaging/conversation/ConversationAction;->values()[Lcom/truecaller/messaging/conversation/ConversationAction;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 2
    iget v3, v2, Lcom/truecaller/messaging/conversation/ConversationAction;->menuId:I

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAllMenuItemIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/truecaller/messaging/conversation/ConversationAction;->values()[Lcom/truecaller/messaging/conversation/ConversationAction;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 3
    iget v3, v3, Lcom/truecaller/messaging/conversation/ConversationAction;->menuId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/messaging/conversation/ConversationAction;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/messaging/conversation/ConversationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/messaging/conversation/ConversationAction;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/messaging/conversation/ConversationAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/messaging/conversation/ConversationAction;->$VALUES:[Lcom/truecaller/messaging/conversation/ConversationAction;

    invoke-virtual {v0}, [Lcom/truecaller/messaging/conversation/ConversationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/messaging/conversation/ConversationAction;

    return-object v0
.end method
