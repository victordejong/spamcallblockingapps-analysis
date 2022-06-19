.class public final Le/a/b/a/c/a/e0/f$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/c/a/e0/f$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/truecaller/placepicker/data/GeocodedPlace;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.newBusiness.onboarding.ui.presenters.LocationFormPresenter$validatePincode$1$1"
    f = "LocationFormPresenter.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/b/a/c/a/e0/f$a;


# direct methods
.method public constructor <init>(Le/a/b/a/c/a/e0/f$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/c/a/e0/f$a$a;->g:Le/a/b/a/c/a/e0/f$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b/a/c/a/e0/f$a$a;

    iget-object v1, p0, Le/a/b/a/c/a/e0/f$a$a;->g:Le/a/b/a/c/a/e0/f$a;

    invoke-direct {v0, v1, p2}, Le/a/b/a/c/a/e0/f$a$a;-><init>(Le/a/b/a/c/a/e0/f$a;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/a/c/a/e0/f$a$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b/a/c/a/e0/f$a$a;

    iget-object v1, p0, Le/a/b/a/c/a/e0/f$a$a;->g:Le/a/b/a/c/a/e0/f$a;

    invoke-direct {v0, v1, p2}, Le/a/b/a/c/a/e0/f$a$a;-><init>(Le/a/b/a/c/a/e0/f$a;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/a/c/a/e0/f$a$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/b/a/c/a/e0/f$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/b/a/c/a/e0/f$a$a;->f:I

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

    iget-object p1, p0, Le/a/b/a/c/a/e0/f$a$a;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-object p1, p0, Le/a/b/a/c/a/e0/f$a$a;->g:Le/a/b/a/c/a/e0/f$a;

    iget-object v1, p1, Le/a/b/a/c/a/e0/f$a;->g:Le/a/b/a/c/a/e0/f;

    .line 5
    iget-object v1, v1, Le/a/b/a/c/a/e0/f;->p:Le/a/b/a/f/f;

    .line 6
    iget-object p1, p1, Le/a/b/a/c/a/e0/f$a;->h:Ljava/lang/String;

    invoke-interface {v1, p1}, Le/a/b/a/f/f;->a(Ljava/lang/String;)Lcom/truecaller/placepicker/data/GeocodedPlace;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/b/a/c/a/e0/f$a$a;->g:Le/a/b/a/c/a/e0/f$a;

    iget-object p1, p1, Le/a/b/a/c/a/e0/f$a;->g:Le/a/b/a/c/a/e0/f;

    .line 8
    iget-object p1, p1, Le/a/b/a/c/a/e0/f;->o:Le/a/p5/c0;

    .line 9
    sget v1, Lcom/truecaller/bizmon/R$string;->google_maps_api_key:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v1, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getStri\u2026ring.google_maps_api_key)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "<set-?>"

    .line 10
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sput-object p1, Le/a/k4/c;->a:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Le/a/b/a/c/a/e0/f$a$a;->g:Le/a/b/a/c/a/e0/f$a;

    iget-object v1, p1, Le/a/b/a/c/a/e0/f$a;->g:Le/a/b/a/c/a/e0/f;

    .line 13
    iget-object v1, v1, Le/a/b/a/c/a/e0/f;->m:Le/a/k4/o/g;

    .line 14
    iget-object p1, p1, Le/a/b/a/c/a/e0/f$a;->h:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput v2, p0, Le/a/b/a/c/a/e0/f$a$a;->f:I

    invoke-interface {v1, p1, p0}, Le/a/k4/o/g;->a(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lcom/truecaller/placepicker/data/GeocodedPlace;

    :goto_1
    return-object p1
.end method
