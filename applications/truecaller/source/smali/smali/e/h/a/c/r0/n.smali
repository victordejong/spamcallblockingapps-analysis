.class public Le/h/a/c/r0/n;
.super Le/h/a/c/r0/e;
.source "SourceFile"


# instance fields
.field public final o:Landroid/widget/Button;

.field public final p:Landroid/widget/Button;

.field public final q:Landroid/widget/Button;

.field public final r:Landroid/widget/TextView;

.field public final s:Landroid/widget/ImageView;

.field public final t:Landroid/widget/TextView;

.field public final u:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/h/a/c/r0/e;-><init>(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    sget v0, Lcom/clevertap/android/sdk/R$id;->messageTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/h/a/c/r0/n;->u:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/clevertap/android/sdk/R$id;->messageText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/h/a/c/r0/n;->r:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/clevertap/android/sdk/R$id;->timestamp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/h/a/c/r0/n;->t:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/clevertap/android/sdk/R$id;->read_circle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/h/a/c/r0/n;->s:Landroid/widget/ImageView;

    .line 7
    sget v0, Lcom/clevertap/android/sdk/R$id;->cta_button_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    .line 8
    sget v0, Lcom/clevertap/android/sdk/R$id;->cta_button_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Le/h/a/c/r0/n;->p:Landroid/widget/Button;

    .line 9
    sget v0, Lcom/clevertap/android/sdk/R$id;->cta_button_3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Le/h/a/c/r0/n;->q:Landroid/widget/Button;

    .line 10
    sget v0, Lcom/clevertap/android/sdk/R$id;->media_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    .line 11
    sget v0, Lcom/clevertap/android/sdk/R$id;->simple_message_relative_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 12
    sget v0, Lcom/clevertap/android/sdk/R$id;->simple_message_frame_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Le/h/a/c/r0/e;->d:Landroid/widget/FrameLayout;

    .line 13
    sget v0, Lcom/clevertap/android/sdk/R$id;->square_media_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    .line 14
    sget v0, Lcom/clevertap/android/sdk/R$id;->click_relative_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Le/h/a/c/r0/e;->i:Landroid/widget/RelativeLayout;

    .line 15
    sget v0, Lcom/clevertap/android/sdk/R$id;->cta_linear_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Le/h/a/c/r0/e;->b:Landroid/widget/LinearLayout;

    .line 16
    sget v0, Lcom/clevertap/android/sdk/R$id;->body_linear_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Le/h/a/c/r0/e;->c:Landroid/widget/LinearLayout;

    .line 17
    sget v0, Lcom/clevertap/android/sdk/R$id;->simple_progress_frame_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Le/h/a/c/r0/e;->h:Landroid/widget/FrameLayout;

    .line 18
    sget v0, Lcom/clevertap/android/sdk/R$id;->media_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Le/h/a/c/r0/e;->g:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public P4(Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Le/h/a/c/r0/i;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v9, "l"

    .line 1
    invoke-super/range {p0 .. p3}, Le/h/a/c/r0/e;->P4(Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Le/h/a/c/r0/i;I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/r0/e;->Q4()Le/h/a/c/r0/i;

    move-result-object v10

    .line 3
    iget-object v0, v8, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    const/4 v11, 0x0

    .line 4
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    .line 5
    iget-object v0, v1, Le/h/a/c/r0/n;->u:Landroid/widget/TextView;

    .line 6
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->k:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, v1, Le/h/a/c/r0/n;->u:Landroid/widget/TextView;

    .line 9
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->l:Ljava/lang/String;

    .line 10
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object v0, v1, Le/h/a/c/r0/n;->r:Landroid/widget/TextView;

    .line 12
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->h:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, v1, Le/h/a/c/r0/n;->r:Landroid/widget/TextView;

    .line 15
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->i:Ljava/lang/String;

    .line 16
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object v0, v1, Le/h/a/c/r0/e;->c:Landroid/widget/LinearLayout;

    .line 18
    iget-object v2, v8, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->b:Ljava/lang/String;

    .line 19
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 20
    iget-wide v2, v8, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->g:J

    .line 21
    invoke-virtual {v1, v2, v3}, Le/h/a/c/r0/e;->O4(J)Ljava/lang/String;

    move-result-object v0

    .line 22
    iget-object v2, v1, Le/h/a/c/r0/n;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, v1, Le/h/a/c/r0/n;->t:Landroid/widget/TextView;

    .line 24
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->l:Ljava/lang/String;

    .line 25
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-boolean v0, v8, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->k:Z

    const/16 v13, 0x8

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, v1, Le/h/a/c/r0/n;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, v1, Le/h/a/c/r0/n;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    :goto_0
    iget-object v0, v1, Le/h/a/c/r0/e;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 30
    iget-object v0, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->f:Lorg/json/JSONArray;

    const/4 v14, 0x1

    const/4 v15, 0x2

    if-eqz v0, :cond_5

    .line 31
    iget-object v2, v1, Le/h/a/c/r0/e;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 32
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eq v2, v14, :cond_3

    if-eq v2, v15, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 33
    :cond_1
    :try_start_0
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 34
    iget-object v2, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 35
    iget-object v2, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    invoke-virtual {v12, v6}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v2, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    invoke-virtual {v12, v6}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 37
    iget-object v2, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    invoke-virtual {v12, v6}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 38
    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 39
    iget-object v2, v1, Le/h/a/c/r0/n;->p:Landroid/widget/Button;

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 40
    iget-object v2, v1, Le/h/a/c/r0/n;->p:Landroid/widget/Button;

    invoke-virtual {v12, v7}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v2, v1, Le/h/a/c/r0/n;->p:Landroid/widget/Button;

    invoke-virtual {v12, v7}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 42
    iget-object v2, v1, Le/h/a/c/r0/n;->p:Landroid/widget/Button;

    invoke-virtual {v12, v7}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 43
    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 44
    iget-object v2, v1, Le/h/a/c/r0/n;->q:Landroid/widget/Button;

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 45
    iget-object v2, v1, Le/h/a/c/r0/n;->q:Landroid/widget/Button;

    invoke-virtual {v12, v0}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v2, v1, Le/h/a/c/r0/n;->q:Landroid/widget/Button;

    invoke-virtual {v12, v0}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 47
    iget-object v2, v1, Le/h/a/c/r0/n;->q:Landroid/widget/Button;

    invoke-virtual {v12, v0}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    if-eqz v10, :cond_4

    .line 48
    iget-object v5, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    new-instance v4, Le/h/a/c/r0/f;

    .line 49
    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v2, v4

    move/from16 v3, p3

    move-object v15, v4

    move-object/from16 v4, p1

    move-object v13, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v7

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Le/h/a/c/r0/f;-><init>(ILcom/clevertap/android/sdk/inbox/CTInboxMessage;Ljava/lang/String;Lorg/json/JSONObject;Le/h/a/c/r0/i;)V

    .line 50
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v13, v1, Le/h/a/c/r0/n;->p:Landroid/widget/Button;

    new-instance v15, Le/h/a/c/r0/f;

    .line 52
    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v15

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v6, v16

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Le/h/a/c/r0/f;-><init>(ILcom/clevertap/android/sdk/inbox/CTInboxMessage;Ljava/lang/String;Lorg/json/JSONObject;Le/h/a/c/r0/i;)V

    .line 53
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v13, v1, Le/h/a/c/r0/n;->q:Landroid/widget/Button;

    new-instance v15, Le/h/a/c/r0/f;

    .line 55
    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v15

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object v6, v0

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Le/h/a/c/r0/f;-><init>(ILcom/clevertap/android/sdk/inbox/CTInboxMessage;Ljava/lang/String;Lorg/json/JSONObject;Le/h/a/c/r0/i;)V

    .line 56
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 57
    :cond_2
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 58
    iget-object v2, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 59
    iget-object v2, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    invoke-virtual {v12, v6}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v2, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    invoke-virtual {v12, v6}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 61
    iget-object v2, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    invoke-virtual {v12, v6}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 62
    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 63
    iget-object v2, v1, Le/h/a/c/r0/n;->p:Landroid/widget/Button;

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    iget-object v2, v1, Le/h/a/c/r0/n;->p:Landroid/widget/Button;

    invoke-virtual {v12, v0}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v2, v1, Le/h/a/c/r0/n;->p:Landroid/widget/Button;

    invoke-virtual {v12, v0}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 66
    iget-object v2, v1, Le/h/a/c/r0/n;->p:Landroid/widget/Button;

    invoke-virtual {v12, v0}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 67
    iget-object v2, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    iget-object v3, v1, Le/h/a/c/r0/n;->p:Landroid/widget/Button;

    iget-object v4, v1, Le/h/a/c/r0/n;->q:Landroid/widget/Button;

    invoke-virtual {v1, v2, v3, v4}, Le/h/a/c/r0/e;->R4(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    if-eqz v10, :cond_4

    .line 68
    iget-object v13, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    new-instance v15, Le/h/a/c/r0/f;

    .line 69
    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v15

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Le/h/a/c/r0/f;-><init>(ILcom/clevertap/android/sdk/inbox/CTInboxMessage;Ljava/lang/String;Lorg/json/JSONObject;Le/h/a/c/r0/i;)V

    .line 70
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v13, v1, Le/h/a/c/r0/n;->p:Landroid/widget/Button;

    new-instance v15, Le/h/a/c/r0/f;

    .line 72
    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v15

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object v6, v0

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Le/h/a/c/r0/f;-><init>(ILcom/clevertap/android/sdk/inbox/CTInboxMessage;Ljava/lang/String;Lorg/json/JSONObject;Le/h/a/c/r0/i;)V

    .line 73
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 75
    iget-object v0, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    iget-object v0, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    invoke-virtual {v12, v6}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    invoke-virtual {v12, v6}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 78
    iget-object v0, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    invoke-virtual {v12, v6}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 79
    iget-object v0, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    iget-object v2, v1, Le/h/a/c/r0/n;->p:Landroid/widget/Button;

    iget-object v3, v1, Le/h/a/c/r0/n;->q:Landroid/widget/Button;

    invoke-virtual {v1, v0, v2, v3}, Le/h/a/c/r0/e;->S4(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    if-eqz v10, :cond_4

    .line 80
    iget-object v0, v1, Le/h/a/c/r0/n;->o:Landroid/widget/Button;

    new-instance v13, Le/h/a/c/r0/f;

    .line 81
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v13

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Le/h/a/c/r0/f;-><init>(ILcom/clevertap/android/sdk/inbox/CTInboxMessage;Ljava/lang/String;Lorg/json/JSONObject;Le/h/a/c/r0/i;)V

    .line 82
    invoke-virtual {v0, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_4
    :goto_1
    const/16 v2, 0x8

    goto :goto_2

    .line 84
    :cond_5
    iget-object v0, v1, Le/h/a/c/r0/e;->b:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    :goto_2
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    .line 87
    iget-object v3, v8, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->b:Ljava/lang/String;

    .line 88
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 89
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    .line 91
    iget-object v3, v8, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->b:Ljava/lang/String;

    .line 92
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 93
    iget-object v0, v1, Le/h/a/c/r0/e;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 94
    iget-object v0, v1, Le/h/a/c/r0/e;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 95
    :try_start_1
    iget-object v0, v8, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->m:Ljava/lang/String;

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x6c

    const/4 v4, -0x1

    if-eq v2, v3, :cond_7

    const/16 v3, 0x70

    if-eq v2, v3, :cond_6

    goto :goto_3

    :cond_6
    const-string v2, "p"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v14

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_7

    if-eqz v0, :cond_8

    move v0, v11

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v4

    :goto_4
    const-string v2, "ct_audio"

    const-string v3, "ct_video_1"

    const-string v5, "ct_image"

    if-eqz v0, :cond_10

    if-eq v0, v14, :cond_9

    goto/16 :goto_7

    .line 97
    :cond_9
    :try_start_2
    invoke-virtual {v12}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 98
    iget-object v0, v1, Le/h/a/c/r0/e;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_7

    .line 101
    :try_start_3
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v0

    .line 102
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->g:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v2}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object v0

    new-instance v2, Le/f/a/r/h;

    invoke-direct {v2}, Le/f/a/r/h;-><init>()V

    iget-object v3, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 104
    invoke-static {v3, v5}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 105
    invoke-virtual {v2, v3}, Le/f/a/r/a;->u(I)Le/f/a/r/a;

    move-result-object v2

    check-cast v2, Le/f/a/r/h;

    iget-object v3, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 106
    invoke-static {v3, v5}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Le/f/a/r/a;->k(I)Le/f/a/r/a;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v2}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    .line 108
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_7

    .line 109
    :catch_1
    :try_start_4
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v0

    .line 110
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->g:Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v2}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    .line 112
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    goto/16 :goto_7

    .line 113
    :cond_a
    invoke-virtual {v12}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 114
    iget-object v0, v1, Le/h/a/c/r0/e;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_7

    .line 117
    :try_start_5
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Le/f/a/i;->l()Le/f/a/h;

    move-result-object v0

    .line 119
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->g:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v2}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    move-result-object v0

    new-instance v2, Le/f/a/r/h;

    invoke-direct {v2}, Le/f/a/r/h;-><init>()V

    iget-object v3, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 121
    invoke-static {v3, v5}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 122
    invoke-virtual {v2, v3}, Le/f/a/r/a;->u(I)Le/f/a/r/a;

    move-result-object v2

    check-cast v2, Le/f/a/r/h;

    iget-object v3, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 123
    invoke-static {v3, v5}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Le/f/a/r/a;->k(I)Le/f/a/r/a;

    move-result-object v2

    .line 124
    invoke-virtual {v0, v2}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    .line 125
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_7

    .line 126
    :catch_2
    :try_start_6
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Le/f/a/i;->l()Le/f/a/h;

    move-result-object v0

    .line 128
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->g:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v2}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    .line 130
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    goto/16 :goto_7

    .line 131
    :cond_b
    invoke-virtual {v12}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->i()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 132
    iget-object v0, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->j:Ljava/lang/String;

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 134
    iget-object v0, v1, Le/h/a/c/r0/e;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 135
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    sget v0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    .line 137
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_5

    .line 138
    :cond_c
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_7

    .line 139
    :goto_5
    :try_start_7
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v0

    .line 140
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->j:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v2}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object v0

    new-instance v2, Le/f/a/r/h;

    invoke-direct {v2}, Le/f/a/r/h;-><init>()V

    iget-object v4, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 142
    invoke-static {v4, v3}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 143
    invoke-virtual {v2, v4}, Le/f/a/r/a;->u(I)Le/f/a/r/a;

    move-result-object v2

    check-cast v2, Le/f/a/r/h;

    iget-object v4, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 144
    invoke-static {v4, v3}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Le/f/a/r/a;->k(I)Le/f/a/r/a;

    move-result-object v2

    .line 145
    invoke-virtual {v0, v2}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    .line 146
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_7

    .line 147
    :catch_3
    :try_start_8
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v0

    .line 148
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->j:Ljava/lang/String;

    .line 149
    invoke-virtual {v0, v2}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    .line 150
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    goto/16 :goto_7

    .line 151
    :cond_d
    iget-object v0, v1, Le/h/a/c/r0/e;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    sget v0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    .line 154
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_6

    .line 155
    :cond_e
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 156
    :goto_6
    iget-object v0, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_15

    .line 157
    iget-object v2, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v2

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Le/f/a/i;->q(Ljava/lang/Integer;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    .line 159
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    goto/16 :goto_7

    .line 160
    :cond_f
    invoke-virtual {v12}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->f()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 161
    iget-object v0, v1, Le/h/a/c/r0/e;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 162
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 164
    iget-object v0, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 165
    iget-object v0, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_15

    .line 166
    iget-object v2, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v2

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Le/f/a/i;->q(Ljava/lang/Integer;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->f:Landroid/widget/ImageView;

    .line 168
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    goto/16 :goto_7

    .line 169
    :cond_10
    invoke-virtual {v12}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 170
    iget-object v0, v1, Le/h/a/c/r0/e;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 171
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_8} :catch_7

    .line 173
    :try_start_9
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v0

    .line 174
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->g:Ljava/lang/String;

    .line 175
    invoke-virtual {v0, v2}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object v0

    new-instance v2, Le/f/a/r/h;

    invoke-direct {v2}, Le/f/a/r/h;-><init>()V

    iget-object v3, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 176
    invoke-static {v3, v5}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 177
    invoke-virtual {v2, v3}, Le/f/a/r/a;->u(I)Le/f/a/r/a;

    move-result-object v2

    check-cast v2, Le/f/a/r/h;

    iget-object v3, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 178
    invoke-static {v3, v5}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Le/f/a/r/a;->k(I)Le/f/a/r/a;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v2}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    .line 180
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;
    :try_end_9
    .catch Ljava/lang/NoSuchMethodError; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_7

    .line 181
    :catch_4
    :try_start_a
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v0

    .line 182
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->g:Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v2}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    .line 184
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    goto/16 :goto_7

    .line 185
    :cond_11
    invoke-virtual {v12}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 186
    iget-object v0, v1, Le/h/a/c/r0/e;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_a} :catch_7

    .line 189
    :try_start_b
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Le/f/a/i;->l()Le/f/a/h;

    move-result-object v0

    .line 191
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->g:Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v2}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    move-result-object v0

    new-instance v2, Le/f/a/r/h;

    invoke-direct {v2}, Le/f/a/r/h;-><init>()V

    iget-object v3, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 193
    invoke-static {v3, v5}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 194
    invoke-virtual {v2, v3}, Le/f/a/r/a;->u(I)Le/f/a/r/a;

    move-result-object v2

    check-cast v2, Le/f/a/r/h;

    iget-object v3, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 195
    invoke-static {v3, v5}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Le/f/a/r/a;->k(I)Le/f/a/r/a;

    move-result-object v2

    .line 196
    invoke-virtual {v0, v2}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    .line 197
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;
    :try_end_b
    .catch Ljava/lang/NoSuchMethodError; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_7

    .line 198
    :catch_5
    :try_start_c
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Le/f/a/i;->l()Le/f/a/h;

    move-result-object v0

    .line 200
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->g:Ljava/lang/String;

    .line 201
    invoke-virtual {v0, v2}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    .line 202
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    goto/16 :goto_7

    .line 203
    :cond_12
    invoke-virtual {v12}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->i()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 204
    iget-object v0, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->j:Ljava/lang/String;

    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 206
    iget-object v0, v1, Le/h/a/c/r0/e;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 207
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_c .. :try_end_c} :catch_7

    .line 209
    :try_start_d
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v0

    .line 210
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->j:Ljava/lang/String;

    .line 211
    invoke-virtual {v0, v2}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object v0

    new-instance v2, Le/f/a/r/h;

    invoke-direct {v2}, Le/f/a/r/h;-><init>()V

    iget-object v4, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 212
    invoke-static {v4, v3}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 213
    invoke-virtual {v2, v4}, Le/f/a/r/a;->u(I)Le/f/a/r/a;

    move-result-object v2

    check-cast v2, Le/f/a/r/h;

    iget-object v4, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 214
    invoke-static {v4, v3}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Le/f/a/r/a;->k(I)Le/f/a/r/a;

    move-result-object v2

    .line 215
    invoke-virtual {v0, v2}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    .line 216
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;
    :try_end_d
    .catch Ljava/lang/NoSuchMethodError; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_7

    .line 217
    :catch_6
    :try_start_e
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v0

    .line 218
    iget-object v2, v12, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->j:Ljava/lang/String;

    .line 219
    invoke-virtual {v0, v2}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    .line 220
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    goto :goto_7

    .line 221
    :cond_13
    iget-object v0, v1, Le/h/a/c/r0/e;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 222
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 224
    iget-object v0, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_15

    .line 225
    iget-object v2, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v2

    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Le/f/a/i;->q(Ljava/lang/Integer;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    .line 227
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    goto :goto_7

    .line 228
    :cond_14
    invoke-virtual {v12}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->f()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 229
    iget-object v0, v1, Le/h/a/c/r0/e;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 230
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 232
    iget-object v0, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 233
    iget-object v0, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Le/h/a/c/j0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_15

    .line 234
    iget-object v2, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v2

    .line 235
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Le/f/a/i;->q(Ljava/lang/Integer;)Le/f/a/h;

    move-result-object v0

    iget-object v2, v1, Le/h/a/c/r0/e;->e:Landroid/widget/ImageView;

    .line 236
    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;
    :try_end_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_e .. :try_end_e} :catch_7

    .line 237
    :catch_7
    :cond_15
    :goto_7
    iget-object v0, v1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 238
    sget v2, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->g:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    .line 239
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v2, v3

    .line 240
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v0, v3

    goto :goto_8

    .line 241
    :cond_16
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 242
    iget-object v0, v8, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->m:Ljava/lang/String;

    .line 243
    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    int-to-float v0, v2

    const/high16 v3, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move/from16 v17, v2

    move v2, v0

    move/from16 v0, v17

    goto :goto_8

    :cond_17
    move v0, v2

    .line 244
    :goto_8
    iget-object v3, v1, Le/h/a/c/r0/e;->h:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    new-instance v0, Le/h/a/c/r0/n$a;

    move/from16 v3, p3

    invoke-direct {v0, v1, v3}, Le/h/a/c/r0/n$a;-><init>(Le/h/a/c/r0/n;I)V

    .line 246
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-wide/16 v4, 0x7d0

    .line 247
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v10, :cond_18

    .line 248
    iget-object v0, v1, Le/h/a/c/r0/e;->i:Landroid/widget/RelativeLayout;

    new-instance v9, Le/h/a/c/r0/f;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    move/from16 v3, p3

    move-object/from16 v4, p1

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Le/h/a/c/r0/f;-><init>(ILcom/clevertap/android/sdk/inbox/CTInboxMessage;Ljava/lang/String;Lorg/json/JSONObject;Le/h/a/c/r0/i;)V

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    return-void
.end method
