.class public final Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker;
.super Lcom/truecaller/background_work/TrackedWorker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 &2\u00020\u0001:\u0001\u0019B\u0017\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\u00088\u0016@\u0016X\u0097.\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0016@\u0016X\u0097.\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker;",
        "Lcom/truecaller/background_work/TrackedWorker;",
        "",
        "q",
        "()Z",
        "Landroidx/work/ListenableWorker$a;",
        "r",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/q2/a;",
        "b",
        "Le/a/q2/a;",
        "n",
        "()Le/a/q2/a;",
        "setAnalytics",
        "(Le/a/q2/a;)V",
        "analytics",
        "Le/a/u3/g;",
        "c",
        "Le/a/u3/g;",
        "o",
        "()Le/a/u3/g;",
        "setFeaturesRegistry",
        "(Le/a/u3/g;)V",
        "featuresRegistry",
        "Le/a/a/k/a/f2/a;",
        "a",
        "Le/a/a/k/a/f2/a;",
        "getMigrator",
        "()Le/a/a/k/a/f2/a;",
        "setMigrator",
        "(Le/a/a/k/a/f2/a;)V",
        "migrator",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "d",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final d:Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker$a;


# instance fields
.field public a:Le/a/a/k/a/f2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/u3/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker;->d:Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/background_work/TrackedWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    sget-object p1, Le/a/k2;->a:Le/a/k2$a;

    invoke-virtual {p1}, Le/a/k2$a;->a()Le/a/k2;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/k2;->D(Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker;)V

    return-void
.end method


# virtual methods
.method public n()Le/a/q2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker;->b:Le/a/q2/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o()Le/a/u3/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker;->c:Le/a/u3/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "featuresRegistry"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker;->a:Le/a/a/k/a/f2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/k/a/f2/a;->a()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "migrator"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public r()Landroidx/work/ListenableWorker$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker;->a:Le/a/a/k/a/f2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/k/a/f2/a;->b()V

    .line 2
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "migrator"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
