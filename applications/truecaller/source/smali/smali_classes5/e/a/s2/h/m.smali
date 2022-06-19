.class public Le/a/s2/h/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/s2/h/n;


# direct methods
.method public constructor <init>(Le/a/s2/h/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/s2/h/m;->a:Le/a/s2/h/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/s2/h/m;->a:Le/a/s2/h/n;

    .line 2
    iget-boolean v0, p1, Le/a/s2/h/n;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/s2/h/n;->c:Z

    .line 4
    invoke-virtual {p1}, Le/a/s2/h/n;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/h/f;

    check-cast p1, Lcom/truecaller/announce_caller_id/settings/AnnounceCallerIdSettingsActivity;

    invoke-interface {v0, p1}, Le/a/s2/h/f;->i0(Lcom/truecaller/announce_caller_id/settings/AnnounceCallerIdSettingsActivity;)V

    :cond_0
    return-void
.end method
