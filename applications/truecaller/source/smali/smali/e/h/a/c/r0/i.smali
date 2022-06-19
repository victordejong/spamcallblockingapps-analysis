.class public Le/h/a/c/r0/i;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/h/a/c/r0/i$b;
    }
.end annotation


# instance fields
.field public a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public b:Z

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/clevertap/android/sdk/inbox/CTInboxMessage;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/widget/LinearLayout;

.field public e:Le/h/a/c/k0/a;

.field public f:Landroidx/recyclerview/widget/RecyclerView;

.field public g:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

.field public h:Z

.field public i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/h/a/c/r0/i$b;",
            ">;"
        }
    .end annotation
.end field

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    sget-boolean v0, Le/h/a/c/j0;->a:Z

    iput-boolean v0, p0, Le/h/a/c/r0/i;->b:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/h/a/c/r0/i;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/h/a/c/r0/i;->h:Z

    return-void
.end method


# virtual methods
.method public OA(Landroid/os/Bundle;ILjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/h/a/c/r0/i;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/r0/i$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/r0/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    invoke-interface {v0, v1, p2, p1, p3}, Le/h/a/c/r0/i$b;->w9(Landroid/content/Context;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/os/Bundle;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public PA(Landroid/os/Bundle;I)V
    .locals 3

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/h/a/c/r0/i;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/r0/i$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/r0/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    invoke-interface {v0, v1, p2, p1}, Le/h/a/c/r0/i$b;->I(Landroid/content/Context;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public QA(Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    .line 1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "\n"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "\r"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-static {p1, v1}, Le/h/a/c/j0;->m(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public RA(ILjava/lang/String;Lorg/json/JSONObject;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Le/h/a/c/r0/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "wzrk_"

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "wzrk_c2a"

    .line 9
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-virtual {p0, v0, p1, p4}, Le/h/a/c/r0/i;->OA(Landroid/os/Bundle;ILjava/util/HashMap;)V

    const/4 p2, 0x0

    if-eqz p4, :cond_3

    .line 11
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3

    const/4 p4, 0x1

    goto :goto_1

    :cond_3
    move p4, p2

    :goto_1
    if-eqz p3, :cond_a

    if-nez p4, :cond_9

    .line 12
    iget-object p4, p0, Le/h/a/c/r0/i;->c:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 13
    iget-object p4, p4, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    invoke-virtual {p4, p3}, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "copy"

    .line 15
    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_5

    .line 16
    :cond_4
    iget-object p4, p0, Le/h/a/c/r0/i;->c:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 17
    iget-object p1, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "text"

    const-string p2, "android"

    const-string p4, "url"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 20
    :try_start_1
    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    goto :goto_2

    :cond_5
    move-object p3, v0

    :goto_2
    if-nez p3, :cond_6

    goto :goto_4

    .line 21
    :cond_6
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 22
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_7
    move-object p2, v0

    :goto_3
    :try_start_2
    const-string p3, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_8

    .line 23
    :try_start_3
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :cond_8
    move-object v0, p3

    goto :goto_4

    :catch_0
    move-exception p1

    .line 24
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :goto_4
    if-eqz v0, :cond_b

    .line 25
    invoke-virtual {p0, v0}, Le/h/a/c/r0/i;->QA(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    :goto_5
    return-void

    .line 26
    :cond_a
    iget-object p3, p0, Le/h/a/c/r0/i;->c:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 27
    iget-object p1, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    .line 29
    iget-object p1, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->a:Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 30
    invoke-virtual {p0, p1}, Le/h/a/c/r0/i;->QA(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    const-string p2, "Error handling notification button click: "

    .line 31
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_b
    :goto_6
    return-void
.end method

.method public SA(II)V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Le/h/a/c/r0/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "wzrk_"

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, p1, v1}, Le/h/a/c/r0/i;->OA(Landroid/os/Bundle;ILjava/util/HashMap;)V

    .line 9
    iget-object v0, p0, Le/h/a/c/r0/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 10
    iget-object p1, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    .line 12
    iget-object p1, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, p1}, Le/h/a/c/r0/i;->QA(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p2, "Error handling notification button click: "

    .line 14
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "config"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iput-object v1, p0, Le/h/a/c/r0/i;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v1, "styleConfig"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    iput-object v1, p0, Le/h/a/c/r0/i;->g:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    const-string v1, "position"

    const/4 v2, -0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Le/h/a/c/r0/i;->j:I

    const-string v1, "filter"

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    instance-of p1, p1, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    check-cast p1, Le/h/a/c/r0/i$b;

    .line 9
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Le/h/a/c/r0/i;->i:Ljava/lang/ref/WeakReference;

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    iget-object v1, p0, Le/h/a/c/r0/i;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {p1, v1}, Le/h/a/c/p;->k(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/p;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v2, p1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 13
    iget-object v2, v2, Le/h/a/c/x;->e:Le/h/a/c/m;

    .line 14
    iget-object v2, v2, Le/h/a/c/m;->a:Ljava/lang/Object;

    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget-object v3, p1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 17
    iget-object v3, v3, Le/h/a/c/x;->g:Le/h/a/c/v;

    .line 18
    iget-object v3, v3, Le/h/a/c/v;->e:Le/h/a/c/r0/h;

    if-eqz v3, :cond_2

    .line 19
    iget-object p1, v3, Le/h/a/c/r0/h;->c:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    invoke-virtual {v3}, Le/h/a/c/r0/h;->d()V

    .line 21
    iget-object v3, v3, Le/h/a/c/r0/h;->b:Ljava/util/ArrayList;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/h/a/c/r0/m;

    .line 23
    invoke-virtual {v3}, Le/h/a/c/r0/m;->d()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 24
    new-instance v4, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    invoke-virtual {v3}, Le/h/a/c/r0/m;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 26
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 27
    :cond_2
    invoke-virtual {p1}, Le/h/a/c/p;->g()Le/h/a/c/g0;

    move-result-object v3

    invoke-virtual {p1}, Le/h/a/c/p;->f()Ljava/lang/String;

    move-result-object p1

    const-string v4, "Notification Inbox not initialized"

    invoke-virtual {v3, p1, v4}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    if-eqz v0, :cond_6

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 31
    iget-object v3, v2, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->n:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 32
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 33
    iget-object v3, v2, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->n:Ljava/util/List;

    .line 34
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 36
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v1, p1

    .line 37
    :cond_6
    iput-object v1, p0, Le/h/a/c/r0/i;->c:Ljava/util/ArrayList;

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 38
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :cond_7
    :goto_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 1
    sget p3, Lcom/clevertap/android/sdk/R$layout;->inbox_list_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    sget p2, Lcom/clevertap/android/sdk/R$id;->list_view_linear_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Le/h/a/c/r0/i;->d:Landroid/widget/LinearLayout;

    .line 3
    iget-object p3, p0, Le/h/a/c/r0/i;->g:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 4
    iget-object p3, p3, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->c:Ljava/lang/String;

    .line 5
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 6
    sget p2, Lcom/clevertap/android/sdk/R$id;->list_view_no_message_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 7
    iget-object p3, p0, Le/h/a/c/r0/i;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-gtz p3, :cond_0

    .line 8
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p3, p0, Le/h/a/c/r0/i;->g:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 10
    iget-object p3, p3, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->g:Ljava/lang/String;

    .line 11
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p3, p0, Le/h/a/c/r0/i;->g:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 13
    iget-object p3, p3, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->h:Ljava/lang/String;

    .line 14
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1

    :cond_0
    const/16 p3, 0x8

    .line 15
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p3, Le/h/a/c/r0/j;

    iget-object v1, p0, Le/h/a/c/r0/i;->c:Ljava/util/ArrayList;

    invoke-direct {p3, v1, p0}, Le/h/a/c/r0/j;-><init>(Ljava/util/ArrayList;Le/h/a/c/r0/i;)V

    .line 18
    iget-boolean v1, p0, Le/h/a/c/r0/i;->b:Z

    const/16 v2, 0x12

    if-eqz v1, :cond_2

    .line 19
    new-instance v1, Le/h/a/c/k0/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v3

    invoke-direct {v1, v3}, Le/h/a/c/k0/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    .line 20
    iput-object v1, p0, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    .line 21
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 22
    iget-object v1, p0, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 23
    iget-object p2, p0, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    new-instance v1, Le/h/a/c/k0/b;

    invoke-direct {v1, v2}, Le/h/a/c/k0/b;-><init>(I)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 24
    iget-object p2, p0, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    new-instance v1, Ln3/b0/a/g;

    invoke-direct {v1}, Ln3/b0/a/g;-><init>()V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 25
    iget-object p2, p0, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 26
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 27
    iget-object p2, p0, Le/h/a/c/r0/i;->d:Landroid/widget/LinearLayout;

    iget-object p3, p0, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 28
    iget-boolean p2, p0, Le/h/a/c/r0/i;->h:Z

    if-eqz p2, :cond_3

    .line 29
    iget p2, p0, Le/h/a/c/r0/i;->j:I

    if-gtz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-eqz p2, :cond_3

    .line 30
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Le/h/a/c/r0/i$a;

    invoke-direct {p3, p0}, Le/h/a/c/r0/i$a;-><init>(Le/h/a/c/r0/i;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, p3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    iput-boolean v0, p0, Le/h/a/c/r0/i;->h:Z

    goto :goto_1

    .line 32
    :cond_2
    sget v1, Lcom/clevertap/android/sdk/R$id;->list_view_recycler_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Le/h/a/c/r0/i;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Le/h/a/c/r0/i;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 35
    iget-object p2, p0, Le/h/a/c/r0/i;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Le/h/a/c/k0/b;

    invoke-direct {v0, v2}, Le/h/a/c/k0/b;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 36
    iget-object p2, p0, Le/h/a/c/r0/i;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Ln3/b0/a/g;

    invoke-direct {v0}, Ln3/b0/a/g;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 37
    iget-object p2, p0, Le/h/a/c/r0/i;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 38
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, v0, Le/h/a/c/k0/a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Le/m/a/c/t;->stop()V

    .line 5
    iget-object v1, v0, Le/h/a/c/k0/a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 6
    iput-object v2, v0, Le/h/a/c/k0/a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 7
    :cond_0
    iput-object v2, v0, Le/h/a/c/k0/a;->c:Le/h/a/c/r0/e;

    .line 8
    iput-object v2, v0, Le/h/a/c/k0/a;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Le/h/a/c/k0/a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Le/h/a/c/k0/a;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, v0, Le/h/a/c/k0/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Le/h/a/c/k0/a;->e(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Le/h/a/c/k0/a;->f()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    const-string v1, "recyclerLayoutState"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    :cond_0
    iget-object v0, p0, Le/h/a/c/r0/i;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Le/h/a/c/r0/i;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string v0, "recyclerLayoutState"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    :cond_0
    iget-object v0, p0, Le/h/a/c/r0/i;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Le/h/a/c/r0/i;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method
