.class public final Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Le/a/h/g/j;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\\\u0010\u001bJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J+\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ+\u0010 \u001a\u00020\u00052\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0017J\u0017\u0010%\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0017J\u0019\u0010(\u001a\u00020\u00052\u0008\u0010\'\u001a\u0004\u0018\u00010&H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010+\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010.\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008.\u0010,J\u000f\u0010/\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008/\u0010\u001bJ\u0017\u00101\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u00081\u0010\u0017R%\u00107\u001a\n 2*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106R%\u0010<\u001a\n 2*\u0004\u0018\u000108088B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u00104\u001a\u0004\u0008:\u0010;R%\u0010@\u001a\n 2*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008=\u00104\u001a\u0004\u0008>\u0010?R\"\u0010H\u001a\u00020A8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR%\u0010M\u001a\n 2*\u0004\u0018\u00010I0I8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u00104\u001a\u0004\u0008K\u0010LR%\u0010P\u001a\n 2*\u0004\u0018\u00010I0I8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008N\u00104\u001a\u0004\u0008O\u0010LR%\u0010U\u001a\n 2*\u0004\u0018\u00010Q0Q8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008R\u00104\u001a\u0004\u0008S\u0010TR%\u0010X\u001a\n 2*\u0004\u0018\u000108088B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008V\u00104\u001a\u0004\u0008W\u0010;R%\u0010[\u001a\n 2*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u00104\u001a\u0004\u0008Z\u00106\u00a8\u0006]"
    }
    d2 = {
        "Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Le/a/h/g/j;",
        "Landroid/content/Context;",
        "context",
        "Ls1/s;",
        "onAttach",
        "(Landroid/content/Context;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "canChangeAudioSource",
        "Qp",
        "(Z)V",
        "visible",
        "ia",
        "onDestroyView",
        "()V",
        "",
        "Le/a/e/c2/i0;",
        "configItems",
        "sourceItems",
        "Eu",
        "(Ljava/util/List;Ljava/util/List;)V",
        "autoRecording",
        "m4",
        "shouldShowRecordedNotification",
        "Gk",
        "",
        "path",
        "Ai",
        "(Ljava/lang/String;)V",
        "config",
        "yj",
        "(Le/a/e/c2/i0;)V",
        "audioSource",
        "Zk",
        "onResume",
        "show",
        "hm",
        "kotlin.jvm.PlatformType",
        "f",
        "Ls1/g;",
        "getSettingAutoRecordingEnabledSwitchHolder",
        "()Landroid/view/ViewGroup;",
        "settingAutoRecordingEnabledSwitchHolder",
        "Landroidx/appcompat/widget/SwitchCompat;",
        "i",
        "getSettingNotificationEnabledSwitch",
        "()Landroidx/appcompat/widget/SwitchCompat;",
        "settingNotificationEnabledSwitch",
        "c",
        "getSettingsCallRecordingStoragePathContainer",
        "()Landroid/view/View;",
        "settingsCallRecordingStoragePathContainer",
        "Le/a/h/g/i;",
        "a",
        "Le/a/h/g/i;",
        "OA",
        "()Le/a/h/g/i;",
        "setPresenter",
        "(Le/a/h/g/i;)V",
        "presenter",
        "Lcom/truecaller/ui/components/ComboBase;",
        "e",
        "QA",
        "()Lcom/truecaller/ui/components/ComboBase;",
        "settingsCallRecordingConfiguration",
        "d",
        "PA",
        "settingsCallRecordingAudioSource",
        "Landroid/widget/TextView;",
        "b",
        "getSettingRecordingStoragePathDescription",
        "()Landroid/widget/TextView;",
        "settingRecordingStoragePathDescription",
        "g",
        "getSettingAutoRecordingEnabledSwitch",
        "settingAutoRecordingEnabledSwitch",
        "h",
        "getSettingNotificationEnabledSwitchHolder",
        "settingNotificationEnabledSwitchHolder",
        "<init>",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/h/g/i;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Ls1/g;

.field public final i:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const v0, 0x7f0a0f3e

    .line 2
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->b:Ls1/g;

    const v0, 0x7f0a0f5a

    .line 3
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->c:Ls1/g;

    const v0, 0x7f0a0f58

    .line 4
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->d:Ls1/g;

    const v0, 0x7f0a0f59

    .line 5
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->e:Ls1/g;

    const v0, 0x7f0a0f38

    .line 6
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->f:Ls1/g;

    const v0, 0x7f0a0f37

    .line 7
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->g:Ls1/g;

    const v0, 0x7f0a0f3d

    .line 8
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->h:Ls1/g;

    const v0, 0x7f0a0f3c

    .line 9
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->i:Ls1/g;

    return-void
.end method


# virtual methods
.method public Ai(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "settingRecordingStoragePathDescription"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public Eu(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/e/c2/i0;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Le/a/e/c2/i0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "configItems"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceItems"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->QA()Lcom/truecaller/ui/components/ComboBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/truecaller/ui/components/ComboBase;->setData(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->PA()Lcom/truecaller/ui/components/ComboBase;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/truecaller/ui/components/ComboBase;->setData(Ljava/util/List;)V

    return-void
.end method

.method public Gk(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->i:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "settingNotificationEnabledSwitch"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$d;

    invoke-direct {v1, p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$d;-><init>(Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;)V

    invoke-static {v0, p1, v1}, Le/a/p5/s0/f;->M(Landroid/widget/CompoundButton;ZLs1/z/b/p;)V

    return-void
.end method

.method public final OA()Le/a/h/g/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->a:Le/a/h/g/i;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final PA()Lcom/truecaller/ui/components/ComboBase;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/ui/components/ComboBase;

    return-object v0
.end method

.method public final QA()Lcom/truecaller/ui/components/ComboBase;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/ui/components/ComboBase;

    return-object v0
.end method

.method public Qp(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->PA()Lcom/truecaller/ui/components/ComboBase;

    move-result-object v0

    const-string v1, "settingsCallRecordingAudioSource"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public Zk(Le/a/e/c2/i0;)V
    .locals 2

    const-string v0, "audioSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->PA()Lcom/truecaller/ui/components/ComboBase;

    move-result-object v0

    const-string v1, "settingsCallRecordingAudioSource"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/truecaller/ui/components/ComboBase;->setSelection(Le/a/e/c2/i0;)V

    return-void
.end method

.method public hm(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a07e9

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->J(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.truecaller.ui.settings.troubleshoot.TroubleshootSettingsFragment"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    .line 2
    sget-object v1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;->DRAW_OVER:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    sget-object v1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;->DISABLE_BATTERY_OPT:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    sget-object v1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;->ACCESSIBILITY_SERVICE:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 5
    sget-object v1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;->MIC_PERMISSION:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 6
    sget-object v1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;->STORAGE_PERMISSION:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 7
    sget-object v1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;->CALL_RECORDING_VISIT_HELP_CENTER:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 8
    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "options"

    .line 9
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p1, p1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->a:Le/a/e/b/p/e;

    if-eqz p1, :cond_0

    const v1, 0x7f120945

    invoke-interface {p1, v1, v0}, Le/a/e/b/p/e;->Jg(ILjava/util/Set;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public ia(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->QA()Lcom/truecaller/ui/components/ComboBase;

    move-result-object v0

    const-string v1, "settingsCallRecordingConfiguration"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public m4(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$c;

    invoke-direct {v1, p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$c;-><init>(Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;)V

    invoke-static {v0, p1, v1}, Le/a/p5/s0/f;->M(Landroid/widget/CompoundButton;ZLs1/z/b/p;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    sget-object p1, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {p1}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Le/a/l2;->k()Le/a/k0/k/a;

    move-result-object p1

    .line 4
    check-cast p1, Le/a/t1$e;

    .line 5
    iget-object p1, p1, Le/a/t1$e;->s:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/g/i;

    .line 6
    iput-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->a:Le/a/h/g/i;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d01d9

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026ording, container, false)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->a:Le/a/h/g/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->a:Le/a/h/g/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h/g/i;->z5()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->QA()Lcom/truecaller/ui/components/ComboBase;

    move-result-object p1

    new-instance p2, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$b;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/truecaller/ui/components/ComboBase;->a(Lcom/truecaller/ui/components/ComboBase$a;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->PA()Lcom/truecaller/ui/components/ComboBase;

    move-result-object p1

    new-instance p2, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$b;

    const/4 v1, 0x1

    invoke-direct {p2, v1, p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/truecaller/ui/components/ComboBase;->a(Lcom/truecaller/ui/components/ComboBase$a;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->f:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 5
    new-instance p2, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$a;

    invoke-direct {p2, v0, p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->h:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 7
    new-instance p2, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$a;

    invoke-direct {p2, v1, p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->QA()Lcom/truecaller/ui/components/ComboBase;

    move-result-object p1

    const p2, 0x7f0d0394

    invoke-virtual {p1, p2}, Lcom/truecaller/ui/components/ComboBase;->setListItemLayoutRes(I)V

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->PA()Lcom/truecaller/ui/components/ComboBase;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/truecaller/ui/components/ComboBase;->setListItemLayoutRes(I)V

    .line 10
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->c:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string p2, "settingsCallRecordingStoragePathContainer"

    .line 11
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 12
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->f:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const-string p2, "settingAutoRecordingEnabledSwitchHolder"

    .line 13
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 14
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->h:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const-string p2, "settingNotificationEnabledSwitchHolder"

    .line 15
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 16
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->a:Le/a/h/g/i;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public yj(Le/a/e/c2/i0;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/calling/recorder/CallRecordingSettingsFragment;->QA()Lcom/truecaller/ui/components/ComboBase;

    move-result-object v0

    const-string v1, "settingsCallRecordingConfiguration"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/truecaller/ui/components/ComboBase;->setSelection(Le/a/e/c2/i0;)V

    return-void
.end method
