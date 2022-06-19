.class public final Le/a/p/a/m;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/p/a/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/p/a/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Lcom/truecaller/editprofile/ui/EditProfileMvp$View;",
        ">;",
        "Le/a/p/a/l;"
    }
.end annotation


# instance fields
.field public final A:Le/a/p/e;

.field public final B:Le/a/d3/h;

.field public final C:Le/a/p/c;

.field public final D:Le/a/p/l;

.field public final E:Le/a/d4/c;

.field public final J:Le/a/g5/p;

.field public final K:Le/a/p5/a0;

.field public final L:Le/a/p5/a;

.field public final M:Le/a/p/g;

.field public final N:Le/a/q2/a;

.field public final O:Le/a/m4/c/i/a/b;

.field public final P:Le/a/b0/n/b;

.field public final Q:Le/a/k/h;

.field public d:Landroid/content/Intent;

.field public e:Le/a/r2/a;

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public h:Lcom/truecaller/editprofile/ui/Gender;

.field public i:Ljava/lang/Long;

.field public j:Ljava/util/Date;

.field public k:Lcom/truecaller/common/profile/ImageSource;

.field public l:Landroid/net/Uri;

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:Z

.field public final q:Ljava/text/SimpleDateFormat;

.field public r:Z

.field public final s:Ls1/w/f;

.field public final t:Ls1/w/f;

.field public final u:Le/a/b0/n/g;

.field public final v:Le/a/b0/o/a;

.field public final w:Le/a/p5/c0;

.field public final x:Le/a/p5/c;

.field public final y:Le/a/b0/e/f;

.field public final z:Le/a/u3/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/b0/n/g;Le/a/b0/o/a;Le/a/p5/c0;Le/a/p5/c;Le/a/b0/e/f;Le/a/u3/g;Le/a/p/e;Le/a/d3/h;Le/a/p/c;Le/a/p/l;Le/a/d4/c;Le/a/g5/p;Le/a/p5/a0;Le/a/p5/a;Le/a/p/g;Le/a/q2/a;Le/a/m4/c/i/a/b;Le/a/b0/n/b;Le/a/k/h;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p8    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "uiContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileRepository"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appHelper"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessCardRepository"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountHelper"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryHelper"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDisplayUtil"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapUtil"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarHelper"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bizProfileLocalFileManager"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileErrorMessageHelper"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerId"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Le/a/p/a/m;->s:Ls1/w/f;

    iput-object v2, v0, Le/a/p/a/m;->t:Ls1/w/f;

    iput-object v3, v0, Le/a/p/a/m;->u:Le/a/b0/n/g;

    iput-object v4, v0, Le/a/p/a/m;->v:Le/a/b0/o/a;

    iput-object v5, v0, Le/a/p/a/m;->w:Le/a/p5/c0;

    iput-object v6, v0, Le/a/p/a/m;->x:Le/a/p5/c;

    iput-object v7, v0, Le/a/p/a/m;->y:Le/a/b0/e/f;

    iput-object v8, v0, Le/a/p/a/m;->z:Le/a/u3/g;

    iput-object v9, v0, Le/a/p/a/m;->A:Le/a/p/e;

    iput-object v10, v0, Le/a/p/a/m;->B:Le/a/d3/h;

    iput-object v11, v0, Le/a/p/a/m;->C:Le/a/p/c;

    iput-object v12, v0, Le/a/p/a/m;->D:Le/a/p/l;

    iput-object v13, v0, Le/a/p/a/m;->E:Le/a/d4/c;

    iput-object v14, v0, Le/a/p/a/m;->J:Le/a/g5/p;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/p/a/m;->K:Le/a/p5/a0;

    iput-object v15, v0, Le/a/p/a/m;->L:Le/a/p5/a;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Le/a/p/a/m;->M:Le/a/p/g;

    iput-object v2, v0, Le/a/p/a/m;->N:Le/a/q2/a;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    iput-object v1, v0, Le/a/p/a/m;->O:Le/a/m4/c/i/a/b;

    iput-object v2, v0, Le/a/p/a/m;->P:Le/a/b0/n/b;

    move-object/from16 v1, p21

    iput-object v1, v0, Le/a/p/a/m;->Q:Le/a/k/h;

    .line 2
    new-instance v1, Le/a/p/a/r;

    invoke-direct {v1, v0}, Le/a/p/a/r;-><init>(Le/a/p/a/m;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/p/a/m;->f:Ls1/g;

    .line 3
    new-instance v1, Le/a/p/a/s;

    invoke-direct {v1, v0}, Le/a/p/a/s;-><init>(Le/a/p/a/m;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/p/a/m;->g:Ls1/g;

    .line 4
    sget-object v1, Lcom/truecaller/editprofile/ui/Gender;->N:Lcom/truecaller/editprofile/ui/Gender;

    iput-object v1, v0, Le/a/p/a/m;->h:Lcom/truecaller/editprofile/ui/Gender;

    .line 5
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, v0, Le/a/p/a/m;->q:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public final Ij(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/p/a/m;->J:Le/a/g5/p;

    invoke-interface {v0, p1, p2}, Le/a/g5/p;->c(J)Le/a/b0/p/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p1, Le/a/b0/p/c;->b:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Le/a/b0/p/c;->e:Ljava/lang/String;

    .line 4
    invoke-interface {p2, v0, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->A2(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final Jj(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public final Kj(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lu3/j0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/p/a/m$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/p/a/m$b;

    iget v1, v0, Le/a/p/a/m$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/p/a/m$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/p/a/m$b;

    invoke-direct {v0, p0, p1}, Le/a/p/a/m$b;-><init>(Le/a/p/a/m;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/p/a/m$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/p/a/m$b;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/p/a/m;->m:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object v2, p0, Le/a/p/a/m;->M:Le/a/p/g;

    iput v4, v0, Le/a/p/a/m$b;->e:I

    check-cast v2, Le/a/p/i;

    .line 2
    iget-object v4, v2, Le/a/p/i;->b:Ls1/w/f;

    new-instance v5, Le/a/p/h;

    invoke-direct {v5, v2, p1, v3}, Le/a/p/h;-><init>(Le/a/p/i;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v4, v5, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 3
    :cond_3
    :goto_1
    move-object v3, p1

    check-cast v3, Lu3/j0;

    :cond_4
    return-object v3
.end method

.method public final Lj()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p/a/m;->j:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/p/a/m;->q:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final Mj(III)Ljava/util/Date;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 4
    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    const-string p1, "calendar"

    .line 5
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    const-string p2, "calendar.time"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final Nj(Lcom/truecaller/editprofile/ui/Gender;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Le/a/p/a/m;->w:Le/a/p5/c0;

    sget v0, Lcom/truecaller/editprofile/R$string;->ProfileEditGenderNeutral:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ProfileEditGenderNeutral)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/p/a/m;->w:Le/a/p5/c0;

    sget v0, Lcom/truecaller/editprofile/R$string;->ProfileEditGenderFemale:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026.ProfileEditGenderFemale)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/p/a/m;->w:Le/a/p5/c0;

    sget v0, Lcom/truecaller/editprofile/R$string;->ProfileEditGenderMale:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ng.ProfileEditGenderMale)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final Oj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/p/a/m;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final Pj()Le/a/p/a/m$a;
    .locals 1

    iget-object v0, p0, Le/a/p/a/m;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/p/a/m$a;

    return-object v0
.end method

.method public final Qj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/p/a/m;->C:Le/a/p/c;

    invoke-interface {v0}, Le/a/p/c;->g()Le/a/b0/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/b0/e/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final Rj()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/p/a/m;->l:Landroid/net/Uri;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/p/a/m;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le/a/p/a/m;->n:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/a/p/a/m;->Oj()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 2
    :goto_1
    iget-object v3, p0, Le/a/p/a/m;->l:Landroid/net/Uri;

    if-nez v3, :cond_3

    iget-object v3, p0, Le/a/p/a/m;->m:Ljava/lang/String;

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public final varargs Sj(Ljava/lang/String;Ljava/lang/String;[Ls1/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SocialNetwork"

    .line 2
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length p2, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p3, v1

    .line 4
    iget-object v3, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast v3, Ljava/lang/String;

    .line 6
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 7
    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Le/a/p/a/m;->N:Le/a/q2/a;

    .line 10
    new-instance p3, Le/a/q2/g$b$a;

    const/4 v1, 0x0

    invoke-direct {p3, p1, v1, v0, v1}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string p1, "eventBuilder.build()"

    .line 11
    invoke-static {p3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public final Tj()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/a/m;->Qj()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/a/p/a/m;->Qj()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->setPhoneNumber(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final Uj(Le/a/p/a/m$a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->lk()V

    :cond_0
    return-void
.end method

.method public Vj(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "avatarUri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/p/a/m;->l:Landroid/net/Uri;

    .line 2
    sget-object v0, Lcom/truecaller/common/profile/ImageSource;->TRUECALLER:Lcom/truecaller/common/profile/ImageSource;

    iput-object v0, p0, Le/a/p/a/m;->k:Lcom/truecaller/common/profile/ImageSource;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/p/a/m;->m:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->u(Landroid/net/Uri;)V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Nn(Z)V

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->lk()V

    :cond_2
    return-void
.end method

.method public Wj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->lk()V

    :cond_0
    return-void
.end method

.method public final Xj(ILcom/truecaller/social_login/SocialAccountProfile;Ljava/lang/String;)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_16

    if-eqz p2, :cond_16

    .line 1
    iget-object p1, p2, Lcom/truecaller/social_login/SocialAccountProfile;->c:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    .line 3
    :goto_1
    iget-object v2, p2, Lcom/truecaller/social_login/SocialAccountProfile;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-ne v2, v0, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    const/4 v3, 0x2

    new-array v3, v3, [Ls1/k;

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v4, Ls1/k;

    const-string v5, "HasEmail"

    invoke-direct {v4, v5, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v1

    .line 7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v2, Ls1/k;

    const-string v4, "HasProfilePicture"

    invoke-direct {v2, v4, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v3, v0

    const-string p1, "EditProflePrefillSuccess"

    .line 9
    invoke-virtual {p0, p1, p3, v3}, Le/a/p/a/m;->Sj(Ljava/lang/String;Ljava/lang/String;[Ls1/k;)V

    .line 10
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const-string v2, "Google"

    const v3, 0x7f784a59

    if-eq p1, v3, :cond_4

    goto :goto_4

    .line 11
    :cond_4
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p2, Lcom/truecaller/social_login/SocialAccountProfile;->e:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Le/a/p/a/m;->o:Ljava/lang/String;

    .line 14
    :cond_5
    :goto_4
    iget-object p1, p2, Lcom/truecaller/social_login/SocialAccountProfile;->a:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz p1, :cond_7

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    move v5, v0

    goto :goto_5

    :cond_6
    move v5, v1

    :goto_5
    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    move-object p1, v4

    :goto_6
    if-eqz p1, :cond_8

    .line 16
    iget-object v5, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v5, :cond_8

    invoke-interface {v5, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Tf(Ljava/lang/String;)V

    .line 17
    :cond_8
    iget-object p1, p2, Lcom/truecaller/social_login/SocialAccountProfile;->b:Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    move v5, v0

    goto :goto_7

    :cond_9
    move v5, v1

    :goto_7
    if-eqz v5, :cond_a

    goto :goto_8

    :cond_a
    move-object p1, v4

    :goto_8
    if-eqz p1, :cond_b

    .line 19
    iget-object v5, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v5, :cond_b

    invoke-interface {v5, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Hf(Ljava/lang/String;)V

    .line 20
    :cond_b
    iget-object p1, p2, Lcom/truecaller/social_login/SocialAccountProfile;->c:Ljava/lang/String;

    if-eqz p1, :cond_d

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c

    move v5, v0

    goto :goto_9

    :cond_c
    move v5, v1

    :goto_9
    if-eqz v5, :cond_d

    goto :goto_a

    :cond_d
    move-object p1, v4

    :goto_a
    if-eqz p1, :cond_e

    .line 22
    iget-object v5, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v5, :cond_e

    invoke-interface {v5, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Yf(Ljava/lang/String;)V

    .line 23
    :cond_e
    iget-object p1, p2, Lcom/truecaller/social_login/SocialAccountProfile;->d:Ljava/lang/String;

    if-eqz p1, :cond_10

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_f

    move v1, v0

    :cond_f
    if-eqz v1, :cond_10

    goto :goto_b

    :cond_10
    move-object p1, v4

    :goto_b
    if-eqz p1, :cond_13

    .line 25
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p2, :cond_11

    invoke-interface {p2, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Xe(Ljava/lang/String;)V

    .line 26
    :cond_11
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p2, :cond_12

    invoke-interface {p2, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Nn(Z)V

    .line 27
    :cond_12
    iput-object p1, p0, Le/a/p/a/m;->m:Ljava/lang/String;

    .line 28
    iput-object v4, p0, Le/a/p/a/m;->l:Landroid/net/Uri;

    .line 29
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_13

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->lk()V

    .line 30
    :cond_13
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const p2, 0x217bfee6

    if-eq p1, p2, :cond_15

    if-eq p1, v3, :cond_14

    goto :goto_c

    .line 31
    :cond_14
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    sget-object p1, Lcom/truecaller/common/profile/ImageSource;->GOOGLE:Lcom/truecaller/common/profile/ImageSource;

    iput-object p1, p0, Le/a/p/a/m;->k:Lcom/truecaller/common/profile/ImageSource;

    goto :goto_c

    :cond_15
    const-string p1, "Facebook"

    .line 32
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    sget-object p1, Lcom/truecaller/common/profile/ImageSource;->FACEBOOK:Lcom/truecaller/common/profile/ImageSource;

    iput-object p1, p0, Le/a/p/a/m;->k:Lcom/truecaller/common/profile/ImageSource;

    goto :goto_c

    :cond_16
    if-eq p1, v0, :cond_17

    new-array p1, v1, [Ls1/k;

    const-string p2, "EditProflePrefillError"

    .line 33
    invoke-virtual {p0, p2, p3, p1}, Le/a/p/a/m;->Sj(Ljava/lang/String;Ljava/lang/String;[Ls1/k;)V

    .line 34
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_17

    iget-object p2, p0, Le/a/p/a/m;->w:Le/a/p5/c0;

    sget p3, Lcom/truecaller/editprofile/R$string;->ErrorConnectionGeneral:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p2, p3, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "resourceProvider.getStri\u2026g.ErrorConnectionGeneral)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->m(Ljava/lang/String;)V

    :cond_17
    :goto_c
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/p/a/m;->d:Landroid/content/Intent;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "conversion_from_business"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Le/a/p/a/m;->r:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->lk()V

    .line 7
    :cond_1
    iget-object p1, p0, Le/a/p/a/m;->w:Le/a/p5/c0;

    sget v1, Lcom/truecaller/editprofile/R$string;->ProfileEditTitle:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getStri\u2026.string.ProfileEditTitle)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v1

    .line 9
    iget-object v1, v1, Le/a/p/a/m$a;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v1

    .line 11
    iget-object v1, v1, Le/a/p/a/m$a;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    if-eqz v1, :cond_4

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v1

    .line 14
    iget-object v1, v1, Le/a/p/a/m$a;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v1

    .line 16
    iget-object v1, v1, Le/a/p/a/m$a;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    :cond_4
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_5

    invoke-interface {v1, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->o(Ljava/lang/String;)V

    .line 19
    :cond_5
    iget-object p1, p0, Le/a/p/a/m;->w:Le/a/p5/c0;

    .line 20
    sget v1, Lcom/truecaller/editprofile/R$string;->ProfileEditContactSupport:I

    new-array v3, v2, [Ljava/lang/Object;

    .line 21
    iget-object v4, p0, Le/a/p/a/m;->y:Le/a/b0/e/f;

    invoke-interface {v4}, Le/a/b0/e/f;->d()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "support.eu@truecaller.com"

    goto :goto_3

    :cond_6
    const-string v4, "support@truecaller.com"

    :goto_3
    aput-object v4, v3, v0

    .line 22
    invoke-interface {p1, v1, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getStri\u2026ORT_MAIL_NON_EU\n        )"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_7

    invoke-interface {v1, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Cr(Ljava/lang/String;)V

    .line 24
    :cond_7
    iget-object p1, p0, Le/a/p/a/m;->z:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->x()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 25
    new-instance v6, Le/a/p/a/p;

    invoke-direct {v6, p0, v1}, Le/a/p/a/p;-><init>(Le/a/p/a/m;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_4

    .line 26
    :cond_8
    iget-object p1, p0, Le/a/p/a/m;->z:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->n()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_b

    invoke-interface {p1, v2}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Ru(Z)V

    goto :goto_4

    .line 27
    :cond_9
    iget-object p1, p0, Le/a/p/a/m;->z:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->w()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_b

    iget-boolean v3, p0, Le/a/p/a/m;->r:Z

    xor-int/2addr v3, v2

    invoke-interface {p1, v3}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Ru(Z)V

    goto :goto_4

    .line 28
    :cond_a
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_b

    invoke-interface {p1, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Ru(Z)V

    .line 29
    :cond_b
    :goto_4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_c

    iget-object v3, p0, Le/a/p/a/m;->E:Le/a/d4/c;

    sget-object v4, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {v3, v4}, Le/a/d4/c;->d(Le/a/d4/e;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Ax(Z)V

    .line 30
    :cond_c
    invoke-virtual {p0}, Le/a/p/a/m;->ak()V

    .line 31
    invoke-virtual {p0}, Le/a/p/a/m;->Oj()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_d

    move p1, v2

    goto :goto_5

    :cond_d
    move p1, v0

    :goto_5
    if-eqz p1, :cond_f

    .line 32
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Le/a/p/a/m;->Oj()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Xe(Ljava/lang/String;)V

    .line 33
    :cond_e
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_11

    invoke-interface {p1, v2}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Nn(Z)V

    goto :goto_6

    .line 34
    :cond_f
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Gu()V

    .line 35
    :cond_10
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_11

    invoke-interface {p1, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Nn(Z)V

    .line 36
    :cond_11
    :goto_6
    invoke-virtual {p0}, Le/a/p/a/m;->Tj()V

    .line 37
    invoke-virtual {p0}, Le/a/p/a/m;->Zj()V

    .line 38
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v3

    .line 39
    iget-object v3, v3, Le/a/p/a/m$a;->a:Ljava/lang/String;

    .line 40
    invoke-interface {p1, v3}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Tf(Ljava/lang/String;)V

    .line 41
    :cond_12
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v3

    .line 42
    iget-object v3, v3, Le/a/p/a/m$a;->b:Ljava/lang/String;

    .line 43
    invoke-interface {p1, v3}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Hf(Ljava/lang/String;)V

    .line 44
    :cond_13
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v3

    .line 45
    iget-object v3, v3, Le/a/p/a/m$a;->c:Ljava/lang/String;

    .line 46
    invoke-interface {p1, v3}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Yf(Ljava/lang/String;)V

    .line 47
    :cond_14
    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object p1

    .line 48
    iget-object p1, p1, Le/a/p/a/m$a;->k:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_15

    move v3, v2

    goto :goto_7

    :cond_15
    move v3, v0

    :goto_7
    if-eqz v3, :cond_16

    .line 50
    :try_start_0
    iget-object v3, p0, Le/a/p/a/m;->q:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 51
    iput-object p1, p0, Le/a/p/a/m;->j:Ljava/util/Date;

    .line 52
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v3, :cond_16

    iget-object v4, p0, Le/a/p/a/m;->q:Ljava/text/SimpleDateFormat;

    invoke-interface {v3, p1, v4}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Zs(Ljava/util/Date;Ljava/text/DateFormat;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 53
    :catch_0
    iget-object p1, p0, Le/a/p/a/m;->v:Le/a/b0/o/a;

    const-string v3, "profileBirthday"

    invoke-interface {p1, v3}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 54
    :cond_16
    :goto_8
    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object p1

    .line 55
    iget-object p1, p1, Le/a/p/a/m$a;->l:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/truecaller/editprofile/ui/Gender;->valueOf(Ljava/lang/String;)Lcom/truecaller/editprofile/ui/Gender;

    move-result-object p1

    .line 57
    iput-object p1, p0, Le/a/p/a/m;->h:Lcom/truecaller/editprofile/ui/Gender;

    .line 58
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v3, :cond_17

    invoke-virtual {p0, p1}, Le/a/p/a/m;->Nj(Lcom/truecaller/editprofile/ui/Gender;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Kc(Ljava/lang/String;)V

    .line 59
    :cond_17
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v3

    .line 60
    iget-object v3, v3, Le/a/p/a/m$a;->d:Ljava/lang/String;

    .line 61
    invoke-interface {p1, v3}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->dv(Ljava/lang/String;)V

    .line 62
    :cond_18
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v3

    .line 63
    iget-object v3, v3, Le/a/p/a/m$a;->e:Ljava/lang/String;

    .line 64
    invoke-interface {p1, v3}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->jv(Ljava/lang/String;)V

    .line 65
    :cond_19
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v3

    .line 66
    iget-object v3, v3, Le/a/p/a/m$a;->f:Ljava/lang/String;

    .line 67
    invoke-interface {p1, v3}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->ei(Ljava/lang/String;)V

    .line 68
    :cond_1a
    iget-object p1, p0, Le/a/p/a/m;->D:Le/a/p/l;

    .line 69
    iget-object p1, p1, Le/a/p/l;->a:Landroid/content/Context;

    invoke-static {p1}, Le/a/b0/q/j;->h(Landroid/content/Context;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    goto :goto_9

    :cond_1b
    move-object p1, v1

    :goto_9
    if-eqz p1, :cond_1c

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1d

    :cond_1c
    move v0, v2

    :cond_1d
    if-nez v0, :cond_1e

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_1e

    invoke-interface {v0, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Yg(Ljava/lang/String;)V

    .line 71
    :cond_1e
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v0

    .line 72
    iget-object v0, v0, Le/a/p/a/m$a;->g:Ljava/lang/String;

    .line 73
    invoke-interface {p1, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->wp(Ljava/lang/String;)V

    .line 74
    :cond_1f
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v0

    .line 75
    iget-object v0, v0, Le/a/p/a/m$a;->h:Ljava/lang/String;

    .line 76
    invoke-interface {p1, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->vy(Ljava/lang/String;)V

    .line 77
    :cond_20
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v0

    .line 78
    iget-object v0, v0, Le/a/p/a/m$a;->i:Ljava/lang/String;

    .line 79
    invoke-interface {p1, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->ah(Ljava/lang/String;)V

    .line 80
    :cond_21
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v0

    .line 81
    iget-object v0, v0, Le/a/p/a/m$a;->j:Ljava/lang/String;

    .line 82
    invoke-interface {p1, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->he(Ljava/lang/String;)V

    .line 83
    :cond_22
    invoke-virtual {p0}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object p1

    .line 84
    iget-object p1, p1, Le/a/p/a/m$a;->m:Ljava/lang/Long;

    .line 85
    iput-object p1, p0, Le/a/p/a/m;->i:Ljava/lang/Long;

    if-eqz p1, :cond_23

    .line 86
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Le/a/p/a/m;->Ij(J)V

    .line 87
    :cond_23
    new-instance v7, Le/a/p/a/n;

    invoke-direct {v7, p0, v1}, Le/a/p/a/n;-><init>(Le/a/p/a/m;Ls1/w/d;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Yj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "firstName"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lastName"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "email"

    move-object/from16 v4, p3

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "streetAddress"

    move-object/from16 v5, p4

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "zipCode"

    move-object/from16 v6, p5

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "city"

    move-object/from16 v7, p6

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "company"

    move-object/from16 v8, p7

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jobTitle"

    move-object/from16 v9, p8

    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "website"

    move-object/from16 v10, p9

    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bio"

    move-object/from16 v11, p10

    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v13, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v13

    :goto_0
    if-eqz v1, :cond_2

    .line 2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_1

    iget-object v14, v0, Le/a/p/a/m;->w:Le/a/p5/c0;

    sget v15, Lcom/truecaller/editprofile/R$string;->ProfileEditFirstNameInvalid:I

    new-array v12, v13, [Ljava/lang/Object;

    invoke-interface {v14, v15, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "resourceProvider.getStri\u2026fileEditFirstNameInvalid)"

    invoke-static {v12, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v12}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->es(Ljava/lang/String;)V

    .line 3
    :cond_1
    sget-object v1, Lcom/truecaller/editprofile/ui/ErrorField;->FIRST_NAME:Lcom/truecaller/editprofile/ui/ErrorField;

    move v12, v13

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v12, 0x1

    .line 4
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_3

    const/4 v14, 0x1

    goto :goto_2

    :cond_3
    move v14, v13

    :goto_2
    if-eqz v14, :cond_6

    .line 5
    iget-object v12, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v12, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v12, :cond_4

    iget-object v14, v0, Le/a/p/a/m;->w:Le/a/p5/c0;

    sget v15, Lcom/truecaller/editprofile/R$string;->ProfileEditLastNameInvalid:I

    new-array v2, v13, [Ljava/lang/Object;

    invoke-interface {v14, v15, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v14, "resourceProvider.getStri\u2026ofileEditLastNameInvalid)"

    invoke-static {v2, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12, v2}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->ch(Ljava/lang/String;)V

    :cond_4
    if-nez v1, :cond_5

    .line 6
    sget-object v1, Lcom/truecaller/editprofile/ui/ErrorField;->LAST_NAME:Lcom/truecaller/editprofile/ui/ErrorField;

    :cond_5
    move v12, v13

    .line 7
    :cond_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    const/16 v16, 0x1

    goto :goto_3

    :cond_7
    move/from16 v16, v13

    :goto_3
    if-eqz v16, :cond_9

    invoke-static/range {p3 .. p3}, Le/a/p5/s0/f;->o(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 8
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v2, :cond_8

    iget-object v12, v0, Le/a/p/a/m;->w:Le/a/p5/c0;

    sget v14, Lcom/truecaller/editprofile/R$string;->ProfileEditEmailInvalid:I

    new-array v15, v13, [Ljava/lang/Object;

    invoke-interface {v12, v14, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "resourceProvider.getStri\u2026.ProfileEditEmailInvalid)"

    invoke-static {v12, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v12}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->r6(Ljava/lang/String;)V

    :cond_8
    if-nez v1, :cond_a

    .line 9
    sget-object v1, Lcom/truecaller/editprofile/ui/ErrorField;->EMAIL:Lcom/truecaller/editprofile/ui/ErrorField;

    goto :goto_4

    :cond_9
    move v13, v12

    :cond_a
    :goto_4
    if-eqz v1, :cond_b

    .line 10
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v2, :cond_b

    invoke-interface {v2, v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->js(Lcom/truecaller/editprofile/ui/ErrorField;)V

    :cond_b
    if-nez v13, :cond_c

    return-void

    .line 11
    :cond_c
    iget-boolean v1, v0, Le/a/p/a/m;->r:Z

    if-eqz v1, :cond_e

    .line 12
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->iv()V

    :cond_d
    return-void

    .line 13
    :cond_e
    invoke-virtual/range {p0 .. p10}, Le/a/p/a/m;->bk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Zj()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/p/a/m;->C:Le/a/p/c;

    invoke-interface {v0}, Le/a/p/c;->e()Le/a/b0/e/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/b0/e/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v3, p0, Le/a/p/a/m;->w:Le/a/p5/c0;

    sget v4, Lcom/truecaller/editprofile/R$string;->ProfileEditAddSecondaryPhoneNumber:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 4
    :cond_1
    iget-object v3, p0, Le/a/p/a/m;->w:Le/a/p5/c0;

    sget v4, Lcom/truecaller/editprofile/R$string;->ProfileEditSecondaryPhoneNumber:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "if (secondaryPhoneNumber\u2026EditSecondaryPhoneNumber)"

    .line 5
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, ""

    :goto_2
    invoke-interface {v3, v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->sc(Ljava/lang/String;)V

    .line 7
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_5

    invoke-interface {v0, v2}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Xj(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final ak()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/p/a/m;->z:Le/a/u3/g;

    .line 2
    iget-object v2, v1, Le/a/u3/g;->x3:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0xe9

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->md(Z)V

    :cond_0
    return-void
.end method

.method public final bk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v13, p0

    .line 1
    iget-object v0, v13, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Mv()V

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, v13, Le/a/p/a/m;->p:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 3
    new-instance v16, Le/a/p/a/m$c;

    const/4 v12, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Le/a/p/a/m$c;-><init>(Le/a/p/a/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, v14

    move-object/from16 p3, v15

    move-object/from16 p4, v16

    move/from16 p5, v0

    move-object/from16 p6, v1

    invoke-static/range {p1 .. p6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/p/a/m;->e:Le/a/r2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/r2/a;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/p/a/m;->e:Le/a/r2/a;

    return-void
.end method
