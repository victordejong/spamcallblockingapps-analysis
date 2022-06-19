.class public Le/a/d/b/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/d/b/b/a/c;


# direct methods
.method public constructor <init>(Le/a/d/b/b/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/d/b/b/a/b;->a:Le/a/d/b/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/d/b/b/a/b;->a:Le/a/d/b/b/a/c;

    .line 2
    iget-boolean v0, p1, Le/a/d/b/b/a/c;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/d/b/b/a/c;->c:Z

    .line 4
    invoke-virtual {p1}, Le/a/d/b/b/a/c;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/b/b/a/e;

    check-cast p1, Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity;

    invoke-interface {v0, p1}, Le/a/d/b/b/a/e;->j(Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity;)V

    :cond_0
    return-void
.end method
