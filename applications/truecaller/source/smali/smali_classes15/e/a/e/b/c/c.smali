.class public final Le/a/e/b/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/b/c/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Le/a/o5/n1$a;I)Landroid/content/Intent;
    .locals 4

    const-string v0, "ringtoneType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/e/b/c/c;->a:Landroid/content/Context;

    const-string v2, "context"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    .line 4
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-boolean v2, p2, Le/a/o5/n1$a;->e:Z

    const-string v3, "android.intent.extra.ringtone.SHOW_SILENT"

    .line 6
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    iget v2, p2, Le/a/o5/n1$a;->d:I

    const-string v3, "android.intent.extra.ringtone.TYPE"

    .line 8
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 10
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11
    iget p3, p2, Le/a/o5/n1$a;->d:I

    .line 12
    invoke-static {v1, p3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p3

    .line 13
    sget-object v1, Le/a/o5/n1$a$c;->f:Le/a/o5/n1$a$c;

    invoke-static {p2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    move-object p1, p3

    :cond_0
    const-string p2, "android.intent.extra.ringtone.EXISTING_URI"

    .line 14
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public final b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/e/b/c/c;->a:Landroid/content/Context;

    const-string v1, "context"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    new-array v2, v0, [Le/a/o5/n1$a;

    .line 5
    sget-object v3, Le/a/o5/n1$a$b;->f:Le/a/o5/n1$a$b;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 6
    sget-object v3, Le/a/o5/n1$a$c;->f:Le/a/o5/n1$a$c;

    aput-object v3, v2, v1

    const/4 v3, 0x2

    .line 7
    sget-object v5, Le/a/o5/n1$a$a;->f:Le/a/o5/n1$a$a;

    aput-object v5, v2, v3

    move v3, v4

    :goto_0
    if-ge v3, v0, :cond_1

    .line 8
    aget-object v5, v2, v3

    .line 9
    iget-object v5, v5, Le/a/o5/n1$a;->c:Ljava/lang/String;

    .line 10
    invoke-static {v5, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    const-string p1, "TruecallerMessage"

    goto :goto_2

    :cond_3
    const-string p1, "other"

    :goto_2
    return-object p1
.end method
