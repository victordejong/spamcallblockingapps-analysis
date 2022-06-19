.class public final Le/a/p/a/o;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/p/a/m;


# direct methods
.method public constructor <init>(Le/a/p/a/m;)V
    .locals 0

    iput-object p1, p0, Le/a/p/a/o;->b:Le/a/p/a/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Le/a/p/a/o;->b:Le/a/p/a/m;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Le/a/p/a/m;->e:Le/a/r2/a;

    .line 4
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->pz()V

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Le/a/p/a/m;->p:Z

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Le/a/p/a/o;->b:Le/a/p/a/m;

    .line 8
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_1

    .line 9
    iget-object p1, p1, Le/a/p/a/m;->w:Le/a/p5/c0;

    .line 10
    sget v2, Lcom/truecaller/editprofile/R$string;->ErrorConnectionGeneral:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getStri\u2026g.ErrorConnectionGeneral)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->m(Ljava/lang/String;)V

    .line 11
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
