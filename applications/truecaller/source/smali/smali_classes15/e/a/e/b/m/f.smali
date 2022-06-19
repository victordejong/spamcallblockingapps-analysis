.class public final Le/a/e/b/m/f;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/m/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/e/b/m/e;",
        ">;",
        "Le/a/e/b/m/c;"
    }
.end annotation


# instance fields
.field public final b:Le/a/e/b/g;

.field public final c:Le/a/n/e;

.field public final d:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final e:Le/a/e/b/m/d;


# direct methods
.method public constructor <init>(Le/a/e/b/m/b;Le/a/e/b/g;Le/a/n/e;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/e/b/m/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "mainSettingsHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settingsUIPref"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "backupAvailabilityProvider"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callRecordingManager"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "router"

    invoke-static {p5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p2, p0, Le/a/e/b/m/f;->b:Le/a/e/b/g;

    iput-object p3, p0, Le/a/e/b/m/f;->c:Le/a/n/e;

    iput-object p4, p0, Le/a/e/b/m/f;->d:Lcom/truecaller/callrecording/CallRecordingManager;

    iput-object p5, p0, Le/a/e/b/m/f;->e:Le/a/e/b/m/d;

    return-void
.end method


# virtual methods
.method public Gc(Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;)V
    .locals 7

    const-string v0, "settingsCategory"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/e/b/m/f;->e:Le/a/e/b/m/d;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Le/a/e/a2;->h0(Le/a/e/b/m/d;Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public t4()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/m/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/e/b/m/f;->b:Le/a/e/b/g;

    invoke-interface {v1}, Le/a/e/b/g;->a()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/m/e;->wk(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/e/b/m/f;->b:Le/a/e/b/g;

    invoke-interface {v0}, Le/a/e/b/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/e/b/m/f;->c:Le/a/n/e;

    invoke-interface {v0}, Le/a/n/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/m/e;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Le/a/e/b/m/e;->fy(Z)V

    :cond_2
    return-void
.end method
