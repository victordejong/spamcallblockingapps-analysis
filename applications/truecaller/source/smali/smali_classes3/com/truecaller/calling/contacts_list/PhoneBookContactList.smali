.class public final Lcom/truecaller/calling/contacts_list/PhoneBookContactList;
.super Lcom/truecaller/calling/contacts_list/ContactTabFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001b\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/calling/contacts_list/PhoneBookContactList;",
        "Lcom/truecaller/calling/contacts_list/ContactTabFragment;",
        "Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;",
        "PA",
        "()Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;",
        "Ls1/k;",
        "",
        "OA",
        "()Ls1/k;",
        "<init>",
        "()V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/calling/contacts_list/ContactTabFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public OA()Ls1/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/k;

    const v1, 0x7f120197

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.ContactsEmptyTitle)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f120196

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.ContactsEmptyMessage)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public PA()Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->PHONEBOOK_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    return-object v0
.end method
