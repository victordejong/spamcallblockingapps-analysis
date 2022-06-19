.class public final Le/a/e/a/z2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/z2;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/a/z2;


# direct methods
.method public constructor <init>(Le/a/e/a/z2;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/z2$b;->a:Le/a/e/a/z2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 33

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/e/a/z2$b;->a:Le/a/e/a/z2;

    .line 2
    sget-object v2, Le/a/e/a/z2;->i:[Ls1/a/l;

    .line 3
    invoke-virtual {v1}, Le/a/e/a/z2;->QA()Le/a/m3/u;

    move-result-object v2

    iget-object v2, v2, Le/a/m3/u;->c:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v3, "binding.messageString"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Le/a/e/a/z2;->QA()Le/a/m3/u;

    move-result-object v1

    iget-object v1, v1, Le/a/m3/u;->a:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v3, "binding.addressString"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v3, v0, Le/a/e/a/z2$b;->a:Le/a/e/a/z2;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v9, 0x1

    if-nez v4, :cond_0

    move v4, v9

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-nez v4, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    move v5, v9

    :cond_1
    if-eqz v5, :cond_2

    goto/16 :goto_3

    .line 8
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    new-instance v5, Ls1/d0/c;

    const/16 v6, 0x41

    const/16 v7, 0x5a

    invoke-direct {v5, v6, v7}, Ls1/d0/c;-><init>(CC)V

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ls1/c0/c;->b:Ls1/c0/c$a;

    invoke-static {v5, v7}, Ls1/d0/j;->g(Ls1/d0/c;Ls1/c0/c;)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v5, v7}, Ls1/d0/j;->g(Ls1/d0/c;Ls1/c0/c;)C

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v4

    const-string v7, "TrueApp.getApp()"

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v4

    invoke-interface {v4}, Le/a/j2;->d3()Le/a/r2/f;

    move-result-object v14

    const-string v4, "TrueApp.getApp().objects\u2026ph.notificationsManager()"

    invoke-static {v14, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v4, v3, Le/a/e/a/z2;->e:Le/a/e4/p;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v4}, Le/a/e4/p;->d()Ljava/util/List;

    move-result-object v4

    const-string v6, "multiSimManager.allSimInfos"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/multisim/SimInfo;

    if-eqz v4, :cond_3

    iget-object v5, v4, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    :cond_3
    move-object v15, v5

    .line 14
    new-instance v12, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v12}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    .line 15
    sget-object v4, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move/from16 v13, v16

    move-object/from16 v28, v12

    move/from16 v12, v16

    const-wide/16 v16, 0x0

    move-object/from16 v30, v14

    move-object/from16 v29, v15

    move-wide/from16 v14, v16

    const/16 v19, 0x0

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    move-object/from16 v18, v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const v27, 0x3fff5

    const-string v31, "text/plain"

    move-object/from16 v32, v7

    move-object/from16 v7, v31

    move v0, v9

    move-object v9, v2

    invoke-static/range {v4 .. v27}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v4

    move-object/from16 v5, v28

    invoke-virtual {v5, v4}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    move-object/from16 v4, v29

    .line 16
    invoke-virtual {v5, v4}, Lcom/truecaller/messaging/data/types/Message$b;->j(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 17
    new-instance v6, Lw3/b/a/b;

    invoke-direct {v6}, Lw3/b/a/b;-><init>()V

    .line 18
    iput-object v6, v5, Lcom/truecaller/messaging/data/types/Message$b;->e:Lw3/b/a/b;

    .line 19
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v6

    move-object/from16 v7, v32

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v6

    invoke-interface {v6}, Le/a/j2;->m()Le/a/b0/q/z;

    move-result-object v6

    if-eqz v4, :cond_4

    move-object v15, v4

    goto :goto_1

    :cond_4
    const-string v15, "-1"

    .line 20
    :goto_1
    invoke-static {v1, v6, v15}, Lcom/truecaller/data/entity/messaging/Participant;->d(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    .line 21
    iput-object v1, v5, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 22
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v1

    const-string v4, "Message.Builder()\n      \u2026\n                .build()"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v4, Lcom/truecaller/messaging/data/types/Conversation$b;

    invoke-direct {v4}, Lcom/truecaller/messaging/data/types/Conversation$b;-><init>()V

    .line 24
    iget-object v5, v1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 25
    iget-object v6, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->m:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Conversation$b;->b()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v4

    const-string v5, "Conversation.Builder()\n \u2026\n                .build()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v5, v3, Le/a/e/a/z2;->g:Le/a/c/g/f;

    if-eqz v5, :cond_7

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v5, v2, v7, v6, v7}, Le/a/m0/a1$k;->n(Le/a/c/g/f;Ljava/lang/String;Lcom/truecaller/insights/categorizer/CategorizerInputType;ILjava/lang/Object;)Le/a/c/g/a;

    move-result-object v5

    .line 28
    instance-of v6, v5, Le/a/c/g/a$b;

    if-eqz v6, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "SPAM MESSAGE in tester"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 29
    :cond_5
    instance-of v5, v5, Le/a/c/g/a$a;

    if-eqz v5, :cond_6

    .line 30
    new-instance v5, Le/a/e/a/a3;

    invoke-direct {v5, v3, v2, v7}, Le/a/e/a/a3;-><init>(Le/a/e/a/z2;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v7, v5, v0, v7}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_6
    :goto_2
    invoke-interface/range {v30 .. v30}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/y0/q;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a/y0/q;->j(Ljava/util/Map;)V

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    const-string v1, "insightsAndroidCategorizer"

    .line 32
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v0, "multiSimManager"

    .line 33
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    :cond_9
    :goto_3
    move v0, v9

    .line 34
    invoke-virtual {v3}, Le/a/e/a/o2;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Please enter valid address and message "

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void
.end method
