.class public final Le/a/b3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/bottombar/BottomBarView;

.field public final synthetic b:Le/a/b3/c;


# direct methods
.method public constructor <init>(Lcom/truecaller/bottombar/BottomBarView;Le/a/b3/c;)V
    .locals 0

    iput-object p1, p0, Le/a/b3/f;->a:Lcom/truecaller/bottombar/BottomBarView;

    iput-object p2, p0, Le/a/b3/f;->b:Le/a/b3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/b3/f;->a:Lcom/truecaller/bottombar/BottomBarView;

    .line 2
    iget-object v1, v1, Lcom/truecaller/bottombar/BottomBarView;->v:Lcom/truecaller/bottombar/BottomBarView$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 3
    iget-object v3, v0, Le/a/b3/f;->b:Le/a/b3/c;

    invoke-virtual {v3}, Le/a/b3/c;->e()Lcom/truecaller/bottombar/BottomBarButtonType;

    move-result-object v3

    check-cast v1, Lcom/truecaller/ui/TruecallerInit;

    .line 4
    iget-boolean v4, v1, Lcom/truecaller/ui/TruecallerInit;->O:Z

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 5
    sget-object v4, Lcom/truecaller/bottombar/BottomBarButtonType;->HOME:Lcom/truecaller/bottombar/BottomBarButtonType;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/truecaller/bottombar/BottomBarButtonType;->CALLS:Lcom/truecaller/bottombar/BottomBarButtonType;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v4, Lcom/truecaller/bottombar/BottomBarButtonType;->CONTACTS:Lcom/truecaller/bottombar/BottomBarButtonType;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 7
    iget-object v2, v1, Lcom/truecaller/ui/TruecallerInit;->g:Lcom/truecaller/TrueApp;

    .line 8
    invoke-static {v2}, Le/a/b0/q/n;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v2}, Le/a/b0/q/t;->n(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget-object v1, v1, Lcom/truecaller/ui/TruecallerInit;->g:Lcom/truecaller/TrueApp;

    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->z()Z

    goto :goto_1

    .line 11
    :cond_2
    sget-object v4, Lcom/truecaller/bottombar/BottomBarButtonType;->CONTACTS:Lcom/truecaller/bottombar/BottomBarButtonType;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    iget-object v1, v1, Lcom/truecaller/ui/TruecallerInit;->g:Lcom/truecaller/TrueApp;

    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->z()Z

    :cond_3
    :goto_1
    move v2, v5

    goto/16 :goto_5

    .line 13
    :cond_4
    sget-object v4, Lcom/truecaller/bottombar/BottomBarButtonType;->CALLS:Lcom/truecaller/bottombar/BottomBarButtonType;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/truecaller/bottombar/BottomBarButtonType;->MESSAGES:Lcom/truecaller/bottombar/BottomBarButtonType;

    invoke-virtual {v3, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 14
    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 15
    iget-object v4, v1, Lcom/truecaller/ui/TruecallerInit;->e1:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/z4/d;

    const-string v6, "default_tab_on_launch"

    invoke-interface {v4, v6, v2}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v3, :cond_6

    if-eqz v4, :cond_b

    :cond_6
    if-nez v3, :cond_7

    if-ne v4, v5, :cond_7

    goto/16 :goto_5

    .line 16
    :cond_7
    iget-object v4, v1, Lcom/truecaller/ui/TruecallerInit;->e1:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/z4/d;

    xor-int/lit8 v7, v3, 0x1

    invoke-interface {v4, v6, v7}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    .line 17
    iget-object v4, v1, Lcom/truecaller/ui/TruecallerInit;->r0:Le/a/q2/a;

    .line 18
    invoke-static {}, Le/a/l5/a/a2;->a()Le/a/l5/a/a2$b;

    move-result-object v6

    const-string v7, "defaultTabAtStartup"

    .line 19
    invoke-virtual {v6, v7}, Le/a/l5/a/a2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/a2$b;

    const-string v7, "calls"

    const-string v8, "messages"

    if-eqz v3, :cond_8

    move-object v9, v7

    goto :goto_2

    :cond_8
    move-object v9, v8

    .line 20
    :goto_2
    invoke-virtual {v6, v9}, Le/a/l5/a/a2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/a2$b;

    .line 21
    invoke-virtual {v6}, Le/a/l5/a/a2$b;->a()Le/a/l5/a/a2;

    move-result-object v6

    .line 22
    invoke-interface {v4, v6}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 23
    iget-object v4, v1, Lcom/truecaller/ui/TruecallerInit;->r0:Le/a/q2/a;

    const-string v6, "DefaultMainTabLongPress"

    const-string v9, "type"

    .line 24
    invoke-static {v6, v9}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v15

    .line 25
    new-instance v17, Ljava/util/LinkedHashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v14, "defaultTab"

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    move-object v7, v8

    :goto_3
    const-string v10, "name"

    const-string v12, "value"

    move-object v9, v14

    move-object v11, v7

    move-object v13, v15

    move-object v8, v15

    move-object v15, v7

    move-object/from16 v16, v6

    .line 26
    invoke-static/range {v9 .. v17}, Le/d/c/a/a;->v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Le/a/l5/a/p3$b;

    move-result-object v6

    const-string v7, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 27
    invoke-static {v6, v8, v7, v4}, Le/d/c/a/a;->x0(Le/a/l5/a/p3$b;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    const v4, 0x7f120240

    new-array v6, v5, [Ljava/lang/Object;

    if-eqz v3, :cond_a

    const v3, 0x7f12076e

    goto :goto_4

    :cond_a
    const v3, 0x7f120775

    .line 28
    :goto_4
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {v1, v4, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_b
    :goto_5
    return v2
.end method
