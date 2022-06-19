.class public final Le/a/a/m/g3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/a/m/o2;

.field public final c:Le/a/d4/c;


# direct methods
.method public constructor <init>(Le/a/a/m/o2;Le/a/d4/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "unimportantPromoManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/m/g3/f;->b:Le/a/a/m/o2;

    iput-object p2, p0, Le/a/a/m/g3/f;->c:Le/a/d4/c;

    .line 2
    new-instance p1, Le/a/a/m/g3/f$a;

    invoke-direct {p1, p0}, Le/a/a/m/g3/f$a;-><init>(Le/a/a/m/g3/f;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/m/g3/f;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/PendingIntent;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/m/g3/f;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d4/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/a/m/g3/f;->c:Le/a/d4/c;

    .line 3
    invoke-interface {v1, v0}, Le/a/d4/c;->b(Le/a/d4/e;)I

    move-result v2

    const/4 v3, 0x0

    .line 4
    invoke-interface {v1, v0, v2, v3}, Le/a/d4/c;->a(Le/a/d4/e;II)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    return-object v0
.end method
