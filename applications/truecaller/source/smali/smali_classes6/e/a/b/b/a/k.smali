.class public final Le/a/b/b/a/k;
.super Le/a/u2/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/b/b/a/j;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public b:Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/android/gms/maps/model/LatLng;

.field public final e:Le/a/b/l/a;


# direct methods
.method public constructor <init>(Le/a/b/l/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/b/b/a/k;->e:Le/a/b/l/a;

    return-void
.end method
