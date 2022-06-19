.class public final Le/a/b/b/a/i;
.super Le/a/u2/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/b/b/a/g;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public d:Lcom/google/android/gms/maps/model/LatLng;

.field public e:Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;

.field public final f:Le/a/b/l/a;

.field public final g:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/b/l/a;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ui"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/b/b/a/i;->f:Le/a/b/l/a;

    iput-object p2, p0, Le/a/b/b/a/i;->g:Ls1/w/f;

    return-void
.end method

.method public static final Ij(Le/a/b/b/a/i;Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;)V
    .locals 4

    .line 1
    iput-object p1, p0, Le/a/b/b/a/i;->e:Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/a/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;->getStreet()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;->getZipCode()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;->getCity()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object p0, p0, Le/a/b/b/a/i;->f:Le/a/b/l/a;

    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Le/a/b/l/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-interface {v0, v1, v2, v3, p0}, Le/a/b/b/a/g;->v4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
