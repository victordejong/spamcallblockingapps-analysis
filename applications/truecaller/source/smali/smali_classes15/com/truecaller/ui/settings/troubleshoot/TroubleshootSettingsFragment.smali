.class public final Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/p/f;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008L\u0010\u0014J\u001d\u0010\u0007\u001a\u00020\u0006*\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J%\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0014J\u000f\u0010\u001f\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0014J\u000f\u0010 \u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008 \u0010\u0014J\u000f\u0010!\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008!\u0010\u0014J\u000f\u0010\"\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0014J\u001d\u0010&\u001a\u00020\u000b2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020$0#H\u0016\u00a2\u0006\u0004\u0008&\u0010\'R\"\u0010/\u001a\u00020(8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\"\u00107\u001a\u0002008\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u001d\u0010=\u001a\u0002088B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<R\u001d\u0010B\u001a\u00020>8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u0010:\u001a\u0004\u0008@\u0010AR\u001d\u0010H\u001a\u00020C8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010GR\u001d\u0010K\u001a\u00020>8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008I\u0010:\u001a\u0004\u0008J\u0010A\u00a8\u0006M"
    }
    d2 = {
        "Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Le/a/e/b/p/f;",
        "Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;",
        "Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;",
        "callerIdState",
        "Landroid/view/View;",
        "QA",
        "(Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;)Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Ls1/s;",
        "onAttach",
        "(Landroid/content/Context;)V",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroyView",
        "()V",
        "onResume",
        "",
        "title",
        "setTitle",
        "(I)V",
        "",
        "options",
        "Tu",
        "(Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;Ljava/util/Set;)V",
        "ri",
        "Bq",
        "Dm",
        "jj",
        "T8",
        "",
        "",
        "permissions",
        "Tv",
        "(Ljava/util/List;)V",
        "Le/a/e/b/p/e;",
        "a",
        "Le/a/e/b/p/e;",
        "OA",
        "()Le/a/e/b/p/e;",
        "setPresenter",
        "(Le/a/e/b/p/e;)V",
        "presenter",
        "Le/a/h5/y;",
        "b",
        "Le/a/h5/y;",
        "getTcPermissionsView",
        "()Le/a/h5/y;",
        "setTcPermissionsView",
        "(Le/a/h5/y;)V",
        "tcPermissionsView",
        "Lcom/truecaller/tcpermissions/PermissionPoller;",
        "f",
        "Ls1/g;",
        "getPermissionPoller",
        "()Lcom/truecaller/tcpermissions/PermissionPoller;",
        "permissionPoller",
        "Landroid/view/ViewOutlineProvider;",
        "d",
        "getContainerOutlineProvider",
        "()Landroid/view/ViewOutlineProvider;",
        "containerOutlineProvider",
        "Le/a/m3/l0;",
        "c",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;",
        "PA",
        "()Le/a/m3/l0;",
        "viewBinding",
        "e",
        "getOptionOutlineProvider",
        "optionOutlineProvider",
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


# static fields
.field public static final synthetic g:[Ls1/a/l;


# instance fields
.field public a:Le/a/e/b/p/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/h5/y;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final c:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Ls1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;

    const-string v2, "viewBinding"

    const-string v3, "getViewBinding()Lcom/truecaller/databinding/FragmentSettingsTroubleshootBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->g:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d01da

    .line 1
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 2
    new-instance v0, Le/a/p5/x0/a;

    new-instance v1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$b;

    invoke-direct {v1}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$b;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->c:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    .line 3
    new-instance v0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->d:Ls1/g;

    .line 4
    new-instance v0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->e:Ls1/g;

    .line 5
    new-instance v0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$c;

    invoke-direct {v0, p0}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$c;-><init>(Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->f:Ls1/g;

    return-void
.end method


# virtual methods
.method public Bq()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Le/a/p5/s0/g;->a1(Landroid/content/Context;ZI)V

    :cond_0
    return-void
.end method

.method public Dm()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "https://support.truecaller.com/hc/en-us/articles/212028169-Live-Caller-ID-is-not-working-All-devices-"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Le/a/e/a2;->S(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method public final OA()Le/a/e/b/p/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->a:Le/a/e/b/p/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final PA()Le/a/m3/l0;
    .locals 3

    iget-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->c:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object v1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->g:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/m3/l0;

    return-object v0
.end method

.method public final QA(Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->PA()Le/a/m3/l0;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :pswitch_0
    iget-object p1, v0, Le/a/m3/l0;->e:Landroid/widget/TextView;

    const-string p2, "textCallRecordingVisitHelp"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, v0, Le/a/m3/l0;->k:Landroid/widget/TextView;

    const-string p2, "textMicPermission"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, v0, Le/a/m3/l0;->l:Landroid/widget/TextView;

    const-string p2, "textStoragePermission"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object p1, v0, Le/a/m3/l0;->d:Landroid/widget/TextView;

    const-string p2, "textAccessibilityService"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :pswitch_4
    iget-object p1, v0, Le/a/m3/l0;->g:Landroid/widget/TextView;

    const-string p2, "textCallerIdVisitHelp"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :pswitch_5
    iget-object p1, v0, Le/a/m3/l0;->h:Landroid/widget/TextView;

    const-string p2, "textDefaultDialer"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :pswitch_6
    iget-object p1, v0, Le/a/m3/l0;->i:Landroid/widget/TextView;

    const-string p2, "textDisableBatteryOpt"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :pswitch_7
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->PA()Le/a/m3/l0;

    move-result-object p1

    .line 11
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 12
    iget-object p1, p1, Le/a/m3/l0;->f:Landroid/widget/TextView;

    const-string p2, "textCallerIdApp"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 13
    :cond_1
    iget-object p1, p1, Le/a/m3/l0;->b:Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;

    const-string p2, "callerIdVariantB"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p1, Le/a/m3/l0;->a:Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;

    const-string p2, "callerIdVariantA"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :pswitch_8
    iget-object p1, v0, Le/a/m3/l0;->j:Landroid/widget/TextView;

    const-string p2, "textDrawOver"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public T8()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/n/g0;->i0(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public Tu(Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;",
            "Ljava/util/Set<",
            "+",
            "Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callerIdState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    invoke-static {}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;->values()[Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 3
    aget-object v3, v1, v2

    .line 4
    invoke-virtual {p0, v3, p1}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->QA(Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-static {v4}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->PA()Le/a/m3/l0;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/l0;->c:Landroidx/constraintlayout/helper/widget/Flow;

    const-string p2, "viewBinding.flowOptions"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/u/i;->R0(Ljava/util/Collection;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Ln3/i/c/b;->setReferencedIds([I)V

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->PA()Le/a/m3/l0;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/l0;->c:Landroidx/constraintlayout/helper/widget/Flow;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public Tv(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->b:Le/a/h5/y;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$d;->b:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$d;

    invoke-interface {v0, p1, v1}, Le/a/h5/y;->c(Ljava/util/List;Ls1/z/b/l;)V

    return-void

    :cond_0
    const-string p1, "tcPermissionsView"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public jj()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://support.truecaller.com/hc/en-us/articles/360001264545"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Le/a/e/a2;->S(Landroid/content/Context;Ljava/lang/String;Z)Z

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
    invoke-interface {p1}, Le/a/l2;->m()Le/a/e/b/p/b;

    move-result-object p1

    .line 4
    check-cast p1, Le/a/t1$w;

    .line 5
    iget-object v0, p1, Le/a/t1$w;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e/b/p/e;

    .line 6
    iput-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->a:Le/a/e/b/p/e;

    .line 7
    iget-object p1, p1, Le/a/t1$w;->a:Le/a/t1;

    .line 8
    iget-object p1, p1, Le/a/t1;->b:Le/a/j2;

    .line 9
    invoke-interface {p1}, Le/a/j2;->K()Le/a/h5/y;

    move-result-object p1

    const-string v0, "Cannot return null from a non-@Nullable component method"

    .line 10
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->b:Le/a/h5/y;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->a:Le/a/e/b/p/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/tcpermissions/PermissionPoller;

    .line 3
    iget-object v1, v0, Lcom/truecaller/tcpermissions/PermissionPoller;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->a:Le/a/e/b/p/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/b/p/e;->onResume()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    new-instance p2, Le/a/e/b/p/c;

    invoke-direct {p2, p0}, Le/a/e/b/p/c;-><init>(Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2}, Le/a/a/m/d;->N4(Landroid/content/Context;Ls1/z/b/a;)Landroid/text/SpannableString;

    move-result-object p2

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->PA()Le/a/m3/l0;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/l0;->a:Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;

    .line 5
    invoke-virtual {v0, p2}, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->setSubtitleWithLink(Landroid/text/SpannableString;)V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->PA()Le/a/m3/l0;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/l0;->b:Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;

    .line 7
    invoke-virtual {v0, p2}, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->setSubtitleWithLink(Landroid/text/SpannableString;)V

    const p2, 0x7f0803d3

    .line 8
    invoke-virtual {v0, p2}, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->setTitleIcon(I)V

    .line 9
    invoke-virtual {v0}, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->a()V

    .line 10
    iget-object p2, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->d:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewOutlineProvider;

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p2, 0x1

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 13
    invoke-static {}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;->values()[Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 14
    aget-object v2, p1, v1

    .line 15
    sget-object v3, Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;->DEFAULT:Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;

    invoke-virtual {p0, v2, v3}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->QA(Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;)Landroid/view/View;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->e:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewOutlineProvider;

    .line 17
    invoke-virtual {v2, v3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 18
    invoke-virtual {v2, p2}, Landroid/view/View;->setClipToOutline(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->PA()Le/a/m3/l0;

    move-result-object p1

    .line 20
    iget-object v1, p1, Le/a/m3/l0;->j:Landroid/widget/TextView;

    new-instance v2, Lq0;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lq0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v1, p1, Le/a/m3/l0;->f:Landroid/widget/TextView;

    new-instance v2, Lq0;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, Lq0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v1, p1, Le/a/m3/l0;->a:Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;

    new-instance v2, Lo2;

    invoke-direct {v2, v0, p0}, Lo2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->setEnableButtonClickListener(Ls1/z/b/l;)V

    .line 23
    iget-object v1, p1, Le/a/m3/l0;->b:Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;

    new-instance v2, Lo2;

    invoke-direct {v2, p2, p0}, Lo2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->setEnableButtonClickListener(Ls1/z/b/l;)V

    .line 24
    iget-object v1, p1, Le/a/m3/l0;->i:Landroid/widget/TextView;

    new-instance v2, Lq0;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Lq0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v1, p1, Le/a/m3/l0;->h:Landroid/widget/TextView;

    new-instance v2, Lq0;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0}, Lq0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v1, p1, Le/a/m3/l0;->g:Landroid/widget/TextView;

    new-instance v2, Lq0;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p0}, Lq0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v1, p1, Le/a/m3/l0;->d:Landroid/widget/TextView;

    new-instance v2, Lq0;

    const/4 v3, 0x7

    invoke-direct {v2, v3, p0}, Lq0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v1, p1, Le/a/m3/l0;->l:Landroid/widget/TextView;

    new-instance v2, Lq0;

    const/16 v3, 0x8

    invoke-direct {v2, v3, p0}, Lq0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v1, p1, Le/a/m3/l0;->k:Landroid/widget/TextView;

    new-instance v2, Lq0;

    invoke-direct {v2, v0, p0}, Lq0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p1, Le/a/m3/l0;->e:Landroid/widget/TextView;

    new-instance v0, Lq0;

    invoke-direct {v0, p2, p0}, Lq0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->a:Le/a/e/b/p/e;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public ri()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->b:Le/a/h5/y;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h5/y;->a()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/tcpermissions/PermissionPoller;

    .line 3
    sget-object v1, Lcom/truecaller/tcpermissions/PermissionPoller$Permission;->DRAW_OVERLAY:Lcom/truecaller/tcpermissions/PermissionPoller$Permission;

    invoke-virtual {v0, v1}, Lcom/truecaller/tcpermissions/PermissionPoller;->a(Lcom/truecaller/tcpermissions/PermissionPoller$Permission;)V

    return-void

    :cond_0
    const-string v0, "tcPermissionsView"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public setTitle(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->PA()Le/a/m3/l0;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/l0;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
