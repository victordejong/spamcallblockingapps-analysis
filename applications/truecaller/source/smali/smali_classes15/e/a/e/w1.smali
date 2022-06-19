.class public final Le/a/e/w1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/w1$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/r5/i0;

.field public final b:Le/a/j4/b/a/f;

.field public final c:Le/a/l/p2/a0;

.field public final d:Le/a/l/p2/i;

.field public final e:Le/a/l/o2/c;

.field public final f:Ls1/w/f;

.field public final g:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/r5/i0;Le/a/j4/b/a/f;Le/a/l/p2/a0;Le/a/l/p2/i;Le/a/l/o2/c;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p7    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "whoViewedMeManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumBlockingFeaturesLostNotifier"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendUpgradedNotifier"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumablePurchaseLostNotifier"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/w1;->a:Le/a/r5/i0;

    iput-object p2, p0, Le/a/e/w1;->b:Le/a/j4/b/a/f;

    iput-object p3, p0, Le/a/e/w1;->c:Le/a/l/p2/a0;

    iput-object p4, p0, Le/a/e/w1;->d:Le/a/l/p2/i;

    iput-object p5, p0, Le/a/e/w1;->e:Le/a/l/o2/c;

    iput-object p6, p0, Le/a/e/w1;->f:Ls1/w/f;

    iput-object p7, p0, Le/a/e/w1;->g:Ls1/w/f;

    return-void
.end method
