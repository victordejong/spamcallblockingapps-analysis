.class public final Le/a/b/a/h/b/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/h/b/b;->a(I)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ln3/v/g0<",
        "Lcom/truecaller/placepicker/data/GeocodedPlace;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.newBusiness.editAddress.model.SubPlaceRepositoryImpl$getPincodePlace$1"
    f = "SubPlaceRepositoryImpl.kt"
    l = {
        0x18,
        0x1a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/b/a/h/b/b;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Le/a/b/a/h/b/b;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/h/b/b$a;->g:Le/a/b/a/h/b/b;

    iput p2, p0, Le/a/b/a/h/b/b$a;->h:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance v0, Le/a/b/a/h/b/b$a;

    iget-object v1, p0, Le/a/b/a/h/b/b$a;->g:Le/a/b/a/h/b/b;

    iget v2, p0, Le/a/b/a/h/b/b$a;->h:I

    invoke-direct {v0, v1, v2, p2}, Le/a/b/a/h/b/b$a;-><init>(Le/a/b/a/h/b/b;ILs1/w/d;)V

    iput-object p1, v0, Le/a/b/a/h/b/b$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b/a/h/b/b$a;

    iget-object v1, p0, Le/a/b/a/h/b/b$a;->g:Le/a/b/a/h/b/b;

    iget v2, p0, Le/a/b/a/h/b/b$a;->h:I

    invoke-direct {v0, v1, v2, p2}, Le/a/b/a/h/b/b$a;-><init>(Le/a/b/a/h/b/b;ILs1/w/d;)V

    iput-object p1, v0, Le/a/b/a/h/b/b$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/b/a/h/b/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/b/a/h/b/b$a;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/b/a/h/b/b$a;->e:Ljava/lang/Object;

    check-cast v1, Ln3/v/g0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/b/a/h/b/b$a;->e:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ln3/v/g0;

    .line 4
    iget-object p1, p0, Le/a/b/a/h/b/b$a;->g:Le/a/b/a/h/b/b;

    .line 5
    iget-object p1, p1, Le/a/b/a/h/b/b;->b:Le/a/b/a/f/f;

    .line 6
    iget v4, p0, Le/a/b/a/h/b/b$a;->h:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Le/a/b/a/f/f;->a(Ljava/lang/String;)Lcom/truecaller/placepicker/data/GeocodedPlace;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-object p1, p0, Le/a/b/a/h/b/b$a;->g:Le/a/b/a/h/b/b;

    .line 8
    iget-object p1, p1, Le/a/b/a/h/b/b;->c:Le/a/p5/c0;

    .line 9
    sget v4, Lcom/truecaller/bizmon/R$string;->google_maps_api_key:I

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p1, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "resourceProvider.getStri\u2026ring.google_maps_api_key)"

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "<set-?>"

    .line 10
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sput-object p1, Le/a/k4/c;->a:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Le/a/b/a/h/b/b$a;->g:Le/a/b/a/h/b/b;

    .line 13
    iget-object p1, p1, Le/a/b/a/h/b/b;->a:Le/a/k4/o/g;

    .line 14
    iget v4, p0, Le/a/b/a/h/b/b$a;->h:I

    iput-object v1, p0, Le/a/b/a/h/b/b$a;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/b/a/h/b/b$a;->f:I

    invoke-interface {p1, v4, p0}, Le/a/k4/o/g;->a(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Lcom/truecaller/placepicker/data/GeocodedPlace;

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    new-instance p1, Lcom/truecaller/placepicker/data/GeocodedPlace;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xff

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Lcom/truecaller/placepicker/data/GeocodedPlace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_2
    const/4 v3, 0x0

    iput-object v3, p0, Le/a/b/a/h/b/b$a;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/b/a/h/b/b$a;->f:I

    invoke-interface {v1, p1, p0}, Ln3/v/g0;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 16
    :cond_6
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
