.class public final Le/a/g/j/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e0/c;


# instance fields
.field public final a:Le/a/h0/m;

.field public final b:Le/a/a/k0;

.field public final c:Le/a/l/t2/d;

.field public final d:Lcom/truecaller/settings/CallingSettings;

.field public final e:Le/a/l/a2;


# direct methods
.method public constructor <init>(Le/a/h0/m;Le/a/a/k0;Le/a/l/t2/d;Lcom/truecaller/settings/CallingSettings;Le/a/l/a2;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "filterSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smsPermissionPromoManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportSpamPromoManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumScreenNavigator"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/j/m0;->a:Le/a/h0/m;

    iput-object p2, p0, Le/a/g/j/m0;->b:Le/a/a/k0;

    iput-object p3, p0, Le/a/g/j/m0;->c:Le/a/l/t2/d;

    iput-object p4, p0, Le/a/g/j/m0;->d:Lcom/truecaller/settings/CallingSettings;

    iput-object p5, p0, Le/a/g/j/m0;->e:Le/a/l/a2;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/g/j/m0;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "afterCallWarnFriends"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/truecaller/settings/CallingSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
