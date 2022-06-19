.class public final Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

.field public final c:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;",
            ">;",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;",
            ")V"
        }
    .end annotation

    const-string v0, "contacts"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->b:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    iput-object p3, p0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->c:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;I)V
    .locals 0

    and-int/lit8 p2, p4, 0x2

    and-int/lit8 p2, p4, 0x4

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    move-object p3, p4

    .line 2
    :cond_0
    invoke-direct {p0, p1, p4, p3}, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;-><init>(Ljava/util/List;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;

    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->a:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->b:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    iget-object v1, p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->b:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->c:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    iget-object p1, p1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->c:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->b:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->c:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ContactsWithIndexes(contacts="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nonPhonebookContactsIndexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->b:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phonebookContactsIndexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;->c:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
