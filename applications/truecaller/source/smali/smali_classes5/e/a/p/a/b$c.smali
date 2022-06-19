.class public final Le/a/p/a/b$c;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/text/Editable;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/p/a/b$c;->b:I

    iput-object p2, p0, Le/a/p/a/b$c;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/p/a/b$c;->b:I

    const/4 v2, 0x0

    const-string v3, "text"

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v1, :cond_b

    if-eq v1, v5, :cond_6

    const/4 v6, 0x2

    if-ne v1, v6, :cond_5

    .line 1
    check-cast p1, Landroid/text/Editable;

    .line 2
    iget-object v1, p0, Le/a/p/a/b$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/p/a/b;

    invoke-virtual {v1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v4, p0, Le/a/p/a/b$c;->c:Ljava/lang/Object;

    check-cast v4, Le/a/p/a/b;

    .line 3
    invoke-virtual {v4, p1}, Le/a/p/a/b;->rB(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v4

    .line 4
    :cond_0
    check-cast v1, Le/a/p/a/m;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    move v2, v5

    :cond_1
    if-nez v2, :cond_2

    invoke-static {v4}, Le/a/p5/s0/f;->o(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->xf()V

    .line 7
    :cond_3
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->lk()V

    :cond_4
    return-object v0

    :cond_5
    const/4 p1, 0x0

    .line 8
    throw p1

    .line 9
    :cond_6
    check-cast p1, Landroid/text/Editable;

    .line 10
    iget-object v1, p0, Le/a/p/a/b$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/p/a/b;

    invoke-virtual {v1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object v1

    if-eqz p1, :cond_7

    iget-object v4, p0, Le/a/p/a/b$c;->c:Ljava/lang/Object;

    check-cast v4, Le/a/p/a/b;

    .line 11
    invoke-virtual {v4, p1}, Le/a/p/a/b;->rB(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v4

    .line 12
    :cond_7
    check-cast v1, Le/a/p/a/m;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_8

    move v2, v5

    :cond_8
    if-eqz v2, :cond_9

    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Qj()V

    .line 15
    :cond_9
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->lk()V

    :cond_a
    return-object v0

    .line 16
    :cond_b
    check-cast p1, Landroid/text/Editable;

    .line 17
    iget-object v1, p0, Le/a/p/a/b$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/p/a/b;

    invoke-virtual {v1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object v1

    if-eqz p1, :cond_c

    iget-object v4, p0, Le/a/p/a/b$c;->c:Ljava/lang/Object;

    check-cast v4, Le/a/p/a/b;

    .line 18
    invoke-virtual {v4, p1}, Le/a/p/a/b;->rB(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v4

    .line 19
    :cond_c
    check-cast v1, Le/a/p/a/m;

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_d

    move v2, v5

    :cond_d
    if-eqz v2, :cond_e

    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Sf()V

    .line 22
    :cond_e
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->lk()V

    :cond_f
    return-object v0
.end method
