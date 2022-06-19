.class public final Le/a/h/f/b0$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/b0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Le/a/b0/a/c0/a;",
        "Ljava/lang/Integer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/f/b0;


# direct methods
.method public constructor <init>(Le/a/h/f/b0;)V
    .locals 0

    iput-object p1, p0, Le/a/h/f/b0$a;->b:Le/a/h/f/b0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/b0/a/c0/a;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "<anonymous parameter 0>"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/h/f/b0$a;->b:Le/a/h/f/b0;

    iget-object p1, p1, Le/a/h/f/b0;->a:Le/a/h/f/b;

    .line 4
    iget-object v0, p1, Le/a/h/f/b;->c:Le/a/h/f/d0;

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Le/a/h/f/b;->b:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "phoneBookFilter[position]"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    invoke-interface {v0, p2, p1}, Le/a/h/f/d0;->Ie(ILcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)V

    .line 7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_0
    const-string p1, "presenter"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
