.class public final Le/a/h/f/q$a;
.super Le/a/b0/a/w/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/q;-><init>(Le/a/l4/c;Le/a/p5/c;Le/a/h/f/l0;Landroid/view/View;Le/a/h/f/d;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder;Le/a/h/f/g0;Le/a/i/d/x;Le/a/u3/g;Le/a/i/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Le/a/h/f/q;

.field public final synthetic e:Lcom/truecaller/calling/contacts_list/ContactsHolder;


# direct methods
.method public constructor <init>(Le/a/h/f/q;Lcom/truecaller/calling/contacts_list/ContactsHolder;)V
    .locals 0

    iput-object p1, p0, Le/a/h/f/q$a;->d:Le/a/h/f/q;

    iput-object p2, p0, Le/a/h/f/q$a;->e:Lcom/truecaller/calling/contacts_list/ContactsHolder;

    .line 1
    invoke-direct {p0}, Le/a/b0/a/w/g;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/f/q$a;->d:Le/a/h/f/q;

    .line 2
    iget-object v0, v0, Le/a/h/f/q;->n:Le/a/h/f/l0;

    .line 3
    invoke-interface {v0, p1}, Le/a/h/f/l0;->fq(Z)V

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Le/a/b0/a/w/g;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iget-object p1, p0, Le/a/h/f/q$a;->d:Le/a/h/f/q;

    .line 3
    iget-object v0, p1, Le/a/h/f/q;->n:Le/a/h/f/l0;

    .line 4
    iget-object p1, p1, Le/a/h/f/q;->p:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    .line 5
    invoke-interface {v0, p1, p2}, Le/a/h/f/l0;->Jf(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;I)V

    return-void
.end method
