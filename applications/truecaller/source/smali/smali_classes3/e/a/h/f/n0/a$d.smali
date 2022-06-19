.class public final synthetic Le/a/h/f/n0/a$d;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/n0/a;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;Ljava/lang/Integer;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Landroid/database/Cursor;",
        "Le/a/k3/l/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/k3/i;)V
    .locals 7

    const-class v3, Le/a/k3/i;

    const/4 v1, 0x1

    const-string v4, "getSortingData"

    const-string v5, "getSortingData(Landroid/database/Cursor;)Lcom/truecaller/data/entity/ContactSortingData;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/database/Cursor;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/k3/i;

    .line 3
    invoke-virtual {v0, p1}, Le/a/k3/i;->a(Landroid/database/Cursor;)Le/a/k3/l/b;

    move-result-object p1

    return-object p1
.end method
