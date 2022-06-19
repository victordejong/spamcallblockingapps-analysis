.class public final Le/a/a/m/f3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/a/m/o2;

.field public final b:Le/a/p5/a0;

.field public final c:Lcom/truecaller/settings/CallingSettings;


# direct methods
.method public constructor <init>(Le/a/a/m/o2;Le/a/p5/a0;Lcom/truecaller/settings/CallingSettings;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "unimportantPromoManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/m/f3/g;->a:Le/a/a/m/o2;

    iput-object p2, p0, Le/a/a/m/f3/g;->b:Le/a/p5/a0;

    iput-object p3, p0, Le/a/a/m/f3/g;->c:Lcom/truecaller/settings/CallingSettings;

    return-void
.end method
