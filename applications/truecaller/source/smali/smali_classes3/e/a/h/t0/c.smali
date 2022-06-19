.class public final Le/a/h/t0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/t0/b;


# instance fields
.field public final a:Lcom/truecaller/settings/CallingSettings;

.field public final b:Le/a/u3/g;

.field public final c:Le/a/p5/g;

.field public final d:Le/a/p5/a0;

.field public final e:Le/a/b0/e/l;


# direct methods
.method public constructor <init>(Lcom/truecaller/settings/CallingSettings;Le/a/u3/g;Le/a/p5/g;Le/a/p5/a0;Le/a/b0/e/l;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callingSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/t0/c;->a:Lcom/truecaller/settings/CallingSettings;

    iput-object p2, p0, Le/a/h/t0/c;->b:Le/a/u3/g;

    iput-object p3, p0, Le/a/h/t0/c;->c:Le/a/p5/g;

    iput-object p4, p0, Le/a/h/t0/c;->d:Le/a/p5/a0;

    iput-object p5, p0, Le/a/h/t0/c;->e:Le/a/b0/e/l;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/t0/c;->a:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "whatsAppCallsDetected"

    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h/t0/c;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->m:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/a/h/t0/c;->c:Le/a/p5/g;

    const-string v2, "com.whatsapp"

    invoke-interface {v0, v2}, Le/a/p5/g;->y(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/h/t0/c;->e:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    return v1
.end method

.method public isEnabled()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/h/t0/c;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/h/t0/c;->d:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/h/t0/c;->a:Lcom/truecaller/settings/CallingSettings;

    const/4 v1, 0x1

    const-string v2, "whatsAppCallsEnabled"

    invoke-interface {v0, v2, v1}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
