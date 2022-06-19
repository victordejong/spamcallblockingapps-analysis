.class public final Le/a/s2/h/a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/s2/h/d;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Le/a/s2/h/d;Z)V
    .locals 0

    iput-object p1, p0, Le/a/s2/h/a;->b:Le/a/s2/h/d;

    iput-boolean p2, p0, Le/a/s2/h/a;->c:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s2/h/a;->b:Le/a/s2/h/d;

    .line 2
    iget-object v0, v0, Le/a/s2/h/d;->b:Le/a/s2/h/e;

    .line 3
    iget-boolean v1, p0, Le/a/s2/h/a;->c:Z

    invoke-interface {v0, v1}, Le/a/s2/h/e;->e0(Z)V

    .line 4
    iget-boolean v0, p0, Le/a/s2/h/a;->c:Z

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;->HEADSET_ENABLED:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;->HEADSET_DISABLED:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;

    .line 7
    :goto_0
    iget-object v1, p0, Le/a/s2/h/a;->b:Le/a/s2/h/d;

    .line 8
    iget-object v1, v1, Le/a/s2/h/d;->d:Le/a/s2/g/a;

    .line 9
    invoke-interface {v1, v0}, Le/a/s2/g/a;->n(Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;)V

    .line 10
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
