.class public Le/h/a/c/r0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Lorg/json/JSONObject;

.field public final b:Ljava/lang/String;

.field public final c:Le/h/a/c/r0/i;

.field public final d:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

.field public final e:I

.field public f:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(ILcom/clevertap/android/sdk/inbox/CTInboxMessage;Ljava/lang/String;Le/h/a/c/r0/i;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Le/h/a/c/r0/f;->e:I

    .line 9
    iput-object p2, p0, Le/h/a/c/r0/f;->d:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Le/h/a/c/r0/f;->b:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Le/h/a/c/r0/f;->c:Le/h/a/c/r0/i;

    .line 12
    iput-object p5, p0, Le/h/a/c/r0/f;->f:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public constructor <init>(ILcom/clevertap/android/sdk/inbox/CTInboxMessage;Ljava/lang/String;Lorg/json/JSONObject;Le/h/a/c/r0/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/h/a/c/r0/f;->e:I

    .line 3
    iput-object p2, p0, Le/h/a/c/r0/f;->d:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 4
    iput-object p3, p0, Le/h/a/c/r0/f;->b:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Le/h/a/c/r0/f;->c:Le/h/a/c/r0/i;

    .line 6
    iput-object p4, p0, Le/h/a/c/r0/f;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Le/h/a/c/r0/f;->f:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/h/a/c/r0/f;->c:Le/h/a/c/r0/i;

    if-eqz v0, :cond_a

    .line 3
    iget v1, p0, Le/h/a/c/r0/f;->e:I

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Le/h/a/c/r0/i;->SA(II)V

    goto/16 :goto_5

    .line 4
    :cond_0
    iget-object p1, p0, Le/h/a/c/r0/f;->b:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-object p1, p0, Le/h/a/c/r0/f;->a:Lorg/json/JSONObject;

    if-eqz p1, :cond_9

    .line 5
    iget-object p1, p0, Le/h/a/c/r0/f;->c:Le/h/a/c/r0/i;

    if-eqz p1, :cond_a

    .line 6
    iget-object p1, p0, Le/h/a/c/r0/f;->d:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 7
    iget-object p1, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    iget-object v2, p0, Le/h/a/c/r0/f;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "copy"

    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Le/h/a/c/r0/f;->c:Le/h/a/c/r0/i;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Le/h/a/c/r0/f;->c:Le/h/a/c/r0/i;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    const-string v2, "clipboard"

    .line 12
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 13
    iget-object v3, p0, Le/h/a/c/r0/f;->b:Ljava/lang/String;

    iget-object v4, p0, Le/h/a/c/r0/f;->d:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 14
    iget-object v4, v4, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    iget-object v5, p0, Le/h/a/c/r0/f;->a:Lorg/json/JSONObject;

    .line 16
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "text"

    const-string v6, "copyText"

    if-nez v5, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    :try_start_0
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_3

    .line 18
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 19
    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_3
    :goto_1
    const-string v4, ""

    .line 20
    :goto_2
    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {v2, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string v2, "Text Copied to Clipboard"

    .line 22
    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 23
    :cond_4
    iget-object p1, p0, Le/h/a/c/r0/f;->c:Le/h/a/c/r0/i;

    iget v2, p0, Le/h/a/c/r0/f;->e:I

    iget-object v3, p0, Le/h/a/c/r0/f;->b:Ljava/lang/String;

    iget-object v4, p0, Le/h/a/c/r0/f;->a:Lorg/json/JSONObject;

    iget-object v5, p0, Le/h/a/c/r0/f;->d:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    if-eqz v5, :cond_8

    .line 24
    iget-object v6, v5, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    .line 25
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 26
    iget-object v6, v5, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    iget-object v7, p0, Le/h/a/c/r0/f;->a:Lorg/json/JSONObject;

    invoke-virtual {v6, v7}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "kv"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 28
    iget-object v5, v5, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    iget-object v5, p0, Le/h/a/c/r0/f;->a:Lorg/json/JSONObject;

    .line 30
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_8

    .line 31
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    .line 32
    :cond_5
    :try_start_1
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 34
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 35
    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 36
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 37
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 38
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 39
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 40
    :cond_7
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_8

    move-object v0, v6

    goto :goto_4

    :catch_1
    move-exception v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    .line 42
    :cond_8
    :goto_4
    invoke-virtual {p1, v2, v3, v4, v0}, Le/h/a/c/r0/i;->RA(ILjava/lang/String;Lorg/json/JSONObject;Ljava/util/HashMap;)V

    goto :goto_5

    .line 43
    :cond_9
    iget-object p1, p0, Le/h/a/c/r0/f;->c:Le/h/a/c/r0/i;

    if-eqz p1, :cond_a

    .line 44
    iget v1, p0, Le/h/a/c/r0/f;->e:I

    invoke-virtual {p1, v1, v0, v0, v0}, Le/h/a/c/r0/i;->RA(ILjava/lang/String;Lorg/json/JSONObject;Ljava/util/HashMap;)V

    :cond_a
    :goto_5
    return-void
.end method
