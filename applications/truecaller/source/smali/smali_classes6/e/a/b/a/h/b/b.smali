.class public final Le/a/b/a/h/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/h/b/a;


# instance fields
.field public final a:Le/a/k4/o/g;

.field public final b:Le/a/b/a/f/f;

.field public final c:Le/a/p5/c0;

.field public final d:Le/a/b/a/g/g;


# direct methods
.method public constructor <init>(Le/a/k4/o/g;Le/a/b/a/f/f;Le/a/p5/c0;Le/a/b/a/g/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "placeRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geolocationRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispacherProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/a/h/b/b;->a:Le/a/k4/o/g;

    iput-object p2, p0, Le/a/b/a/h/b/b;->b:Le/a/b/a/f/f;

    iput-object p3, p0, Le/a/b/a/h/b/b;->c:Le/a/p5/c0;

    iput-object p4, p0, Le/a/b/a/h/b/b;->d:Le/a/b/a/g/g;

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/truecaller/placepicker/data/GeocodedPlace;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/b/a/h/b/b;->d:Le/a/b/a/g/g;

    invoke-interface {v0}, Le/a/b/a/g/g;->a()Lq3/a/g0;

    move-result-object v0

    new-instance v1, Le/a/b/a/h/b/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/b/a/h/b/b$a;-><init>(Le/a/b/a/h/b/b;ILs1/w/d;)V

    const-wide/16 v2, 0x0

    const/4 p1, 0x2

    invoke-static {v0, v2, v3, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->M0(Ls1/w/f;JLs1/z/b/p;I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
