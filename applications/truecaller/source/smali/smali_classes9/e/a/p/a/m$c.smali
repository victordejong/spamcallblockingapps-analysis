.class public final Le/a/p/a/m$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p/a/m;->bk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.editprofile.ui.EditProfilePresenter$startSavingProfile$1"
    f = "EditProfilePresenter.kt"
    l = {
        0x309,
        0x319
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/p/a/m;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/p/a/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    iput-object p2, p0, Le/a/p/a/m$c;->h:Ljava/lang/String;

    iput-object p3, p0, Le/a/p/a/m$c;->i:Ljava/lang/String;

    iput-object p4, p0, Le/a/p/a/m$c;->j:Ljava/lang/String;

    iput-object p5, p0, Le/a/p/a/m$c;->k:Ljava/lang/String;

    iput-object p6, p0, Le/a/p/a/m$c;->l:Ljava/lang/String;

    iput-object p7, p0, Le/a/p/a/m$c;->m:Ljava/lang/String;

    iput-object p8, p0, Le/a/p/a/m$c;->n:Ljava/lang/String;

    iput-object p9, p0, Le/a/p/a/m$c;->o:Ljava/lang/String;

    iput-object p10, p0, Le/a/p/a/m$c;->p:Ljava/lang/String;

    iput-object p11, p0, Le/a/p/a/m$c;->q:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p12}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 13
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

    new-instance p1, Le/a/p/a/m$c;

    iget-object v1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    iget-object v2, p0, Le/a/p/a/m$c;->h:Ljava/lang/String;

    iget-object v3, p0, Le/a/p/a/m$c;->i:Ljava/lang/String;

    iget-object v4, p0, Le/a/p/a/m$c;->j:Ljava/lang/String;

    iget-object v5, p0, Le/a/p/a/m$c;->k:Ljava/lang/String;

    iget-object v6, p0, Le/a/p/a/m$c;->l:Ljava/lang/String;

    iget-object v7, p0, Le/a/p/a/m$c;->m:Ljava/lang/String;

    iget-object v8, p0, Le/a/p/a/m$c;->n:Ljava/lang/String;

    iget-object v9, p0, Le/a/p/a/m$c;->o:Ljava/lang/String;

    iget-object v10, p0, Le/a/p/a/m$c;->p:Ljava/lang/String;

    iget-object v11, p0, Le/a/p/a/m$c;->q:Ljava/lang/String;

    move-object v0, p1

    move-object v12, p2

    invoke-direct/range {v0 .. v12}, Le/a/p/a/m$c;-><init>(Le/a/p/a/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/p/a/m$c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/p/a/m$c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/p/a/m$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/p/a/m$c;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/p/a/m$c;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    iget-object v5, p0, Le/a/p/a/m$c;->h:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v5}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "first_name"

    .line 7
    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    iget-object v5, p0, Le/a/p/a/m$c;->i:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v5}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "last_name"

    .line 10
    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    iget-object v5, p0, Le/a/p/a/m$c;->j:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v5}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "email"

    .line 13
    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    iget-object v5, p0, Le/a/p/a/m$c;->k:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v5}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "street"

    .line 16
    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    iget-object v5, p0, Le/a/p/a/m$c;->l:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v5}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "zipcode"

    .line 19
    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    iget-object v5, p0, Le/a/p/a/m$c;->m:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v5}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "city"

    .line 22
    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    iget-object v5, p0, Le/a/p/a/m$c;->n:Ljava/lang/String;

    .line 24
    invoke-virtual {p1, v5}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "w_company"

    .line 25
    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    iget-object v5, p0, Le/a/p/a/m$c;->o:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v5}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "w_title"

    .line 28
    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    iget-object v5, p0, Le/a/p/a/m$c;->p:Ljava/lang/String;

    .line 30
    invoke-virtual {p1, v5}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "url"

    .line 31
    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    iget-object v5, p0, Le/a/p/a/m$c;->q:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, v5}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "status_message"

    .line 34
    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    .line 36
    iget-object p1, p1, Le/a/p/a/m;->h:Lcom/truecaller/editprofile/ui/Gender;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v5, "gender"

    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    .line 39
    invoke-virtual {p1}, Le/a/p/a/m;->Lj()Ljava/lang/String;

    move-result-object p1

    const-string v5, "birthday"

    .line 40
    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    .line 42
    iget-object p1, p1, Le/a/p/a/m;->o:Ljava/lang/String;

    const-string v5, ""

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v5

    :goto_0
    const-string v6, "google_id_token"

    .line 43
    invoke-interface {v1, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    .line 45
    iget-boolean v6, p1, Le/a/p/a/m;->r:Z

    if-eqz v6, :cond_4

    const-string p1, "0"

    goto :goto_1

    .line 46
    :cond_4
    iget-object v6, p1, Le/a/p/a/m;->v:Le/a/b0/o/a;

    const-string v7, "profileAcceptAuto"

    .line 47
    invoke-interface {v6, v7, v5}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "coreSettings.getString(C\u2026.PROFILE_ACCEPT_AUTO, \"\")"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, v5}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v5, "auto_accept"

    .line 49
    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    .line 51
    iget-object v5, p1, Le/a/p/a/m;->l:Landroid/net/Uri;

    if-eqz v5, :cond_6

    .line 52
    iget-object p1, p1, Le/a/p/a/m;->M:Le/a/p/g;

    check-cast p1, Le/a/p/i;

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "avatarUri"

    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v5, "avatarUri.path ?: return null"

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v5, Lu3/c0;->f:Lu3/c0$a;

    const-string v5, "image/jpeg"

    invoke-static {v5}, Lu3/c0$a;->b(Ljava/lang/String;)Lu3/c0;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "file"

    .line 56
    invoke-static {v6, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$this$asRequestBody"

    .line 57
    invoke-static {v6, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance p1, Lu3/h0;

    invoke-direct {p1, v6, v5}, Lu3/h0;-><init>(Ljava/io/File;Lu3/c0;)V

    goto :goto_3

    :cond_5
    move-object p1, v4

    goto :goto_3

    .line 59
    :cond_6
    iget-object v5, p1, Le/a/p/a/m;->m:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 60
    iput-object v1, p0, Le/a/p/a/m$c;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/p/a/m$c;->f:I

    invoke-virtual {p1, p0}, Le/a/p/a/m;->Kj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    check-cast p1, Lu3/j0;

    :goto_3
    move-object v9, v1

    goto :goto_4

    :cond_8
    move-object v9, v1

    move-object p1, v4

    .line 61
    :goto_4
    iget-object v1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    .line 62
    iget-object v5, v1, Le/a/p/a/m;->k:Lcom/truecaller/common/profile/ImageSource;

    .line 63
    invoke-virtual {v1}, Le/a/p/a/m;->Rj()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz p1, :cond_9

    if-eqz v5, :cond_9

    .line 64
    new-instance v1, Le/a/b0/n/d$b;

    invoke-direct {v1, p1, v5}, Le/a/b0/n/d$b;-><init>(Lu3/j0;Lcom/truecaller/common/profile/ImageSource;)V

    move-object v6, v1

    goto :goto_6

    .line 65
    :cond_9
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    .line 66
    invoke-virtual {p1}, Le/a/p/a/m;->Rj()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 67
    sget-object p1, Le/a/b0/n/d$a;->a:Le/a/b0/n/d$a;

    goto :goto_5

    .line 68
    :cond_a
    sget-object p1, Le/a/b0/n/d$c;->a:Le/a/b0/n/d$c;

    :goto_5
    move-object v6, p1

    .line 69
    :goto_6
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    .line 70
    iget-object v5, p1, Le/a/p/a/m;->u:Le/a/b0/n/g;

    .line 71
    iget-object v8, p1, Le/a/p/a/m;->i:Ljava/lang/Long;

    .line 72
    invoke-virtual {p1}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object p1

    .line 73
    iget-object p1, p1, Le/a/p/a/m$a;->m:Ljava/lang/Long;

    .line 74
    invoke-static {v8, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v7, p1, 0x1

    .line 75
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    .line 76
    iget-boolean v10, p1, Le/a/p/a/m;->r:Z

    .line 77
    iput-object v4, p0, Le/a/p/a/m$c;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/p/a/m$c;->f:I

    move-object v11, p0

    .line 78
    invoke-interface/range {v5 .. v11}, Le/a/b0/n/g;->b(Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 79
    :cond_b
    :goto_7
    check-cast p1, Le/a/b0/n/h;

    .line 80
    iget-boolean v0, p1, Le/a/b0/n/h;->a:Z

    if-ne v0, v2, :cond_d

    .line 81
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    .line 82
    iget-object p1, p1, Le/a/p/a/m;->B:Le/a/d3/h;

    .line 83
    invoke-interface {p1}, Le/a/d3/h;->b()V

    .line 84
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    .line 85
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_c

    .line 86
    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Sk()V

    .line 87
    :cond_c
    iget-object p1, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    .line 88
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_f

    .line 89
    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->t()V

    goto :goto_8

    :cond_d
    if-nez v0, :cond_f

    .line 90
    iget-object v0, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    .line 91
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->ao()V

    :cond_e
    const/4 v1, 0x0

    .line 92
    iput-boolean v1, v0, Le/a/p/a/m;->p:Z

    .line 93
    iget-object v0, p0, Le/a/p/a/m$c;->g:Le/a/p/a/m;

    .line 94
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_f

    .line 95
    iget-object v0, v0, Le/a/p/a/m;->P:Le/a/b0/n/b;

    .line 96
    invoke-virtual {v0, p1}, Le/a/b0/n/b;->a(Le/a/b0/n/h;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->m(Ljava/lang/String;)V

    .line 97
    :cond_f
    :goto_8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
