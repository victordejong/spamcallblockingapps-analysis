.class public final Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/o2/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$a;->b:I

    iput-object p2, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$a;->b:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    .line 1
    new-instance v0, Le/a/o2/f;

    iget-object v2, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$a;->c:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 2
    iget-object v2, v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->c:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/o2/r;

    .line 3
    invoke-direct {v0, v2}, Le/a/o2/f;-><init>(Le/a/o2/a;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->setHasStableIds(Z)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0

    .line 5
    :cond_1
    new-instance v0, Le/a/o2/f;

    iget-object v2, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$a;->c:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 6
    iget-object v2, v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->g:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/o2/r;

    .line 7
    iget-object v3, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$a;->c:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 8
    iget-object v3, v3, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->f:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/o2/r;

    .line 9
    new-instance v4, Le/a/o2/g;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Le/a/o2/g;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Le/a/o2/r;->f(Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$a;->c:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 11
    iget-object v3, v3, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->e:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/o2/r;

    .line 12
    new-instance v4, Le/a/o2/g;

    invoke-direct {v4, v5, v1}, Le/a/o2/g;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Le/a/o2/u;->f(Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;

    move-result-object v2

    .line 13
    invoke-direct {v0, v2}, Le/a/o2/f;-><init>(Le/a/o2/a;)V

    .line 14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->setHasStableIds(Z)V

    return-object v0
.end method
