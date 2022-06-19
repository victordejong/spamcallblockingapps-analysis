.class public Le/a/e/a/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/e/a/s2;


# direct methods
.method public constructor <init>(Le/a/e/a/s2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/a/r2;->a:Le/a/e/a/s2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/a/r2;->a:Le/a/e/a/s2;

    .line 2
    iget-boolean v0, p1, Le/a/e/a/s2;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/e/a/s2;->c:Z

    .line 4
    invoke-virtual {p1}, Le/a/e/a/s2;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e/a/h3;

    check-cast p1, Lcom/truecaller/ui/dialogs/QMTracingActivity;

    invoke-interface {v0, p1}, Le/a/e/a/h3;->F(Lcom/truecaller/ui/dialogs/QMTracingActivity;)V

    :cond_0
    return-void
.end method
