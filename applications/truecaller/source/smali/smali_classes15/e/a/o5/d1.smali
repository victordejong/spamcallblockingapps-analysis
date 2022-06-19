.class public Le/a/o5/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/x0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/o5/d1$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/o5/d1;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->s()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/o5/d1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/o5/d1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Le/a/o5/d1$a;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o5/d1$a;

    .line 2
    invoke-interface {v0}, Le/a/o5/d1$a;->o()Le/a/x3/a;

    move-result-object v0

    iget-object v1, p0, Le/a/o5/d1;->a:Landroid/content/Context;

    iget-object v2, p0, Le/a/o5/d1;->b:Ljava/lang/String;

    const-string v3, "notificationsList"

    .line 3
    invoke-interface {v0, v1, v2, v3}, Le/a/x3/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
