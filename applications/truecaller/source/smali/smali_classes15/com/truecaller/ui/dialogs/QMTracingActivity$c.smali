.class public final Lcom/truecaller/ui/dialogs/QMTracingActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/ui/dialogs/QMTracingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/dialogs/QMTracingActivity;

.field public final synthetic b:Landroid/widget/CheckBox;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/dialogs/QMTracingActivity;Landroid/widget/CheckBox;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$c;->a:Lcom/truecaller/ui/dialogs/QMTracingActivity;

    iput-object p2, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$c;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$c;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lcom/truecaller/ui/dialogs/QMTracingActivity$c;->a:Lcom/truecaller/ui/dialogs/QMTracingActivity;

    .line 2
    iget-object v0, v1, Lcom/truecaller/ui/dialogs/QMTracingActivity$c;->b:Landroid/widget/CheckBox;

    const-string v3, "samplingCheckBox"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 3
    iget-object v0, v1, Lcom/truecaller/ui/dialogs/QMTracingActivity$c;->c:Landroid/widget/EditText;

    const-string v4, "samplingEditText"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4
    sget v0, Lcom/truecaller/ui/dialogs/QMTracingActivity;->g:I

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v7, "Build.MANUFACTURER"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Le/a/e/a2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, "Build.MODEL"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Le/a/e/a2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v5, v2, Lcom/truecaller/ui/dialogs/QMTracingActivity;->f:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".trace"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    const-string v0, "File(path).outputStream().fd"

    invoke-static {v7, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x2000

    const-string v0, "dalvik.system.VMDebug"

    .line 11
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_0
    const-string v0, "allowHiddenApiReflectionFrom"

    new-array v12, v11, [Ljava/lang/Class;

    .line 12
    const-class v13, Ljava/lang/Class;

    aput-object v13, v12, v10

    invoke-virtual {v9, v0, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-virtual {v0, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_1
    const/4 v0, 0x7

    new-array v12, v0, [Ljava/lang/Class;

    .line 14
    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v10

    .line 15
    const-class v13, Ljava/io/FileDescriptor;

    aput-object v13, v12, v11

    .line 16
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/4 v15, 0x3

    aput-object v13, v12, v15

    .line 17
    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x4

    aput-object v16, v12, v17

    const/16 v18, 0x5

    aput-object v13, v12, v18

    const/4 v13, 0x6

    aput-object v16, v12, v13

    const-string v6, "startMethodTracing"

    .line 18
    invoke-virtual {v9, v6, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v10

    aput-object v7, v0, v11

    .line 19
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v14

    .line 20
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v15

    .line 21
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v17

    .line 22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v18

    .line 23
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v0, v13

    const/4 v3, 0x0

    .line 24
    invoke-virtual {v6, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0a0e4b

    .line 25
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/ui/dialogs/QMTracingActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    .line 26
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "path"

    .line 27
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0xc000000

    .line 28
    invoke-static {v2, v0, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 29
    new-instance v3, Ln3/k/a/q;

    iget-object v4, v2, Lcom/truecaller/ui/dialogs/QMTracingActivity;->d:Le/a/h4/n;

    const-string v5, "notificationManager"

    if-eqz v4, :cond_2

    invoke-interface {v4}, Le/a/h4/n;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v4, "Method trace running..."

    .line 30
    invoke-virtual {v3, v4}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const-string v4, "Tap to stop"

    .line 31
    invoke-virtual {v3, v4}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const v4, 0x7f0816fb

    .line 32
    iget-object v6, v3, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v4, v6, Landroid/app/Notification;->icon:I

    .line 33
    iput v14, v3, Ln3/k/a/q;->l:I

    .line 34
    iput-object v0, v3, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 35
    invoke-virtual {v3, v14, v11}, Ln3/k/a/q;->p(IZ)V

    const/16 v0, 0x10

    .line 36
    invoke-virtual {v3, v0, v11}, Ln3/k/a/q;->p(IZ)V

    .line 37
    invoke-virtual {v3}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    .line 38
    iget-object v3, v2, Lcom/truecaller/ui/dialogs/QMTracingActivity;->d:Le/a/h4/n;

    if-eqz v3, :cond_1

    const v4, 0x7f0a0db6

    const-string v5, "it"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4, v0}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    const-string v0, "Method trace started"

    .line 39
    invoke-static {v2, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void

    .line 41
    :cond_1
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v2, 0x0

    throw v2

    :cond_2
    const/4 v2, 0x0

    .line 42
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
