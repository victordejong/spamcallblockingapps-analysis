.class public final Le/a/p/a/b$b;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p/a/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
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

    iput p1, p0, Le/a/p/a/b$b;->b:I

    iput-object p2, p0, Le/a/p/a/b$b;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/p/a/b$b;->b:I

    const-string v2, "it"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/p/a/b$b;->c:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    .line 4
    iget-object v1, p0, Le/a/p/a/b$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/p/a/b;

    .line 5
    invoke-virtual {v1}, Le/a/p/a/b;->ZA()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v1, p0, Le/a/p/a/b$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/p/a/b;

    .line 7
    invoke-virtual {v1}, Le/a/p/a/b;->dB()Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-object v1, p0, Le/a/p/a/b$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/p/a/b;

    .line 9
    invoke-virtual {v1}, Le/a/p/a/b;->XA()Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v1, p0, Le/a/p/a/b$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/p/a/b;

    .line 11
    invoke-virtual {v1}, Le/a/p/a/b;->jB()Ljava/lang/String;

    move-result-object v6

    .line 12
    iget-object v1, p0, Le/a/p/a/b$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/p/a/b;

    .line 13
    invoke-virtual {v1}, Le/a/p/a/b;->oB()Ljava/lang/String;

    move-result-object v7

    .line 14
    iget-object v1, p0, Le/a/p/a/b$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/p/a/b;

    .line 15
    invoke-virtual {v1}, Le/a/p/a/b;->TA()Ljava/lang/String;

    move-result-object v8

    .line 16
    iget-object v1, p0, Le/a/p/a/b$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/p/a/b;

    .line 17
    invoke-virtual {v1}, Le/a/p/a/b;->VA()Ljava/lang/String;

    move-result-object v9

    .line 18
    iget-object v1, p0, Le/a/p/a/b$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/p/a/b;

    .line 19
    invoke-virtual {v1}, Le/a/p/a/b;->bB()Ljava/lang/String;

    move-result-object v10

    .line 20
    iget-object v1, p0, Le/a/p/a/b$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/p/a/b;

    .line 21
    invoke-virtual {v1}, Le/a/p/a/b;->mB()Ljava/lang/String;

    move-result-object v11

    .line 22
    iget-object v1, p0, Le/a/p/a/b$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/p/a/b;

    .line 23
    invoke-virtual {v1}, Le/a/p/a/b;->QA()Ljava/lang/String;

    move-result-object v12

    .line 24
    move-object v2, p1

    check-cast v2, Le/a/p/a/m;

    invoke-virtual/range {v2 .. v12}, Le/a/p/a/m;->Yj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 25
    throw p1

    .line 26
    :cond_1
    check-cast p1, Landroid/view/View;

    .line 27
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Le/a/p/a/b$b;->c:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    .line 29
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Sk()V

    .line 30
    :cond_2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->t()V

    :cond_3
    return-object v0
.end method
