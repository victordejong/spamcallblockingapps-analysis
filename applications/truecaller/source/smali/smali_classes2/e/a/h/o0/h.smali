.class public final Le/a/h/o0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/o0/g;


# instance fields
.field public final a:Le/a/e3/a;

.field public final b:Lcom/truecaller/settings/CallingSettings;


# direct methods
.method public constructor <init>(Le/a/e3/a;Lcom/truecaller/settings/CallingSettings;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callAlert"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/o0/h;->a:Le/a/e3/a;

    iput-object p2, p0, Le/a/h/o0/h;->b:Lcom/truecaller/settings/CallingSettings;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "normalizedNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/o0/h;->a:Le/a/e3/a;

    invoke-interface {v0, p1}, Le/a/e3/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "notification"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Le/a/h/o0/h;->b:Lcom/truecaller/settings/CallingSettings;

    const-string v3, "showIncomingCallNotifications"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2
    iget-object v3, v0, Le/a/h/o0/h;->a:Le/a/e3/a;

    .line 3
    new-instance v15, Le/a/e3/e/a;

    .line 4
    iget-object v4, v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    iget-object v4, v4, Le/a/f4/f/c$a;->a:Le/a/f4/f/c$a$a;

    iget-wide v4, v4, Le/a/f4/f/c$a$a;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "notificationId"

    .line 5
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->o()Ljava/lang/String;

    move-result-object v7

    const-string v4, "fn"

    .line 7
    invoke-virtual {v1, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "ln"

    .line 8
    invoke-virtual {v1, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "ci"

    .line 9
    invoke-virtual {v1, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "cc"

    .line 10
    invoke-virtual {v1, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->p()Ljava/lang/Long;

    move-result-object v12

    const-string v4, "bl"

    .line 12
    invoke-virtual {v1, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "vi"

    .line 13
    invoke-virtual {v1, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "vu"

    .line 14
    invoke-virtual {v1, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v4, "vs"

    .line 15
    invoke-virtual {v1, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v17, 0x0

    if-eqz v4, :cond_0

    .line 16
    invoke-static {v4}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v18, v4

    goto :goto_0

    :cond_0
    move-object/from16 v18, v17

    :goto_0
    const-string v4, "vd"

    .line 17
    invoke-virtual {v1, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 18
    invoke-static {v4}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v17, v4

    :cond_1
    const-string v4, "vci"

    .line 19
    invoke-virtual {v1, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v4, "vm"

    .line 20
    invoke-virtual {v1, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v4, v15

    move-object v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v1

    .line 22
    invoke-direct/range {v4 .. v19}, Le/a/e3/e/a;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 23
    invoke-interface {v3, v0, v2}, Le/a/e3/a;->g(Le/a/e3/e/a;Z)V

    return-void
.end method
