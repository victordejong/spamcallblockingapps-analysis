.class public final Le/a/l/p2/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/b0/o/a;

.field public final c:Le/a/i4/e;

.field public final d:Le/a/l/a2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/o/a;Le/a/i4/e;Le/a/l/a2;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumScreenNavigator"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/a0;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/l/p2/a0;->b:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/l/p2/a0;->c:Le/a/i4/e;

    iput-object p4, p0, Le/a/l/p2/a0;->d:Le/a/l/a2;

    return-void
.end method
