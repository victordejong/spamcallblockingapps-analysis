.class public final Le/a/d5/g/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d5/g/l;


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

.field public final c:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d5/g/m;->c:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V
    .locals 9

    .line 1
    iget-object v1, p0, Le/a/d5/g/m;->b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    if-eqz v1, :cond_0

    .line 2
    iget-object v7, p0, Le/a/d5/g/m;->c:Le/a/q2/a;

    .line 3
    new-instance v8, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    iget-object v5, p0, Le/a/d5/g/m;->a:Ljava/lang/Boolean;

    const/16 v6, 0xc

    move-object v0, v8

    move-object v2, p1

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;-><init>(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    .line 6
    invoke-interface {v7, v8}, Le/a/q2/a;->b(Le/a/q2/v;)V

    :cond_0
    return-void
.end method
