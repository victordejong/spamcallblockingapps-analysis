.class public final Le/a/o5/e2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/e2/a;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o5/e2/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/o5/e2/b;->a:Landroid/content/Context;

    invoke-static {v0}, Ln3/k/b/c/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/o5/e2/b;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Le/a/o5/e2/b;->b(I)Ln3/k/b/c/b;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Ln3/k/b/c/d;->d(Landroid/content/Context;Ln3/k/b/c/b;Landroid/content/IntentSender;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final b(I)Ln3/k/b/c/b;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/o5/e2/b;->a:Landroid/content/Context;

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    const-string v3, "home-shortcut-dialer-id"

    goto :goto_0

    :cond_0
    const-string v3, "home-shortcut-messages-id"

    goto :goto_0

    :cond_1
    const-string v3, "home-shortcut-contacts-id"

    .line 2
    :goto_0
    new-instance v4, Ln3/k/b/c/b;

    invoke-direct {v4}, Ln3/k/b/c/b;-><init>()V

    .line 3
    iput-object v0, v4, Ln3/k/b/c/b;->a:Landroid/content/Context;

    .line 4
    iput-object v3, v4, Ln3/k/b/c/b;->b:Ljava/lang/String;

    const v3, 0x7f12001b

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const v3, 0x7f120775

    goto :goto_1

    :cond_3
    const v3, 0x7f120f88

    .line 5
    :cond_4
    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, v4, Ln3/k/b/c/b;->d:Ljava/lang/CharSequence;

    .line 7
    iget-object v0, p0, Le/a/o5/e2/b;->a:Landroid/content/Context;

    const v3, 0x7f0f0001

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    goto :goto_2

    :cond_5
    const v3, 0x7f0f0005

    goto :goto_2

    :cond_6
    const v3, 0x7f0f0002

    :cond_7
    :goto_2
    invoke-static {v0, v3}, Landroidx/core/graphics/drawable/IconCompat;->i(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 8
    iput-object v0, v4, Ln3/k/b/c/b;->e:Landroidx/core/graphics/drawable/IconCompat;

    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    iget-object v3, p0, Le/a/o5/e2/b;->a:Landroid/content/Context;

    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_8

    .line 11
    const-class p1, Lcom/truecaller/ui/TruecallerInit;

    goto :goto_3

    .line 12
    :cond_8
    const-class p1, Lcom/truecaller/messaging/MessagesActivity;

    goto :goto_3

    .line 13
    :cond_9
    const-class p1, Lcom/truecaller/ui/ContactsActivity;

    .line 14
    :goto_3
    invoke-direct {v0, v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "android.intent.action.MAIN"

    .line 15
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x14000000

    .line 16
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-array p1, v2, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 17
    iput-object p1, v4, Ln3/k/b/c/b;->c:[Landroid/content/Intent;

    .line 18
    iget-object p1, v4, Ln3/k/b/c/b;->d:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 19
    iget-object p1, v4, Ln3/k/b/c/b;->c:[Landroid/content/Intent;

    if-eqz p1, :cond_a

    array-length p1, p1

    if-eqz p1, :cond_a

    const-string p1, "ShortcutInfoCompat.Build\u2026ortcut))\n        .build()"

    .line 20
    invoke-static {v4, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    .line 21
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Shortcut must have an intent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Shortcut must have a non-empty label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
