.class public final Le/a/h/f/q$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/q;-><init>(Le/a/l4/c;Le/a/p5/c;Le/a/h/f/l0;Landroid/view/View;Le/a/h/f/d;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder;Le/a/h/f/g0;Le/a/i/d/x;Le/a/u3/g;Le/a/i/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/f/q;

.field public final synthetic c:Lcom/truecaller/calling/contacts_list/ContactsHolder;


# direct methods
.method public constructor <init>(Le/a/h/f/q;Lcom/truecaller/calling/contacts_list/ContactsHolder;)V
    .locals 0

    iput-object p1, p0, Le/a/h/f/q$b;->b:Le/a/h/f/q;

    iput-object p2, p0, Le/a/h/f/q$b;->c:Lcom/truecaller/calling/contacts_list/ContactsHolder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/h/f/q$b;->b:Le/a/h/f/q;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1}, Ls1/d0/j;->f(II)Ls1/d0/g;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    move-object v2, p1

    check-cast v2, Ls1/d0/h;

    invoke-virtual {v2}, Ls1/d0/h;->hasNext()Z

    move-result v2

    const v3, 0x7f0d0160

    const v4, 0x7f0d0408

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Ls1/u/z;

    invoke-virtual {v2}, Ls1/u/z;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 6
    iget-object v7, v0, Le/a/h/f/q;->k:Le/a/o2/f;

    invoke-virtual {v7, v6}, Le/a/o2/f;->getItemViewType(I)I

    move-result v6

    if-eq v6, v4, :cond_2

    if-ne v6, v3, :cond_1

    goto :goto_0

    :cond_1
    move v6, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_0

    goto :goto_2

    :cond_3
    move-object v2, v5

    .line 7
    :goto_2
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 8
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 9
    iget-object v0, p0, Le/a/h/f/q$b;->b:Le/a/h/f/q;

    .line 10
    iget-object v0, v0, Le/a/h/f/q;->k:Le/a/o2/f;

    .line 11
    invoke-virtual {v0, p1}, Le/a/o2/f;->getItemViewType(I)I

    move-result v0

    .line 12
    iget-object v1, p0, Le/a/h/f/q$b;->b:Le/a/h/f/q;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v0, v4, :cond_4

    .line 14
    iget-object v0, p0, Le/a/h/f/q$b;->c:Lcom/truecaller/calling/contacts_list/ContactsHolder;

    .line 15
    iget-object v1, p0, Le/a/h/f/q$b;->b:Le/a/h/f/q;

    .line 16
    iget-object v1, v1, Le/a/h/f/q;->k:Le/a/o2/f;

    .line 17
    invoke-virtual {v1, p1}, Le/a/o2/f;->s(I)I

    move-result p1

    .line 18
    iget-object v1, p0, Le/a/h/f/q$b;->b:Le/a/h/f/q;

    .line 19
    iget-object v1, v1, Le/a/h/f/q;->p:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    .line 20
    invoke-interface {v0, p1, v1}, Lcom/truecaller/calling/contacts_list/ContactsHolder;->v5(ILcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 21
    :cond_4
    iget-object p1, p0, Le/a/h/f/q$b;->b:Le/a/h/f/q;

    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v0, v3, :cond_5

    const-string v5, "\u2605"

    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    const-string v5, ""

    :goto_4
    return-object v5
.end method
