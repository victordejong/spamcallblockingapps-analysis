.class public final Le/a/e/b/i/d;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/e/b/i/c;",
        ">;",
        "Le/a/e/b/i/d;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Lcom/truecaller/settings/CallingSettings;


# direct methods
.method public constructor <init>(Ls1/w/f;Lcom/truecaller/settings/CallingSettings;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/e/b/i/d;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/e/b/i/d;->e:Lcom/truecaller/settings/CallingSettings;

    return-void
.end method


# virtual methods
.method public Ij(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "analyticsContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setting"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Context"

    .line 2
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Setting"

    .line 3
    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "State"

    .line 4
    invoke-interface {v3, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p1

    const-string p2, "TrueApp.getApp()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v6, p1, Lcom/truecaller/TrueApp;->d:Le/a/q2/a;

    const/4 v4, 0x0

    const-string v1, "SettingChanged"

    const-string v5, "event.build()"

    move-object v2, v4

    .line 7
    invoke-static/range {v1 .. v6}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public Jj(Lcom/truecaller/ui/settings/appearance/ThemeType;)V
    .locals 1

    const-string v0, "themeType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/i/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/e/b/i/c;->v(Lcom/truecaller/ui/settings/appearance/ThemeType;)V

    :cond_0
    return-void
.end method
