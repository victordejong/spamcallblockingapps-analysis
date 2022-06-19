.class public final Le/a/d5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ln3/r/a/k;)Lcom/truecaller/startup_dialogs/StartupDialogType;
    .locals 6

    .line 1
    invoke-static {}, Lcom/truecaller/startup_dialogs/StartupDialogType;->values()[Lcom/truecaller/startup_dialogs/StartupDialogType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x18

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v2, "StartupDialogType"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v4, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2
.end method
