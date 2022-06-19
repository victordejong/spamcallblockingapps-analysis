.class public final Le/a/l/p2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/o5/f0;

.field public final b:Landroid/content/ContentResolver;

.field public final c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l4/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/u3/g;

.field public final e:Le/a/s4/a;

.field public final f:Le/a/l/p2/h;

.field public final g:Le/a/l/p2/k;


# direct methods
.method public constructor <init>(Le/a/o5/f0;Landroid/content/ContentResolver;Le/a/r2/f;Le/a/u3/g;Le/a/s4/a;Le/a/l/p2/h;Le/a/l/p2/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/o5/f0;",
            "Landroid/content/ContentResolver;",
            "Le/a/r2/f<",
            "Le/a/l4/h;",
            ">;",
            "Le/a/u3/g;",
            "Le/a/s4/a;",
            "Le/a/l/p2/h;",
            "Le/a/l/p2/k;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenceManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfig"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendUpgradedNotificationManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendUpgradedPromoRepository"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/d;->a:Le/a/o5/f0;

    iput-object p2, p0, Le/a/l/p2/d;->b:Landroid/content/ContentResolver;

    iput-object p3, p0, Le/a/l/p2/d;->c:Le/a/r2/f;

    iput-object p4, p0, Le/a/l/p2/d;->d:Le/a/u3/g;

    iput-object p5, p0, Le/a/l/p2/d;->e:Le/a/s4/a;

    iput-object p6, p0, Le/a/l/p2/d;->f:Le/a/l/p2/h;

    iput-object p7, p0, Le/a/l/p2/d;->g:Le/a/l/p2/k;

    return-void
.end method
