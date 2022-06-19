.class public final Le/a/b/a/h/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/h/a/c;


# instance fields
.field public final a:Le/a/b/a/h/b/a;


# direct methods
.method public constructor <init>(Le/a/b/a/h/b/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "subPlaceRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/a/h/a/d;->a:Le/a/b/a/h/b/a;

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/truecaller/placepicker/data/GeocodedPlace;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/b/a/h/a/d;->a:Le/a/b/a/h/b/a;

    invoke-interface {v0, p1}, Le/a/b/a/h/b/a;->a(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
