.class public final Le/a/h/f/h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/f/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/h0;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;)Le/a/h/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/f/h0;

.field public final synthetic b:Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;

.field public final synthetic c:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;


# direct methods
.method public constructor <init>(Le/a/h/f/h0;Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;",
            "Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/h/f/h0$a;->a:Le/a/h/f/h0;

    iput-object p2, p0, Le/a/h/f/h0$a;->b:Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;

    iput-object p3, p0, Le/a/h/f/h0$a;->c:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public y()Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/f/h0$a;->a:Le/a/h/f/h0;

    .line 2
    iget-object v0, v0, Le/a/h/f/h0;->a:Lcom/truecaller/calling/contacts_list/ContactsHolder;

    .line 3
    invoke-interface {v0}, Lcom/truecaller/calling/contacts_list/ContactsHolder;->y()Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h/f/h0$a;->a:Le/a/h/f/h0;

    .line 2
    iget-object v0, v0, Le/a/h/f/h0;->a:Lcom/truecaller/calling/contacts_list/ContactsHolder;

    .line 3
    iget-object v1, p0, Le/a/h/f/h0$a;->b:Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;

    iget-object v2, p0, Le/a/h/f/h0$a;->c:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    invoke-interface {v0, v1, v2}, Lcom/truecaller/calling/contacts_list/ContactsHolder;->sb(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
