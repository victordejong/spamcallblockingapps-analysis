.class public final enum Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0012\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;",
        "",
        "",
        "id",
        "I",
        "getId",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "SHARE",
        "SAVE_CONTACT",
        "COPY_CONTACT",
        "COPY_NAME",
        "COPY_PHONE",
        "DELETE_CONTACT",
        "DELETE_IDENTIFIED_CONTACT",
        "SEARCH_WEB",
        "FAVORITE",
        "UNFAVORITE",
        "EDIT",
        "details-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

.field public static final enum COPY_CONTACT:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

.field public static final enum COPY_NAME:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

.field public static final enum COPY_PHONE:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

.field public static final enum DELETE_CONTACT:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

.field public static final enum DELETE_IDENTIFIED_CONTACT:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

.field public static final enum EDIT:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

.field public static final enum FAVORITE:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

.field public static final enum SAVE_CONTACT:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

.field public static final enum SEARCH_WEB:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

.field public static final enum SHARE:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

.field public static final enum UNFAVORITE:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;


# instance fields
.field private final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    new-instance v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    .line 1
    sget v2, Lcom/truecaller/details_view/R$id;->action_share:I

    const-string v3, "SHARE"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->SHARE:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    .line 2
    sget v2, Lcom/truecaller/details_view/R$id;->action_save:I

    const-string v3, "SAVE_CONTACT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->SAVE_CONTACT:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    .line 3
    sget v2, Lcom/truecaller/details_view/R$id;->action_copy_contact:I

    const-string v3, "COPY_CONTACT"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->COPY_CONTACT:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    .line 4
    sget v2, Lcom/truecaller/details_view/R$id;->action_copy_name:I

    const-string v3, "COPY_NAME"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->COPY_NAME:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    .line 5
    sget v2, Lcom/truecaller/details_view/R$id;->action_copy_number:I

    const-string v3, "COPY_PHONE"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->COPY_PHONE:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    .line 6
    sget v2, Lcom/truecaller/details_view/R$id;->action_delete_contact:I

    const-string v3, "DELETE_CONTACT"

    const/4 v4, 0x5

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->DELETE_CONTACT:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    .line 7
    sget v2, Lcom/truecaller/details_view/R$id;->action_delete_identified_contact:I

    const-string v3, "DELETE_IDENTIFIED_CONTACT"

    const/4 v4, 0x6

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->DELETE_IDENTIFIED_CONTACT:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    .line 8
    sget v2, Lcom/truecaller/details_view/R$id;->action_search_web:I

    const-string v3, "SEARCH_WEB"

    const/4 v4, 0x7

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->SEARCH_WEB:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    .line 9
    sget v2, Lcom/truecaller/details_view/R$id;->action_favorite_contact:I

    const-string v3, "FAVORITE"

    const/16 v4, 0x8

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->FAVORITE:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    .line 10
    sget v2, Lcom/truecaller/details_view/R$id;->action_unfavorite_contact:I

    const-string v3, "UNFAVORITE"

    const/16 v4, 0x9

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->UNFAVORITE:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    .line 11
    sget v2, Lcom/truecaller/details_view/R$id;->action_edit_contact:I

    const-string v3, "EDIT"

    const/16 v4, 0xa

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->EDIT:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    aput-object v1, v0, v4

    sput-object v0, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->$VALUES:[Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;
    .locals 1

    const-class v0, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;
    .locals 1

    sget-object v0, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->$VALUES:[Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    invoke-virtual {v0}, [Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;->id:I

    return v0
.end method
