.class public final Le/a/a/m/f3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/settings/CallingSettings;

.field public final b:Le/a/i4/o;

.field public final c:Le/a/a/m/o2;


# direct methods
.method public constructor <init>(Lcom/truecaller/settings/CallingSettings;Le/a/i4/o;Le/a/a/m/o2;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callingSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationHandlerUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unimportantPromoManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/m/f3/e;->a:Lcom/truecaller/settings/CallingSettings;

    iput-object p2, p0, Le/a/a/m/f3/e;->b:Le/a/i4/o;

    iput-object p3, p0, Le/a/a/m/f3/e;->c:Le/a/a/m/o2;

    return-void
.end method
