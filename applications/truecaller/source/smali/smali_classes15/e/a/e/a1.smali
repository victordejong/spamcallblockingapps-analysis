.class public Le/a/e/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/e/b1;


# direct methods
.method public constructor <init>(Le/a/e/b1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/a1;->a:Le/a/e/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/a1;->a:Le/a/e/b1;

    .line 2
    iget-boolean v0, p1, Le/a/e/b1;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/e/b1;->i:Z

    .line 4
    invoke-virtual {p1}, Le/a/e/b1;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e/i1;

    check-cast p1, Lcom/truecaller/ui/NotificationAccessActivity;

    invoke-interface {v0, p1}, Le/a/e/i1;->y(Lcom/truecaller/ui/NotificationAccessActivity;)V

    :cond_0
    return-void
.end method
