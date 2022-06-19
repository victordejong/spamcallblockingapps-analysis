.class public final Lcom/truecaller/calling/recorder/CallRecordingsListFragment;
.super Le/a/e/c/l1;
.source "SourceFile"

# interfaces
.implements Le/a/h/g/p;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ed\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f*\u0001b\u0018\u00002\u00020\u00012\u00020\u0002B\u0008\u00a2\u0006\u0005\u0008\u00ba\u0001\u0010\rJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\rJ-\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00132\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\rJ\u000f\u0010\u001a\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\rJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\rJ\u001f\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0010\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010&\u001a\u00020%2\u0006\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u001d\u0010+\u001a\u00020\u00052\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020)0(H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008-\u0010\rJ/\u00104\u001a\u00020\u00052\u0006\u0010/\u001a\u00020.2\u0006\u00101\u001a\u0002002\u0006\u00102\u001a\u00020%2\u0006\u00103\u001a\u00020%H\u0016\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00086\u0010\rJ\u000f\u00107\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00087\u0010\rJ\u000f\u00108\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00088\u0010\rJ\u0017\u0010:\u001a\u00020\u00052\u0006\u00109\u001a\u00020%H\u0017\u00a2\u0006\u0004\u0008:\u0010;J)\u0010@\u001a\u00020\u00052\u0006\u0010<\u001a\u00020%2\u0008\u0010>\u001a\u0004\u0018\u00010=2\u0006\u0010?\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008@\u0010AJ\'\u0010F\u001a\u00020\u00052\u0006\u0010>\u001a\u00020=2\u0006\u0010C\u001a\u00020B2\u0006\u0010E\u001a\u00020DH\u0016\u00a2\u0006\u0004\u0008F\u0010GJ\u0017\u0010I\u001a\u00020\u00052\u0006\u0010H\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008I\u0010;J\u0017\u0010J\u001a\u00020\u00052\u0006\u00109\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008J\u0010;J\u0017\u0010K\u001a\u00020\u00052\u0006\u0010H\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008K\u0010;J\u0017\u0010L\u001a\u00020\u00052\u0006\u0010H\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008L\u0010;J\u000f\u0010M\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008M\u0010\rJ\u0017\u0010O\u001a\u00020\u00052\u0006\u0010N\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008O\u0010;R(\u0010X\u001a\u00020P8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008Q\u0010R\u0012\u0004\u0008W\u0010\r\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR%\u0010^\u001a\n Y*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Z\u0010[\u001a\u0004\u0008\\\u0010]R%\u0010a\u001a\n Y*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008_\u0010[\u001a\u0004\u0008`\u0010]R\u0016\u0010e\u001a\u00020b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008c\u0010dR%\u0010h\u001a\n Y*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008f\u0010[\u001a\u0004\u0008g\u0010]R\u0016\u0010l\u001a\u00020i8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR%\u0010o\u001a\n Y*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008m\u0010[\u001a\u0004\u0008n\u0010]R\u0018\u0010s\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010rR%\u0010v\u001a\n Y*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008t\u0010[\u001a\u0004\u0008u\u0010]R%\u0010y\u001a\n Y*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008w\u0010[\u001a\u0004\u0008x\u0010]R(\u0010~\u001a\u0014\u0012\u0004\u0012\u00020{\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00050z8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008|\u0010}R)\u0010\u0086\u0001\u001a\u00020\u007f8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001\"\u0006\u0008\u0084\u0001\u0010\u0085\u0001R+\u0010\u008b\u0001\u001a\u000c Y*\u0005\u0018\u00010\u0087\u00010\u0087\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0088\u0001\u0010[\u001a\u0006\u0008\u0089\u0001\u0010\u008a\u0001R+\u0010\u0090\u0001\u001a\u000c Y*\u0005\u0018\u00010\u008c\u00010\u008c\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u008d\u0001\u0010[\u001a\u0006\u0008\u008e\u0001\u0010\u008f\u0001R*\u0010\u0098\u0001\u001a\u00030\u0091\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001\"\u0006\u0008\u0096\u0001\u0010\u0097\u0001R(\u0010\u009b\u0001\u001a\n Y*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u0099\u0001\u0010[\u001a\u0005\u0008\u009a\u0001\u0010]R\u001a\u0010\u009f\u0001\u001a\u00030\u009c\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u009e\u0001R*\u0010\u00a7\u0001\u001a\u00030\u00a0\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001\u001a\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001\"\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001R\u001a\u0010\u00ab\u0001\u001a\u00030\u00a8\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R*\u0010\u00b3\u0001\u001a\u00030\u00ac\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001\u001a\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\"\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R(\u0010\u00b6\u0001\u001a\n Y*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u00b4\u0001\u0010[\u001a\u0005\u0008\u00b5\u0001\u0010]R(\u0010\u00b9\u0001\u001a\n Y*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u00b7\u0001\u0010[\u001a\u0005\u0008\u00b8\u0001\u0010]\u00a8\u0006\u00bb\u0001"
    }
    d2 = {
        "Lcom/truecaller/calling/recorder/CallRecordingsListFragment;",
        "Le/a/e/c/l1;",
        "Le/a/h/g/p;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "(Landroid/content/Context;)V",
        "q5",
        "()V",
        "onResume",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onStart",
        "onStop",
        "onDestroyView",
        "Landroid/view/Menu;",
        "menu",
        "Landroid/view/MenuInflater;",
        "onCreateOptionsMenu",
        "(Landroid/view/Menu;Landroid/view/MenuInflater;)V",
        "onPrepareOptionsMenu",
        "(Landroid/view/Menu;)V",
        "Landroid/view/MenuItem;",
        "item",
        "",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "",
        "",
        "items",
        "m6",
        "(Ljava/util/Set;)V",
        "Zw",
        "Lcom/truecaller/data/entity/HistoryEvent;",
        "historyEvent",
        "Lcom/truecaller/details_view/analytics/SourceType;",
        "sourceType",
        "saveToHistory",
        "fetchMoreIfNeeded",
        "Bp",
        "(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/details_view/analytics/SourceType;ZZ)V",
        "g",
        "e",
        "g0",
        "enabled",
        "a6",
        "(Z)V",
        "show",
        "",
        "message",
        "showButton",
        "tx",
        "(ZLjava/lang/String;Z)V",
        "",
        "objectsDeleted",
        "Le/a/h/g/m;",
        "caller",
        "uk",
        "(Ljava/lang/String;Ljava/lang/Object;Le/a/h/g/m;)V",
        "visible",
        "pj",
        "d6",
        "Gw",
        "cj",
        "Ib",
        "shouldShowSpeakerTip",
        "yn",
        "Le/a/l4/c;",
        "u",
        "Le/a/l4/c;",
        "getAvailabilityManager",
        "()Le/a/l4/c;",
        "setAvailabilityManager",
        "(Le/a/l4/c;)V",
        "getAvailabilityManager$annotations",
        "availabilityManager",
        "kotlin.jvm.PlatformType",
        "z",
        "Ls1/g;",
        "getCallRecordingSwitchHolder",
        "()Landroid/view/View;",
        "callRecordingSwitchHolder",
        "J",
        "getSetupButton",
        "setupButton",
        "com/truecaller/calling/recorder/CallRecordingsListFragment$c",
        "Q",
        "Lcom/truecaller/calling/recorder/CallRecordingsListFragment$c;",
        "actionModeCallBack",
        "D",
        "getSpeakerTip",
        "speakerTip",
        "Le/a/o2/a;",
        "M",
        "Le/a/o2/a;",
        "callRecordingsDelegate",
        "B",
        "getPanelToggle",
        "panelToggle",
        "Ln3/b/e/a;",
        "O",
        "Ln3/b/e/a;",
        "currentActionMode",
        "y",
        "getSettingsButton",
        "settingsButton",
        "E",
        "getSpeakerTipOkButton",
        "speakerTipOkButton",
        "Lkotlin/Function2;",
        "Landroid/widget/CompoundButton;",
        "P",
        "Ls1/z/b/p;",
        "callRecordingCheckedListener",
        "Le/a/p5/c;",
        "v",
        "Le/a/p5/c;",
        "getClock",
        "()Le/a/p5/c;",
        "setClock",
        "(Le/a/p5/c;)V",
        "clock",
        "Landroidx/appcompat/widget/SwitchCompat;",
        "A",
        "getCallRecordingSwitch",
        "()Landroidx/appcompat/widget/SwitchCompat;",
        "callRecordingSwitch",
        "Landroid/widget/TextView;",
        "w",
        "getEmptyText",
        "()Landroid/widget/TextView;",
        "emptyText",
        "Le/a/h/g/g;",
        "s",
        "Le/a/h/g/g;",
        "getCallRecordingsListItemPresenter",
        "()Le/a/h/g/g;",
        "setCallRecordingsListItemPresenter",
        "(Le/a/h/g/g;)V",
        "callRecordingsListItemPresenter",
        "C",
        "getPanelInfo",
        "panelInfo",
        "Le/a/o2/f;",
        "N",
        "Le/a/o2/f;",
        "callRecordingsAdapter",
        "Le/a/h/g/o;",
        "r",
        "Le/a/h/g/o;",
        "iB",
        "()Le/a/h/g/o;",
        "setPresenter",
        "(Le/a/h/g/o;)V",
        "presenter",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "L",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "list",
        "Lcom/truecaller/callrecording/CallRecordingManager;",
        "t",
        "Lcom/truecaller/callrecording/CallRecordingManager;",
        "getCallRecordingManager",
        "()Lcom/truecaller/callrecording/CallRecordingManager;",
        "setCallRecordingManager",
        "(Lcom/truecaller/callrecording/CallRecordingManager;)V",
        "callRecordingManager",
        "K",
        "getFixPanel",
        "fixPanel",
        "x",
        "getEmptyView",
        "emptyView",
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
.field public static final synthetic R:I


# instance fields
.field public final A:Ls1/g;

.field public final B:Ls1/g;

.field public final C:Ls1/g;

.field public final D:Ls1/g;

.field public final E:Ls1/g;

.field public final J:Ls1/g;

.field public final K:Ls1/g;

.field public L:Landroidx/recyclerview/widget/RecyclerView;

.field public M:Le/a/o2/a;

.field public N:Le/a/o2/f;

.field public O:Ln3/b/e/a;

.field public final P:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "Landroid/widget/CompoundButton;",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final Q:Lcom/truecaller/calling/recorder/CallRecordingsListFragment$c;

.field public r:Le/a/h/g/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public s:Le/a/h/g/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public t:Lcom/truecaller/callrecording/CallRecordingManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public u:Le/a/l4/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public v:Le/a/p5/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final w:Ls1/g;

.field public final x:Ls1/g;

.field public final y:Ls1/g;

.field public final z:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/e/c/l1;-><init>()V

    const v0, 0x7f0a06ad

    .line 2
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->w:Ls1/g;

    const v0, 0x7f0a06ae

    .line 3
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->x:Ls1/g;

    const v0, 0x7f0a0f57

    .line 4
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->y:Ls1/g;

    const v0, 0x7f0a0336

    .line 5
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->z:Ls1/g;

    const v0, 0x7f0a0335

    .line 6
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->A:Ls1/g;

    const v0, 0x7f0a0cdb

    .line 7
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->B:Ls1/g;

    const v0, 0x7f0a0cd9

    .line 8
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->C:Ls1/g;

    const v0, 0x7f0a107c

    .line 9
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->D:Ls1/g;

    const v0, 0x7f0a1241

    .line 10
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->E:Ls1/g;

    const v0, 0x7f0a0339

    .line 11
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->J:Ls1/g;

    const v0, 0x7f0a0338

    .line 12
    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->K:Ls1/g;

    .line 13
    new-instance v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$d;

    invoke-direct {v0, p0}, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$d;-><init>(Lcom/truecaller/calling/recorder/CallRecordingsListFragment;)V

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->P:Ls1/z/b/p;

    .line 14
    new-instance v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$c;

    invoke-direct {v0, p0}, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$c;-><init>(Lcom/truecaller/calling/recorder/CallRecordingsListFragment;)V

    iput-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->Q:Lcom/truecaller/calling/recorder/CallRecordingsListFragment$c;

    return-void
.end method


# virtual methods
.method public Bp(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/details_view/analytics/SourceType;ZZ)V
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "historyEvent"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sourceType"

    move-object/from16 v9, p2

    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "activity ?: return"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v15, Le/a/v/p/n;->a:Le/a/v/p/n;

    .line 3
    iget-object v2, v0, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 5
    :goto_0
    iget-object v2, v0, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 7
    :goto_1
    iget-object v6, v0, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 8
    iget-object v7, v0, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 9
    iget-object v8, v0, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    const/16 v12, 0xa

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x1c00

    move-object v2, v15

    move-object v3, v1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v17, v15

    move-object v15, v0

    .line 10
    invoke-static/range {v2 .. v16}, Le/a/v/p/n;->d(Le/a/v/p/n;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/details_view/analytics/SourceType;ZZILjava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Landroid/content/Intent;

    move-result-object v0

    move-object/from16 v2, v17

    .line 11
    invoke-virtual {v2, v1, v0}, Le/a/v/p/n;->e(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public Gw(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->J:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "setupButton"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public Ib()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->t:Lcom/truecaller/callrecording/CallRecordingManager;

    if-eqz v1, :cond_0

    const-string v2, "it"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;->LIST:Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;

    const/4 v3, 0x0

    .line 3
    invoke-interface {v1, v0, v2, v3}, Lcom/truecaller/callrecording/CallRecordingManager;->j(Landroid/content/Context;Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "callRecordingManager"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public Zw()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/truecaller/calling/recorder/CallRecordingSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a6(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->s:Le/a/h/g/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iput-boolean p1, v0, Le/a/o2/c;->a:Z

    .line 3
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->N:Le/a/o2/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void

    :cond_0
    const-string p1, "callRecordingsAdapter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "callRecordingsListItemPresenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public cj(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->K:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "fixPanel"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public d6(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->A:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "callRecordingSwitch"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->P:Ls1/z/b/p;

    invoke-static {v0, p1, v1}, Le/a/p5/s0/f;->M(Landroid/widget/CompoundButton;ZLs1/z/b/p;)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->O:Ln3/b/e/a;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->Q:Lcom/truecaller/calling/recorder/CallRecordingsListFragment$c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, v0, Ln3/b/e/a;->a:Ljava/lang/Object;

    .line 3
    instance-of v2, v1, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ln3/b/e/a;->c()V

    :cond_3
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ln3/b/a/h;

    iget-object v1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->Q:Lcom/truecaller/calling/recorder/CallRecordingsListFragment$c;

    invoke-virtual {v0, v1}, Ln3/b/a/h;->startSupportActionMode(Ln3/b/e/a$a;)Ln3/b/e/a;

    return-void
.end method

.method public g0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->O:Ln3/b/e/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln3/b/e/a;->i()V

    :cond_0
    return-void
.end method

.method public final iB()Le/a/h/g/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->r:Le/a/h/g/o;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public m6(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->N:Le/a/o2/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->M:Le/a/o2/a;

    if-eqz v3, :cond_0

    invoke-interface {v3, v0}, Le/a/o2/s;->j(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    goto :goto_0

    :cond_0
    const-string p1, "callRecordingsDelegate"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p1, "callRecordingsAdapter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Lcom/truecaller/ui/SingleActivity;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/truecaller/ui/SingleActivity;

    const v0, 0x7f12092e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Le/a/e/x0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object v1, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {v1}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Le/a/l2;->k()Le/a/k0/k/a;

    move-result-object v1

    .line 4
    check-cast v1, Le/a/t1$e;

    .line 5
    iget-object v2, v1, Le/a/t1$e;->k:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/h/g/o;

    .line 6
    iput-object v2, v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->r:Le/a/h/g/o;

    .line 7
    new-instance v2, Le/a/h/g/g;

    move-object v3, v2

    iget-object v4, v1, Le/a/t1$e;->k:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/h/g/n;

    iget-object v5, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 8
    iget-object v5, v5, Le/a/t1;->b:Le/a/j2;

    .line 9
    invoke-interface {v5}, Le/a/j2;->U1()Le/a/b0/q/h0;

    move-result-object v6

    move-object v5, v6

    const-string v15, "Cannot return null from a non-@Nullable component method"

    .line 10
    invoke-static {v6, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v6, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 12
    iget-object v6, v6, Le/a/t1;->b:Le/a/j2;

    .line 13
    invoke-interface {v6}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v7

    move-object v6, v7

    .line 14
    invoke-static {v7, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iget-object v7, v1, Le/a/t1$e;->k:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/h/b/o;

    iget-object v8, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 16
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 17
    invoke-interface {v8}, Le/a/j2;->I7()Le/a/k0/a/h;

    move-result-object v9

    move-object v8, v9

    .line 18
    invoke-static {v9, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iget-object v9, v1, Le/a/t1$e;->m:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/h/g/b;

    iget-object v10, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 20
    iget-object v10, v10, Le/a/t1;->b:Le/a/j2;

    .line 21
    invoke-interface {v10}, Le/a/j2;->p()Le/a/p5/j0;

    move-result-object v11

    move-object v10, v11

    .line 22
    invoke-static {v11, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iget-object v11, v1, Le/a/t1$e;->k:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/h/g/l;

    iget-object v12, v1, Le/a/t1$e;->k:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/h/b/f;

    iget-object v13, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 24
    iget-object v13, v13, Le/a/t1;->b:Le/a/j2;

    .line 25
    invoke-interface {v13}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v14

    move-object v13, v14

    .line 26
    invoke-static {v14, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iget-object v14, v1, Le/a/t1$e;->n:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/a/f4/g/j;

    move-object/from16 p1, v15

    iget-object v15, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 28
    iget-object v15, v15, Le/a/t1;->b:Le/a/j2;

    .line 29
    invoke-interface {v15}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 p1, v15

    move-object/from16 v23, v2

    move-object/from16 v2, p1

    .line 30
    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iget-object v2, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 32
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 33
    invoke-interface {v2}, Le/a/j2;->I2()Le/a/k0/a/s;

    move-result-object v2

    move-object/from16 v16, v2

    .line 34
    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    iget-object v2, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 36
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 37
    invoke-interface {v2}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v2

    move-object/from16 v17, v2

    .line 38
    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    iget-object v2, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 40
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 41
    invoke-interface {v2}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v2

    move-object/from16 v18, v2

    .line 42
    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    iget-object v2, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 44
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 45
    invoke-interface {v2}, Le/a/j2;->J3()Le/a/z2/a;

    move-result-object v2

    move-object/from16 v19, v2

    .line 46
    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    iget-object v2, v1, Le/a/t1$e;->o:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Le/a/k0/n/e/e;

    iget-object v2, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 48
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 49
    invoke-interface {v2}, Le/a/j2;->Z6()Le/a/k0/i/a;

    move-result-object v2

    move-object/from16 v21, v2

    .line 50
    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    new-instance v2, Le/a/x2/a;

    move-object/from16 v22, v2

    move-object/from16 p1, v3

    iget-object v3, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 52
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 53
    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    .line 54
    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    invoke-direct {v2, v3}, Le/a/x2/a;-><init>(Le/a/o5/f0;)V

    move-object/from16 v3, p1

    .line 56
    invoke-direct/range {v3 .. v22}, Le/a/h/g/g;-><init>(Le/a/h/g/n;Le/a/b0/q/h0;Le/a/p5/c0;Le/a/h/b/o;Le/a/k0/a/h;Le/a/h/g/b;Le/a/p5/j0;Le/a/h/g/l;Le/a/h/b/f;Le/a/r2/l;Le/a/f4/g/j;Ls1/w/f;Le/a/k0/a/s;Lcom/truecaller/callrecording/CallRecordingManager;Ls1/w/f;Le/a/z2/a;Le/a/k0/n/e/e;Le/a/k0/i/a;Le/a/x2/a;)V

    move-object v3, v0

    move-object/from16 v2, v23

    move-object/from16 v0, p0

    .line 57
    iput-object v2, v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->s:Le/a/h/g/g;

    .line 58
    iget-object v2, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 59
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 60
    invoke-interface {v2}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v2

    .line 61
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iput-object v2, v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->t:Lcom/truecaller/callrecording/CallRecordingManager;

    .line 63
    iget-object v2, v1, Le/a/t1$e;->i:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/l4/c;

    .line 64
    iput-object v2, v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->u:Le/a/l4/c;

    .line 65
    iget-object v1, v1, Le/a/t1$e;->a:Le/a/t1;

    .line 66
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 67
    invoke-interface {v1}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v1

    .line 68
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    iput-object v1, v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->v:Le/a/p5/c;

    .line 70
    new-instance v1, Le/a/o2/r;

    .line 71
    iget-object v2, v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->s:Le/a/h/g/g;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const v4, 0x7f0d038a

    .line 72
    new-instance v5, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$e;

    invoke-direct {v5, v0}, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$e;-><init>(Lcom/truecaller/calling/recorder/CallRecordingsListFragment;)V

    .line 73
    sget-object v6, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$f;->b:Lcom/truecaller/calling/recorder/CallRecordingsListFragment$f;

    .line 74
    invoke-direct {v1, v2, v4, v5, v6}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    iput-object v1, v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->M:Le/a/o2/a;

    .line 75
    new-instance v2, Le/a/o2/f;

    if-eqz v1, :cond_0

    invoke-direct {v2, v1}, Le/a/o2/f;-><init>(Le/a/o2/a;)V

    iput-object v2, v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->N:Le/a/o2/f;

    return-void

    :cond_0
    const-string v1, "callRecordingsDelegate"

    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string v1, "callRecordingsListItemPresenter"

    .line 76
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e0007

    .line 1
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d01b9

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/e/x0;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->r:Le/a/h/g/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a009b

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->r:Le/a/h/g/o;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/h/g/o;->Qx()V

    goto :goto_0

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f0a009b

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->r:Le/a/h/g/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h/g/o;->zq()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/e/x0;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->r:Le/a/h/g/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h/g/o;->onResume()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/e/x0;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->r:Le/a/h/g/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/h/g/o;->onStart()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->s:Le/a/h/g/g;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Le/a/h/g/g;->v:Le/a/k0/n/e/e;

    .line 5
    invoke-interface {v0}, Le/a/k0/n/e/e;->onStart()V

    return-void

    :cond_0
    const-string v0, "callRecordingsListItemPresenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "presenter"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->r:Le/a/h/g/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/h/g/o;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->s:Le/a/h/g/g;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Le/a/h/g/g;->v:Le/a/k0/n/e/e;

    .line 4
    invoke-interface {v0}, Le/a/k0/n/e/e;->onStop()V

    .line 5
    invoke-super {p0}, Le/a/e/x0;->onStop()V

    return-void

    :cond_0
    const-string v0, "callRecordingsListItemPresenter"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "presenter"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, "view"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f0a0e02

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.recyclerView)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->L:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->y:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 3
    new-instance p2, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$b;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->L:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    const-string v0, "list"

    if-eqz p1, :cond_3

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 5
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->r:Le/a/h/g/o;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->L:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->N:Le/a/o2/f;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 8
    iget-object p2, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->z:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 9
    new-instance v0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$b;

    invoke-direct {v0, p1, p0}, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->K:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 11
    new-instance p2, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$b;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->J:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 13
    new-instance p2, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$b;

    const/4 v0, 0x3

    invoke-direct {p2, v0, p0}, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->E:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 15
    new-instance p2, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$b;

    const/4 v0, 0x4

    invoke-direct {p2, v0, p0}, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p1, "callRecordingsAdapter"

    .line 16
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string p1, "presenter"

    .line 17
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2
.end method

.method public pj(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->B:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "panelToggle"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->C:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "panelInfo"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public q5()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->N:Le/a/o2/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->s:Le/a/h/g/g;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, v0, Le/a/o2/c;->a:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->g0()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "callRecordingsListItemPresenter"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "callRecordingsAdapter"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public tx(ZLjava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->x:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "emptyView"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->w:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "emptyText"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->y:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const-string v0, "settingsButton"

    .line 7
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->C:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string p2, "panelInfo"

    .line 9
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public uk(Ljava/lang/String;Ljava/lang/Object;Le/a/h/g/m;)V
    .locals 4

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "objectsDeleted"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "caller"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ln3/b/a/g$a;

    const v2, 0x7f1301f7

    invoke-direct {v1, v0, v2}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;I)V

    .line 3
    iget-object v0, v1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    const v0, 0x7f120745

    .line 4
    new-instance v2, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, p3, p2}, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v0, 0x7f1206fb

    .line 5
    new-instance v2, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$a;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1, p3, p2}, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    :cond_0
    return-void
.end method

.method public yn(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->D:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "speakerTip"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method
