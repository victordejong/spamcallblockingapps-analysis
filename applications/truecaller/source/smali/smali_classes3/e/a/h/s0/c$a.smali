.class public final Le/a/h/s0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h/s0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Le/a/h/s0/c$a;Ln3/r/a/l;Lcom/truecaller/data/entity/Contact;Ljava/util/List;ZZZZZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;Ljava/lang/String;ZI)V
    .locals 2

    and-int/lit8 p0, p12, 0x8

    if-eqz p0, :cond_0

    const/4 p4, 0x1

    :cond_0
    and-int/lit8 p0, p12, 0x10

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    move p5, v0

    :cond_1
    and-int/lit8 p0, p12, 0x20

    if-eqz p0, :cond_2

    move p6, v0

    :cond_2
    and-int/lit8 p0, p12, 0x40

    if-eqz p0, :cond_3

    move p7, v0

    :cond_3
    and-int/lit16 p0, p12, 0x80

    if-eqz p0, :cond_4

    move p8, v0

    :cond_4
    and-int/lit16 p0, p12, 0x100

    if-eqz p0, :cond_5

    .line 1
    sget-object p9, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;

    :cond_5
    and-int/lit16 p0, p12, 0x400

    if-eqz p0, :cond_6

    move p11, v0

    :cond_6
    const-string p0, "numbers"

    .line 2
    invoke-static {p3, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p12, "callContextOption"

    invoke-static {p9, p12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p12, "analyticsContext"

    invoke-static {p10, p12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p12, Le/a/h/s0/c;

    invoke-direct {p12}, Le/a/h/s0/c;-><init>()V

    .line 4
    invoke-virtual {p12}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "contact"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    :cond_7
    invoke-virtual {p12}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6
    :cond_8
    invoke-virtual {p12}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_9

    const-string p2, "consider_primary"

    invoke-virtual {p0, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    :cond_9
    invoke-virtual {p12}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_a

    const-string p2, "call"

    invoke-virtual {p0, p2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    :cond_a
    invoke-virtual {p12}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_b

    const-string p2, "video_call"

    invoke-virtual {p0, p2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    :cond_b
    invoke-virtual {p12}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_c

    const-string p2, "sms"

    invoke-virtual {p0, p2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    :cond_c
    invoke-virtual {p12}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_d

    const-string p2, "voip_call"

    invoke-virtual {p0, p2, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    :cond_d
    invoke-virtual {p12}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_e

    const-string p2, "call_context_request"

    invoke-virtual {p0, p2, p9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    :cond_e
    invoke-virtual {p12}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_f

    const-string p2, "analytics_context"

    invoke-virtual {p0, p2, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_f
    invoke-virtual {p12}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_10

    const-string p2, "mode_number_picker"

    invoke-virtual {p0, p2, p11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_10
    const/4 p0, 0x2

    const/4 p2, 0x0

    .line 14
    invoke-static {p12, p1, p2, p0, p2}, Le/a/e/a/c2;->QA(Le/a/e/a/c2;Ln3/r/a/l;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
