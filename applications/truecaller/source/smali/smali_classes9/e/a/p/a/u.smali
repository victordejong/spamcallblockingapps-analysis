.class public final Le/a/p/a/u;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.editprofile.ui.EditProfilePresenter$setVideoCallerIdVisibility$1"
    f = "EditProfilePresenter.kt"
    l = {
        0xc6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/p/a/m;


# direct methods
.method public constructor <init>(Le/a/p/a/m;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/p/a/u;->f:Le/a/p/a/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/p/a/u;

    iget-object v0, p0, Le/a/p/a/u;->f:Le/a/p/a/m;

    invoke-direct {p1, v0, p2}, Le/a/p/a/u;-><init>(Le/a/p/a/m;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/p/a/u;

    iget-object v0, p0, Le/a/p/a/u;->f:Le/a/p/a/m;

    invoke-direct {p1, v0, p2}, Le/a/p/a/u;-><init>(Le/a/p/a/m;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/p/a/u;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/p/a/u;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/p/a/u;->f:Le/a/p/a/m;

    .line 5
    iget-object p1, p1, Le/a/p/a/m;->Q:Le/a/k/h;

    .line 6
    invoke-interface {p1}, Le/a/k/h;->z()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Le/a/p/a/u;->f:Le/a/p/a/m;

    .line 7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_5

    .line 8
    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->kr()V

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Le/a/p/a/u;->f:Le/a/p/a/m;

    .line 10
    iget-object p1, p1, Le/a/p/a/m;->Q:Le/a/k/h;

    .line 11
    iput v2, p0, Le/a/p/a/u;->e:I

    invoke-interface {p1, p0}, Le/a/k/h;->g(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/a/p/a/u;->f:Le/a/p/a/m;

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_5

    .line 13
    sget v0, Lcom/truecaller/editprofile/R$string;->vid_your_video_caller_id:I

    sget-object v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;->VISIT_YOUR_VIDEO:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;

    invoke-interface {p1, v0, v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Wq(ILcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p0, Le/a/p/a/u;->f:Le/a/p/a/m;

    .line 15
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_5

    .line 16
    sget v0, Lcom/truecaller/editprofile/R$string;->vid_settings_setup:I

    sget-object v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;->CREATE_NEW_VIDEO:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;

    invoke-interface {p1, v0, v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Wq(ILcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;)V

    .line 17
    :cond_5
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
