.class public Le/a/x/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/x/c0;


# direct methods
.method public constructor <init>(Le/a/x/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/x/b0;->a:Le/a/x/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/x/b0;->a:Le/a/x/c0;

    .line 2
    iget-boolean v0, p1, Le/a/x/c0;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/x/c0;->c:Z

    .line 4
    invoke-virtual {p1}, Le/a/x/c0;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/x/d;

    check-cast p1, Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;

    invoke-interface {v0, p1}, Le/a/x/d;->W(Lcom/truecaller/ghost_call/GhostCallAlarmPermissionActivity;)V

    :cond_0
    return-void
.end method
