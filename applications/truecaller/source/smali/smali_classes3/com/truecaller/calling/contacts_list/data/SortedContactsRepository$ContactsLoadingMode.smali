.class public final enum Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContactsLoadingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "PHONEBOOK_LIMITED",
        "NON_PHONEBOOK_LIMITED",
        "PHONEBOOK_INITIAL",
        "FULL_INITIAL",
        "FULL_WITH_ENTITIES",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

.field public static final enum FULL_INITIAL:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

.field public static final enum FULL_WITH_ENTITIES:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

.field public static final enum NON_PHONEBOOK_LIMITED:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

.field public static final enum PHONEBOOK_INITIAL:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

.field public static final enum PHONEBOOK_LIMITED:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    new-instance v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    const-string v2, "PHONEBOOK_LIMITED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->PHONEBOOK_LIMITED:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    const-string v2, "NON_PHONEBOOK_LIMITED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->NON_PHONEBOOK_LIMITED:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    const-string v2, "PHONEBOOK_INITIAL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->PHONEBOOK_INITIAL:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    const-string v2, "FULL_INITIAL"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->FULL_INITIAL:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    const-string v2, "FULL_WITH_ENTITIES"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->FULL_WITH_ENTITIES:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->$VALUES:[Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;
    .locals 1

    const-class v0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;
    .locals 1

    sget-object v0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->$VALUES:[Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    invoke-virtual {v0}, [Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    return-object v0
.end method
