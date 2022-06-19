.class public final Le/a/v/n/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v/o/b;


# instance fields
.field public final a:Le/a/b0/q/z;


# direct methods
.method public constructor <init>(Le/a/b0/q/z;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "phoneNumberHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v/n/b;->a:Le/a/b0/q/z;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "normalizedNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/n/b;->a:Le/a/b0/q/z;

    const-string v1, "-1"

    .line 2
    invoke-static {p2, v0, v1}, Lcom/truecaller/data/entity/messaging/Participant;->d(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p2

    const-string v0, "Participant.buildFromNum\u2026M_TOKEN_UNKNOWN\n        )"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "participants"

    .line 4
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "launch_source"

    const-string v1, "detailView"

    .line 5
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/truecaller/data/entity/Contact;)V
    .locals 15

    move-object/from16 v0, p1

    const-string v1, "activity"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "contact"

    move-object/from16 v4, p2

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Le/a/h/s0/c;->f:Le/a/h/s0/c$a;

    .line 2
    move-object v3, v0

    check-cast v3, Ln3/r/a/l;

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v5

    const-string v0, "contact.numbers"

    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v11, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v12, "detailView"

    const/4 v13, 0x0

    const/16 v14, 0x400

    .line 5
    invoke-static/range {v2 .. v14}, Le/a/h/s0/c$a;->a(Le/a/h/s0/c$a;Ln3/r/a/l;Lcom/truecaller/data/entity/Contact;Ljava/util/List;ZZZZZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;Ljava/lang/String;ZI)V

    return-void
.end method
