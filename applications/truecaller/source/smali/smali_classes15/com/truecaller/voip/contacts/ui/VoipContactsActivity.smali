.class public final Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/d/d/a/u;


# annotations
.annotation build Lcom/airbnb/deeplinkdispatch/DeepLink;
    value = {
        "truecaller://voicelauncher"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0082\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \u00db\u00012\u00020\u00012\u00020\u0002:\u0001!B\u0008\u00a2\u0006\u0005\u0008\u00da\u0001\u0010\u0014J\'\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0014J\u0019\u0010\u001a\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008!\u0010\u001fJ\u000f\u0010\"\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0014J\u000f\u0010#\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0014J\u000f\u0010$\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u0008$\u0010\u0014J\u000f\u0010%\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u0008%\u0010\u0014J\u000f\u0010&\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0014J\u0017\u0010(\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008(\u0010\u001bJ\u001f\u0010,\u001a\u00020\u00082\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010.\u001a\u00020\u00082\u0006\u0010*\u001a\u00020)H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0019\u00101\u001a\u00020\u00082\u0008\u0008\u0001\u00100\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u00081\u0010\u001bJ\u0017\u00103\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00083\u00104J\u0017\u00105\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00085\u00104J\u0017\u00106\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00086\u00104J\u0017\u00107\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00087\u00104J\u0017\u00108\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00088\u00104J\u0017\u00109\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00089\u00104J\u0017\u0010:\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008:\u00104J\u0017\u0010;\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008;\u00104J\u0017\u0010<\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008<\u00104J\u0017\u0010=\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008=\u00104J\u0017\u0010?\u001a\u00020\u00082\u0006\u0010>\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008?\u00104J\u000f\u0010@\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008@\u0010\u0014J\u000f\u0010A\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008A\u0010\u0014J\u000f\u0010B\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008B\u0010\u0014J\u000f\u0010C\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008C\u0010\u0014J\u000f\u0010D\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008D\u0010\u0014J\u001d\u0010G\u001a\u00020\u00082\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u001c0EH\u0016\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010I\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008I\u0010\u0014J\u000f\u0010J\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008J\u0010\u0014J\u000f\u0010K\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008K\u0010\u0014R\u0016\u0010O\u001a\u00020L8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR)\u0010V\u001a\u000e\u0012\u0004\u0012\u00020Q\u0012\u0004\u0012\u00020Q0P8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010UR\u001c\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020X0W8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00083\u0010YR\"\u0010b\u001a\u00020[8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\\\u0010]\u001a\u0004\u0008^\u0010_\"\u0004\u0008`\u0010aR\u001d\u0010f\u001a\u00020c8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008I\u0010S\u001a\u0004\u0008d\u0010eR\"\u0010n\u001a\u00020g8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008h\u0010i\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR\u0016\u0010r\u001a\u00020o8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u001d\u0010v\u001a\u00020s8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010S\u001a\u0004\u0008t\u0010uR(\u0010\u007f\u001a\u00020w8\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0004\u0008x\u0010y\u0012\u0004\u0008~\u0010\u0014\u001a\u0004\u0008z\u0010{\"\u0004\u0008|\u0010}R\u0018\u0010\u0081\u0001\u001a\u00020o8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0080\u0001\u0010qR\"\u0010\u0086\u0001\u001a\u00030\u0082\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0083\u0001\u0010S\u001a\u0006\u0008\u0084\u0001\u0010\u0085\u0001R \u0010\u0089\u0001\u001a\u00020s8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u0087\u0001\u0010S\u001a\u0005\u0008\u0088\u0001\u0010uR!\u0010\u008b\u0001\u001a\u00020\u00068B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u008a\u0001\u0010S\u001a\u0006\u0008\u008b\u0001\u0010\u008c\u0001R!\u0010\u0090\u0001\u001a\u00020\u00188B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u008d\u0001\u0010S\u001a\u0006\u0008\u008e\u0001\u0010\u008f\u0001R*\u0010\u0098\u0001\u001a\u00030\u0091\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001\"\u0006\u0008\u0096\u0001\u0010\u0097\u0001R*\u0010\u00a0\u0001\u001a\u00030\u0099\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u009a\u0001\u0010\u009b\u0001\u001a\u0006\u0008\u009c\u0001\u0010\u009d\u0001\"\u0006\u0008\u009e\u0001\u0010\u009f\u0001R*\u0010\u00a8\u0001\u001a\u00030\u00a1\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R*\u0010\u00b0\u0001\u001a\u00030\u00a9\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001\u001a\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001\"\u0006\u0008\u00ae\u0001\u0010\u00af\u0001R\u0019\u0010\u00b3\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R-\u0010\u00b6\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u00b4\u0001\u0012\u0005\u0012\u00030\u00b4\u00010P8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\r\n\u0004\u0008!\u0010S\u001a\u0005\u0008\u00b5\u0001\u0010UR\u001a\u0010\u00ba\u0001\u001a\u00030\u00b7\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001R\u001a\u0010\u00be\u0001\u001a\u00030\u00bb\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001R!\u0010\u00c1\u0001\u001a\u00020\u00068B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00bf\u0001\u0010S\u001a\u0006\u0008\u00c0\u0001\u0010\u008c\u0001R*\u0010\u00c9\u0001\u001a\u00030\u00c2\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001\u001a\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001\"\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001R.\u0010\u00cd\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u00ca\u0001\u0012\u0005\u0012\u00030\u00ca\u00010P8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u00cb\u0001\u0010S\u001a\u0005\u0008\u00cc\u0001\u0010UR.\u0010\u00d1\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u00ce\u0001\u0012\u0005\u0012\u00030\u00ce\u00010P8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u00cf\u0001\u0010S\u001a\u0005\u0008\u00d0\u0001\u0010UR*\u0010\u00d9\u0001\u001a\u00030\u00d2\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00d3\u0001\u0010\u00d4\u0001\u001a\u0006\u0008\u00d5\u0001\u0010\u00d6\u0001\"\u0006\u0008\u00d7\u0001\u0010\u00d8\u0001\u00a8\u0006\u00dc\u0001"
    }
    d2 = {
        "Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;",
        "Ln3/b/a/h;",
        "Le/a/d/d/a/u;",
        "Landroid/view/View;",
        "viewToShow",
        "viewToHide",
        "",
        "hideOnEnd",
        "Ls1/s;",
        "pa",
        "(Landroid/view/View;Landroid/view/View;Z)V",
        "",
        "slideOffset",
        "xa",
        "(F)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "()V",
        "onPause",
        "onDestroy",
        "onBackPressed",
        "",
        "drawable",
        "N9",
        "(I)V",
        "",
        "title",
        "setTitle",
        "(Ljava/lang/String;)V",
        "subtitle",
        "c",
        "fa",
        "J1",
        "m1",
        "D0",
        "X1",
        "position",
        "P8",
        "Lcom/truecaller/data/entity/Contact;",
        "contact",
        "context",
        "f4",
        "(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)V",
        "x2",
        "(Lcom/truecaller/data/entity/Contact;)V",
        "textRes",
        "d",
        "visible",
        "i",
        "(Z)V",
        "b4",
        "p7",
        "A2",
        "P3",
        "Y9",
        "h4",
        "j3",
        "W1",
        "G2",
        "draggable",
        "c9",
        "q2",
        "Z7",
        "C1",
        "e0",
        "l0",
        "",
        "numbersToAdd",
        "q8",
        "([Ljava/lang/String;)V",
        "t",
        "Y3",
        "o7",
        "Landroid/content/BroadcastReceiver;",
        "a",
        "Landroid/content/BroadcastReceiver;",
        "closeScreenBroadcast",
        "Le/a/o2/r;",
        "Le/a/d/d/a/a/c/c;",
        "e",
        "Ls1/g;",
        "getCreateGroupBannerAdapterDelegate",
        "()Le/a/o2/r;",
        "createGroupBannerAdapterDelegate",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "bottomSheetBehavior",
        "Le/a/d/d/a/a/b/a;",
        "l",
        "Le/a/d/d/a/a/b/a;",
        "getGroupSelectedContactsAdapterPresenter$truecaller_googlePlayRelease",
        "()Le/a/d/d/a/a/b/a;",
        "setGroupSelectedContactsAdapterPresenter$truecaller_googlePlayRelease",
        "(Le/a/d/d/a/a/b/a;)V",
        "groupSelectedContactsAdapterPresenter",
        "Le/a/m3/h;",
        "ta",
        "()Le/a/m3/h;",
        "bindingContent",
        "Le/a/d/d/a/s;",
        "k",
        "Le/a/d/d/a/s;",
        "wa",
        "()Le/a/d/d/a/s;",
        "setPresenter$truecaller_googlePlayRelease",
        "(Le/a/d/d/a/s;)V",
        "presenter",
        "Ls1/d0/i;",
        "w",
        "Ls1/d0/i;",
        "topGuidelineRange",
        "Le/a/o2/f;",
        "va",
        "()Le/a/o2/f;",
        "groupSelectedContactsAdapter",
        "Le/a/l4/c;",
        "q",
        "Le/a/l4/c;",
        "ra",
        "()Le/a/l4/c;",
        "setAvailabilityManager$truecaller_googlePlayRelease",
        "(Le/a/l4/c;)V",
        "getAvailabilityManager$truecaller_googlePlayRelease$annotations",
        "availabilityManager",
        "v",
        "translationRange",
        "Le/a/m3/g;",
        "s",
        "sa",
        "()Le/a/m3/g;",
        "binding",
        "h",
        "qa",
        "adapter",
        "z",
        "isLightTheme",
        "()Z",
        "x",
        "getIconSize",
        "()I",
        "iconSize",
        "Le/a/d/d/a/a/d/a;",
        "n",
        "Le/a/d/d/a/a/d/a;",
        "getSuggestedBarPresenter$truecaller_googlePlayRelease",
        "()Le/a/d/d/a/a/d/a;",
        "setSuggestedBarPresenter$truecaller_googlePlayRelease",
        "(Le/a/d/d/a/a/d/a;)V",
        "suggestedBarPresenter",
        "Le/a/p5/c;",
        "r",
        "Le/a/p5/c;",
        "ua",
        "()Le/a/p5/c;",
        "setClock$truecaller_googlePlayRelease",
        "(Le/a/p5/c;)V",
        "clock",
        "Le/a/d/d/a/a/d/d;",
        "o",
        "Le/a/d/d/a/a/d/d;",
        "getSuggestedBarAdapterPresenter$truecaller_googlePlayRelease",
        "()Le/a/d/d/a/a/d/d;",
        "setSuggestedBarAdapterPresenter$truecaller_googlePlayRelease",
        "(Le/a/d/d/a/a/d/d;)V",
        "suggestedBarAdapterPresenter",
        "Le/a/d/d/a/a/a/b;",
        "p",
        "Le/a/d/d/a/a/a/b;",
        "getContactsAdapterPresenter$truecaller_googlePlayRelease",
        "()Le/a/d/d/a/a/a/b;",
        "setContactsAdapterPresenter$truecaller_googlePlayRelease",
        "(Le/a/d/d/a/a/a/b;)V",
        "contactsAdapterPresenter",
        "A",
        "Z",
        "isStatusBarSupported",
        "Le/a/d/d/a/a/b/d;",
        "getGroupSelectedContactsDelegate",
        "groupSelectedContactsDelegate",
        "Le/a/b0/q/v;",
        "y",
        "Le/a/b0/q/v;",
        "showBottomSheetOnce",
        "Landroid/view/animation/AccelerateInterpolator;",
        "u",
        "Landroid/view/animation/AccelerateInterpolator;",
        "accelerateInterpolator",
        "b",
        "getShouldForceDarkTheme",
        "shouldForceDarkTheme",
        "Le/a/d/d/a/a/c/a;",
        "m",
        "Le/a/d/d/a/a/c/a;",
        "getGroupBannerPresenter$truecaller_googlePlayRelease",
        "()Le/a/d/d/a/a/c/a;",
        "setGroupBannerPresenter$truecaller_googlePlayRelease",
        "(Le/a/d/d/a/a/c/a;)V",
        "groupBannerPresenter",
        "Le/a/d/d/a/a/a/a;",
        "g",
        "getContactsDelegate",
        "contactsDelegate",
        "Le/a/d/d/a/a/d/c;",
        "f",
        "getSuggestedContactsAdapterDelegate",
        "suggestedContactsAdapterDelegate",
        "Le/a/d/c0/s1;",
        "j",
        "Le/a/d/c0/s1;",
        "getVoipUtil$truecaller_googlePlayRelease",
        "()Le/a/d/c0/s1;",
        "setVoipUtil$truecaller_googlePlayRelease",
        "(Le/a/d/c0/s1;)V",
        "voipUtil",
        "<init>",
        "B",
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
.field public static final B:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;


# instance fields
.field public final A:Z

.field public final a:Landroid/content/BroadcastReceiver;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Ls1/g;

.field public i:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroidx/constraintlayout/widget/ConstraintLayout;",
            ">;"
        }
    .end annotation
.end field

.field public j:Le/a/d/c0/s1;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public k:Le/a/d/d/a/s;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public l:Le/a/d/d/a/a/b/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public m:Le/a/d/d/a/a/c/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public n:Le/a/d/d/a/a/d/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public o:Le/a/d/d/a/a/d/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public p:Le/a/d/d/a/a/a/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public q:Le/a/l4/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public r:Le/a/p5/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final s:Ls1/g;

.field public final t:Ls1/g;

.field public final u:Landroid/view/animation/AccelerateInterpolator;

.field public final v:Ls1/d0/i;

.field public final w:Ls1/d0/i;

.field public final x:Ls1/g;

.field public final y:Le/a/b0/q/v;

.field public final z:Ls1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->B:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$g;

    invoke-direct {v0, p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$g;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->a:Landroid/content/BroadcastReceiver;

    .line 3
    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$n;

    invoke-direct {v0, p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$n;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->b:Ls1/g;

    .line 4
    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$j;

    invoke-direct {v0, p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$j;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->c:Ls1/g;

    .line 5
    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->d:Ls1/g;

    .line 6
    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$i;

    invoke-direct {v0, p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$i;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->e:Ls1/g;

    .line 7
    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$p;

    invoke-direct {v0, p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$p;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->f:Ls1/g;

    .line 8
    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$h;

    invoke-direct {v0, p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$h;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->g:Ls1/g;

    .line 9
    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->h:Ls1/g;

    .line 10
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v3, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$b;

    invoke-direct {v3, p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$b;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v3}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->s:Ls1/g;

    .line 12
    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$f;

    invoke-direct {v0, p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$f;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->t:Ls1/g;

    .line 13
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->u:Landroid/view/animation/AccelerateInterpolator;

    .line 14
    new-instance v0, Ls1/d0/i;

    invoke-direct {v0, v2, v1}, Ls1/d0/i;-><init>(II)V

    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->v:Ls1/d0/i;

    .line 15
    new-instance v0, Ls1/d0/i;

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3}, Ls1/d0/i;-><init>(II)V

    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->w:Ls1/d0/i;

    .line 16
    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$k;

    invoke-direct {v0, p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$k;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->x:Ls1/g;

    .line 17
    new-instance v0, Le/a/b0/q/v;

    new-instance v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$o;

    invoke-direct {v2, p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$o;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    invoke-direct {v0, v2}, Le/a/b0/q/v;-><init>(Ls1/z/b/a;)V

    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->y:Le/a/b0/q/v;

    .line 18
    sget-object v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$l;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$l;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->z:Ls1/g;

    .line 19
    iput-boolean v1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->A:Z

    return-void
.end method


# virtual methods
.method public A2(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/h;->i:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "bindingContent.recyclerViewSelectedGroupContacts"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public C1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v0

    .line 2
    iget-object v1, v0, Le/a/m3/h;->j:Landroidx/cardview/widget/CardView;

    const-string v2, "searchContainer"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->p(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Le/a/m3/h;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "toolbarBottomSheet"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Le/a/m3/h;->j:Landroidx/cardview/widget/CardView;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->pa(Landroid/view/View;Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public D0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->qa()Le/a/o2/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public G2(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v0

    const-string v1, "searchImageView"

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, v0, Le/a/m3/h;->l:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Le/a/m3/h;->l:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public J1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/h;->h:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public N9(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/h;->n:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public P3(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/h;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "bindingContent.groupPlaceHolderTextView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public P8(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o2/r;

    .line 2
    iget-object v0, v0, Le/a/o2/r;->f:Le/a/o2/e;

    invoke-virtual {v0, p1}, Le/a/o2/e;->j(I)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->qa()Le/a/o2/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    return-void
.end method

.method public W1(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/g;->c:Landroid/view/View;

    const-string v1, "binding.bottomShadowView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public X1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o2/r;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Le/a/o2/r;->j(I)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->qa()Le/a/o2/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    return-void
.end method

.method public Y3()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    new-instance v8, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    .line 3
    sget-object v2, Lcom/truecaller/voip/contacts/ui/GroupPickerMode;->CREATE_GROUP:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "voiceLauncherCreateGroup"

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, v8

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;-><init>(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;ILs1/z/c/f;)V

    const/4 v0, 0x2

    and-int/2addr v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "activity"

    .line 5
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "params"

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "ARG_FORCE_DARK_THEME"

    .line 7
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "ARG_VOIP_SCREEN_PARAMS"

    .line 8
    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public Y9(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/h;->q:Landroid/view/View;

    const-string v1, "bindingContent.topShadowView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public Z7()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v0

    .line 2
    iget-object v1, v0, Le/a/m3/h;->j:Landroidx/cardview/widget/CardView;

    const-string v2, "searchContainer"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Le/a/m3/h;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "toolbarBottomSheet"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->pa(Landroid/view/View;Landroid/view/View;Z)V

    .line 3
    iget-object v0, v0, Le/a/m3/h;->k:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v1, "searchFieldEditText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    return-void
.end method

.method public b4(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/h;->d:Le/a/m3/e1;

    .line 2
    iget-object v1, v0, Le/a/m3/e1;->a:Landroid/widget/TextView;

    const-string v2, "emptyScreenDescription"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f1210ca

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f121078

    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, v0, Le/a/m3/e1;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "emptyViewContainer"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "subtitle"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/h;->o:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "bindingContent.toolbarSubtitleTextView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c9(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object v1

    iget-object v1, v1, Le/a/m3/g;->i:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$m;

    invoke-direct {v2, p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$m;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object v1

    iget-object v1, v1, Le/a/m3/g;->i:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->i:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v1, :cond_1

    .line 4
    iput-boolean p1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Z

    return-void

    :cond_1
    const-string p1, "bottomSheetBehavior"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public d(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/g;->i:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->k(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/g;->g:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 3
    iget-object v1, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f:Landroid/view/View;

    iget-object v2, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6
    :cond_0
    iput-object v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f:Landroid/view/View;

    .line 7
    iget-object v1, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->n()V

    return-void
.end method

.method public e0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/h;->k:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v1, "bindingContent.searchFieldEditText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    return-void
.end method

.method public f4(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)V
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->j:Le/a/d/c0/s1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Le/a/d/c0/s1;->h(Ln3/r/a/l;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string p1, "voipUtil"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public fa()V
    .locals 4

    .line 1
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->a:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.truecaller.voip.contacts.ui.VoipContactsActivity#CLOSE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ln3/x/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public h4(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/g;->g:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/g;->g:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()V

    :goto_0
    return-void
.end method

.method public i(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/h;->c:Lcom/truecaller/common/ui/ShimmerLoadingView;

    const-string v1, "bindingContent.contactsShimmerLoadingView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public j3(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/g;->e:Landroid/widget/Button;

    const-string v1, "binding.buttonCreateGroupCall"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public l0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/h;->k:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public m1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->va()Le/a/o2/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public o7()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    new-instance v8, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "voiceLauncherOneToOne"

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;-><init>(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;ILs1/z/c/f;)V

    const/4 v0, 0x2

    and-int/2addr v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "activity"

    .line 3
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "params"

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "ARG_FORCE_DARK_THEME"

    .line 5
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "ARG_VOIP_SCREEN_PARAMS"

    .line 6
    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->k:Le/a/d/d/a/s;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/d/a/s;->P8()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v3, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->b()Le/a/i5/d;

    move-result-object v3

    .line 3
    iget v3, v3, Le/a/i5/d;->d:I

    .line 4
    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const-string v3, "theme"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Le/a/l4/k;->m(Landroid/content/res/Resources$Theme;Z)V

    .line 6
    :goto_0
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object p1

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, p1, Le/a/m3/g;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-class v0, Le/a/j2;

    invoke-static {p1, v0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    new-instance v0, Le/a/d/d/b;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Le/a/d/d/b;-><init>(Le/a/j2;Le/a/d/d/b$a;)V

    .line 15
    invoke-interface {p1}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object p1

    const-string v4, "Cannot return null from a non-@Nullable component method"

    .line 16
    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->j:Le/a/d/c0/s1;

    .line 18
    iget-object p1, v0, Le/a/d/d/b;->p:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/d/a/s;

    .line 19
    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->k:Le/a/d/d/a/s;

    .line 20
    iget-object p1, v0, Le/a/d/d/b;->l:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/d/a/a/b/a;

    .line 21
    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->l:Le/a/d/d/a/a/b/a;

    .line 22
    iget-object p1, v0, Le/a/d/d/b;->h:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/d/a/a/c/a;

    .line 23
    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->m:Le/a/d/d/a/a/c/a;

    .line 24
    iget-object p1, v0, Le/a/d/d/b;->j:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/d/a/a/d/a;

    .line 25
    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->n:Le/a/d/d/a/a/d/a;

    .line 26
    iget-object p1, v0, Le/a/d/d/b;->f:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/d/a/a/d/d;

    .line 27
    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->o:Le/a/d/d/a/a/d/d;

    .line 28
    iget-object p1, v0, Le/a/d/d/b;->d:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/d/a/a/a/b;

    .line 29
    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->p:Le/a/d/d/a/a/a/b;

    .line 30
    iget-object p1, v0, Le/a/d/d/b;->n:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l4/c;

    .line 31
    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->q:Le/a/l4/c;

    .line 32
    iget-object p1, v0, Le/a/d/d/b;->a:Le/a/j2;

    invoke-interface {p1}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object p1

    .line 33
    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->r:Le/a/p5/c;

    .line 35
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/g;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "binding.bottomSheet"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Le/a/d/d/a/o;

    invoke-direct {v0, p1, p0}, Le/a/d/d/a/o;-><init>(Landroid/view/View;Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 38
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/g;->i:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v0, Le/a/d/d/a/k;

    invoke-direct {v0, p0}, Le/a/d/d/a/k;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    invoke-static {p1, v0}, Ln3/k/i/s;->r(Landroid/view/View;Ln3/k/i/n;)V

    .line 39
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/g;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const-string v0, "BottomSheetBehavior.from(binding.bottomSheet)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->i:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x5

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    .line 41
    iget-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->i:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p1, :cond_9

    .line 42
    new-instance v0, Le/a/d/d/a/j;

    invoke-direct {v0, p0}, Le/a/d/d/a/j;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    .line 43
    iget-object v4, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 44
    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/h;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 47
    new-instance v0, Le/a/e/z0;

    const v4, 0x7f0406f4

    .line 48
    invoke-static {p0, v4}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v4

    const v5, 0x7f0d04e0

    invoke-direct {v0, p0, v5, v4}, Le/a/e/z0;-><init>(Landroid/content/Context;II)V

    .line 49
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 50
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 51
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->qa()Le/a/o2/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 52
    new-instance v0, Le/a/d/d/a/i;

    invoke-direct {v0, p0}, Le/a/d/d/a/i;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 53
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/h;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 55
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 56
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 57
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->va()Le/a/o2/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 58
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/h;->j:Landroidx/cardview/widget/CardView;

    const-string v0, "bindingContent.searchContainer"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/h;->b:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Le/a/d/d/a/n;

    invoke-direct {v0, p0}, Le/a/d/d/a/n;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/h;->k:Landroidx/appcompat/widget/AppCompatEditText;

    .line 61
    new-instance v0, Le/a/d/d/a/l;

    invoke-direct {v0, p0}, Le/a/d/d/a/l;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 62
    new-instance v0, Le/a/d/d/a/m;

    invoke-direct {v0, p0}, Le/a/d/d/a/m;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/h;->n:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Ly0;

    invoke-direct {v0, v2, p0}, Ly0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/h;->l:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Ly0;

    invoke-direct {v0, v1, p0}, Ly0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/g;->g:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v0, Ly0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ly0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/g;->e:Landroid/widget/Button;

    new-instance v0, Ly0;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ly0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/g;->i:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v0, Ly0;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Ly0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->xa(F)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_deep_link_flag"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "presenter"

    if-eqz p1, :cond_4

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "intent"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "c"

    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_4

    .line 73
    iget-object v4, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->k:Le/a/d/d/a/s;

    if-eqz v4, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Le/a/d/d/a/s;->x9(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->k:Le/a/d/d/a/s;

    if-eqz p1, :cond_8

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ARG_VOIP_SCREEN_PARAMS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;-><init>(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;ILs1/z/c/f;)V

    :goto_3
    invoke-interface {p1, v0}, Le/a/d/d/a/s;->h9(Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;)V

    .line 76
    invoke-interface {p1, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ARG_UNLOCK_SCREEN"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 78
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_6

    const-string p1, "keyguard"

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/app/KeyguardManager;

    .line 80
    invoke-virtual {p1, p0, v3}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_4

    .line 81
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_7
    :goto_4
    return-void

    .line 82
    :cond_8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_9
    const-string p1, "bottomSheetBehavior"

    .line 83
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ln3/x/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->k:Le/a/d/d/a/s;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 2
    invoke-super {p0}, Ln3/r/a/l;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->y:Le/a/b0/q/v;

    invoke-virtual {v0}, Le/a/b0/q/v;->a()V

    return-void
.end method

.method public p7(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/h;->h:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "bindingContent.recyclerViewContacts"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public final pa(Landroid/view/View;Landroid/view/View;Z)V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 2
    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 5
    new-instance v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$d;

    invoke-direct {v2, p2, v0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$d;-><init>(Landroid/view/View;Landroid/view/animation/AccelerateInterpolator;)V

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v2, 0x96

    .line 8
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 11
    invoke-static {p2}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 12
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 14
    new-instance v4, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$e;

    invoke-direct {v4, p2, p3, v0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$e;-><init>(Landroid/view/View;ZLandroid/view/animation/AccelerateInterpolator;)V

    .line 15
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 17
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public q2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->i:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    return-void

    :cond_0
    const-string v0, "bottomSheetBehavior"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public q8([Ljava/lang/String;)V
    .locals 2

    const-string v0, "numbersToAdd"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ARG_RESULT_NUMBERS"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public final qa()Le/a/o2/f;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->h:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o2/f;

    return-object v0
.end method

.method public final ra()Le/a/l4/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->q:Le/a/l4/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "availabilityManager"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final sa()Le/a/m3/g;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->s:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/m3/g;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/h;->p:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "bindingContent.toolbarTitleTextView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->i:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x0

    const-string v2, "bottomSheetBehavior"

    if-eqz v0, :cond_2

    .line 2
    iget v3, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final ta()Le/a/m3/h;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/m3/h;

    return-object v0
.end method

.method public final ua()Le/a/p5/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->r:Le/a/p5/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "clock"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final va()Le/a/o2/f;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o2/f;

    return-object v0
.end method

.method public final wa()Le/a/d/d/a/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->k:Le/a/d/d/a/s;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public x2(Lcom/truecaller/data/entity/Contact;)V
    .locals 10

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/v/p/n;->a:Le/a/v/p/n;

    .line 2
    sget-object v4, Lcom/truecaller/details_view/analytics/SourceType;->Contacts:Lcom/truecaller/details_view/analytics/SourceType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x60

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    .line 3
    invoke-static/range {v1 .. v9}, Le/a/v/p/n;->c(Le/a/v/p/n;Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;ZZLjava/lang/Boolean;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p0, p1}, Le/a/v/p/n;->e(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final xa(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->u:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p1

    const/4 v0, 0x1

    int-to-float v1, v0

    sub-float/2addr v1, p1

    .line 2
    iget-boolean v2, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->A:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const v2, 0x3f733333    # 0.95f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v3

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object v4

    iget-object v4, v4, Le/a/m3/g;->h:Landroid/view/View;

    const-string v5, "binding.statusBarDummyView"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 4
    iget-object v4, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->z:Ls1/g;

    invoke-interface {v4}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5
    iget-object v4, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->b:Ls1/g;

    invoke-interface {v4}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-string v5, "window"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Le/a/l4/k;->j(Landroid/view/Window;Z)V

    .line 7
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->v:Ls1/d0/i;

    iget-object v4, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->w:Ls1/d0/i;

    .line 8
    invoke-virtual {v2}, Ls1/d0/i;->g()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ls1/d0/i;->h()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v5, v2

    int-to-float v2, v5

    div-float v2, v1, v2

    .line 9
    iget v5, v4, Ls1/d0/g;->b:I

    .line 10
    iget v4, v4, Ls1/d0/g;->a:I

    sub-int/2addr v5, v4

    int-to-float v4, v5

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 11
    invoke-static {p0, v2}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v2

    .line 12
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v4

    iget-object v4, v4, Le/a/m3/h;->f:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    .line 13
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v2

    iget-object v2, v2, Le/a/m3/h;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 14
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 15
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 16
    iget-object v5, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->x:Ls1/g;

    invoke-interface {v5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    .line 17
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18
    iget-object v5, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->x:Ls1/g;

    invoke-interface {v5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v1, v5

    .line 19
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-virtual {p0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object v1

    iget-object v1, v1, Le/a/m3/h;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 22
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    int-to-float v2, v3

    cmpl-float p1, p1, v2

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v3

    .line 23
    :goto_2
    invoke-static {v1, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method
