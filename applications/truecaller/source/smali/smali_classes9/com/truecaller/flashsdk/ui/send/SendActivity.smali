.class public final Lcom/truecaller/flashsdk/ui/send/SendActivity;
.super Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;
.source "SourceFile"

# interfaces
.implements Le/a/y/a/j/o;
.implements Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView$a;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/flashsdk/ui/send/SendActivity$c;,
        Lcom/truecaller/flashsdk/ui/send/SendActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity<",
        "Le/a/y/a/j/o;",
        "Le/a/y/a/j/t;",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;",
        ">;",
        "Le/a/y/a/j/o;",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView$a;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/location/LocationSettingsResponse;",
        ">;",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;",
        "Lcom/google/android/gms/maps/OnMapReadyCallback;",
        "Landroid/view/ActionMode$Callback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00c4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0008\u0012*\u0004\u00a8\u0001\u00ac\u0001\u0018\u0000 \u00ba\u00012\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00022\u00020\u00052\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u00020\u00082\u00020\t2\u00020\n:\u0004\u00bb\u0001\u00bc\u0001B\u0008\u00a2\u0006\u0005\u0008\u00b9\u0001\u0010\u0011J\u0019\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001f\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\u000f\u0010\u001c\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u0011J\u000f\u0010\u001d\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008\u001d\u0010\u0011J\u000f\u0010\u001e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0011J#\u0010$\u001a\u00020#2\u0008\u0010 \u001a\u0004\u0018\u00010\u001f2\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008$\u0010%J#\u0010(\u001a\u00020#2\u0008\u0010 \u001a\u0004\u0018\u00010\u001f2\u0008\u0010\'\u001a\u0004\u0018\u00010&H\u0016\u00a2\u0006\u0004\u0008(\u0010)J#\u0010*\u001a\u00020#2\u0008\u0010 \u001a\u0004\u0018\u00010\u001f2\u0008\u0010\'\u001a\u0004\u0018\u00010&H\u0016\u00a2\u0006\u0004\u0008*\u0010)J\u0019\u0010+\u001a\u00020\r2\u0008\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016\u00a2\u0006\u0004\u0008+\u0010,J/\u00102\u001a\u00020\r2\u0006\u0010-\u001a\u00020\u00152\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020.2\u0006\u00101\u001a\u00020.H\u0016\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00084\u0010\u0011J\u0017\u00106\u001a\u00020\r2\u0006\u00105\u001a\u00020#H\u0016\u00a2\u0006\u0004\u00086\u00107J\u000f\u00108\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00088\u0010\u0011J\u000f\u00109\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00089\u0010\u0011J\u000f\u0010:\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008:\u0010\u0011J\u000f\u0010;\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008;\u0010\u0011J\u000f\u0010<\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008<\u0010\u0011J\u000f\u0010=\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008=\u0010\u0011J\u000f\u0010>\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008>\u0010\u0011J\u0017\u0010@\u001a\u00020\r2\u0006\u0010?\u001a\u00020.H\u0016\u00a2\u0006\u0004\u0008@\u0010AJ\u000f\u0010B\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008B\u0010\u0011J\u0017\u0010E\u001a\u00020\r2\u0006\u0010D\u001a\u00020CH\u0016\u00a2\u0006\u0004\u0008E\u0010FJ\u0017\u0010H\u001a\u00020\r2\u0006\u0010G\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008H\u00107J\u0017\u0010K\u001a\u00020\r2\u0006\u0010J\u001a\u00020IH\u0016\u00a2\u0006\u0004\u0008K\u0010LJ\u001f\u0010O\u001a\u00020\r2\u0006\u0010M\u001a\u00020\u00152\u0006\u0010N\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008O\u0010\u0019J\'\u0010S\u001a\u00020\r2\u0006\u0010P\u001a\u00020\u00152\u0006\u0010Q\u001a\u00020\u00152\u0006\u0010R\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008S\u0010TJ\u000f\u0010U\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008U\u0010\u0011J\u0019\u0010X\u001a\u00020\r2\u0008\u0010W\u001a\u0004\u0018\u00010VH\u0016\u00a2\u0006\u0004\u0008X\u0010YJ\u000f\u0010Z\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008Z\u0010\u0011J\u000f\u0010[\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008[\u0010\u0011J7\u0010b\u001a\u00020\r2\u0006\u0010\\\u001a\u00020\u00152\u0006\u0010]\u001a\u00020\u00152\u0006\u0010^\u001a\u00020#2\u0006\u0010`\u001a\u00020_2\u0006\u0010a\u001a\u00020_H\u0016\u00a2\u0006\u0004\u0008b\u0010cJ\u000f\u0010d\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008d\u0010\u0011J\u0017\u0010f\u001a\u00020\r2\u0006\u0010e\u001a\u00020.H\u0016\u00a2\u0006\u0004\u0008f\u0010AJ\u0017\u0010g\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008g\u0010hJ\u000f\u0010i\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008i\u0010\u0011J\u000f\u0010j\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008j\u0010\u0011J\u000f\u0010k\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008k\u0010\u0011J\u0017\u0010m\u001a\u00020\r2\u0006\u0010l\u001a\u00020.H\u0016\u00a2\u0006\u0004\u0008m\u0010AJ\u0017\u0010p\u001a\u00020\r2\u0006\u0010o\u001a\u00020nH\u0016\u00a2\u0006\u0004\u0008p\u0010qJ\u000f\u0010r\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008r\u0010\u0011J\u000f\u0010s\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008s\u0010\u0011J!\u0010v\u001a\u00020\r2\u0006\u0010t\u001a\u00020.2\u0008\u0008\u0001\u0010u\u001a\u00020.H\u0016\u00a2\u0006\u0004\u0008v\u0010wJ\u0017\u0010z\u001a\u00020\r2\u0006\u0010y\u001a\u00020xH\u0016\u00a2\u0006\u0004\u0008z\u0010{J\u000f\u0010|\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008|\u0010\u0011J\u000f\u0010}\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008}\u0010\u0011J\u000f\u0010~\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008~\u0010\u0011J\u000f\u0010\u007f\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u007f\u0010\u0011J\u0011\u0010\u0080\u0001\u001a\u00020\rH\u0016\u00a2\u0006\u0005\u0008\u0080\u0001\u0010\u0011J\"\u0010\u0081\u0001\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010G\u001a\u00020#H\u0016\u00a2\u0006\u0006\u0008\u0081\u0001\u0010\u0082\u0001J\u0011\u0010\u0083\u0001\u001a\u00020\rH\u0016\u00a2\u0006\u0005\u0008\u0083\u0001\u0010\u0011J\u0011\u0010\u0084\u0001\u001a\u00020\rH\u0016\u00a2\u0006\u0005\u0008\u0084\u0001\u0010\u0011J#\u0010\u0087\u0001\u001a\u00020\r2\u0007\u0010\u0085\u0001\u001a\u00020\u00152\u0007\u0010\u0086\u0001\u001a\u00020\u0015H\u0016\u00a2\u0006\u0005\u0008\u0087\u0001\u0010\u0019J\u001a\u0010\u0089\u0001\u001a\u00020\r2\u0007\u0010\u0088\u0001\u001a\u00020\u0015H\u0016\u00a2\u0006\u0005\u0008\u0089\u0001\u0010hJ\u0011\u0010\u008a\u0001\u001a\u00020\rH\u0014\u00a2\u0006\u0005\u0008\u008a\u0001\u0010\u0011J\u0011\u0010\u008b\u0001\u001a\u00020\rH\u0014\u00a2\u0006\u0005\u0008\u008b\u0001\u0010\u0011J3\u0010\u008d\u0001\u001a\u00020\r2\u0006\u0010M\u001a\u00020\u00152\u0007\u0010\u008c\u0001\u001a\u00020\u00152\u0006\u0010Q\u001a\u00020\u00152\u0006\u0010R\u001a\u00020\u0015H\u0016\u00a2\u0006\u0006\u0008\u008d\u0001\u0010\u008e\u0001R\u001a\u0010\u0092\u0001\u001a\u00030\u008f\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0090\u0001\u0010\u0091\u0001R\u0019\u0010\u0095\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001R\u001c\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u001b\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009a\u0001\u0010\u0094\u0001R\u001a\u0010\u009d\u0001\u001a\u00030\u0096\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u0098\u0001R\u0019\u0010\u009f\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u0094\u0001R\u001a\u0010\u00a1\u0001\u001a\u00030\u0096\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u0098\u0001R\u001a\u0010\u00a3\u0001\u001a\u00030\u008f\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u0091\u0001R\u001c\u0010\u00a7\u0001\u001a\u0005\u0018\u00010\u00a4\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001R\u001a\u0010\u00ab\u0001\u001a\u00030\u00a8\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R\u001a\u0010\u00af\u0001\u001a\u00030\u00ac\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001R\u0019\u0010\u00b1\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u0094\u0001R\u0019\u0010\u00b3\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u0094\u0001R\u001a\u0010\u00b5\u0001\u001a\u00030\u0096\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0001\u0010\u0098\u0001R\u001b\u0010\u00b8\u0001\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001\u00a8\u0006\u00bd\u0001"
    }
    d2 = {
        "Lcom/truecaller/flashsdk/ui/send/SendActivity;",
        "Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;",
        "Le/a/y/a/j/o;",
        "Le/a/y/a/j/t;",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView$a;",
        "Lcom/google/android/gms/tasks/OnCompleteListener;",
        "Lcom/google/android/gms/location/LocationSettingsResponse;",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;",
        "Lcom/google/android/gms/maps/OnMapReadyCallback;",
        "Landroid/view/ActionMode$Callback;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "g0",
        "()V",
        "Landroid/view/View;",
        "ua",
        "()Landroid/view/View;",
        "",
        "imageUrl",
        "message",
        "O4",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "videoUrl",
        "d5",
        "onStart",
        "onResume",
        "c8",
        "Landroid/view/ActionMode;",
        "mode",
        "Landroid/view/MenuItem;",
        "item",
        "",
        "onActionItemClicked",
        "(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z",
        "Landroid/view/Menu;",
        "menu",
        "onCreateActionMode",
        "(Landroid/view/ActionMode;Landroid/view/Menu;)Z",
        "onPrepareActionMode",
        "onDestroyActionMode",
        "(Landroid/view/ActionMode;)V",
        "text",
        "",
        "initialSelectionStart",
        "initialSelectionEnd",
        "finalSelectionEnd",
        "N4",
        "(Ljava/lang/String;III)V",
        "N0",
        "cursorVisible",
        "l5",
        "(Z)V",
        "p8",
        "B2",
        "o9",
        "p0",
        "C8",
        "w8",
        "e0",
        "position",
        "v2",
        "(I)V",
        "u1",
        "Le/a/y/e/i;",
        "emoticon",
        "s",
        "(Le/a/y/e/i;)V",
        "enable",
        "A0",
        "",
        "size",
        "E3",
        "(F)V",
        "placeName",
        "locationImageUrl",
        "R9",
        "location",
        "lat",
        "long",
        "A5",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "m9",
        "Lcom/google/android/gms/maps/GoogleMap;",
        "map",
        "O3",
        "(Lcom/google/android/gms/maps/GoogleMap;)V",
        "B5",
        "F9",
        "history",
        "name",
        "isFirstFlashSent",
        "",
        "timeLeft",
        "toPhone",
        "T3",
        "(Ljava/lang/String;Ljava/lang/String;ZJJ)V",
        "b5",
        "notificationId",
        "e3",
        "o",
        "(Ljava/lang/String;)V",
        "Y6",
        "P5",
        "t1",
        "color",
        "h2",
        "Lcom/truecaller/flashsdk/models/ImageFlash;",
        "imageFlash",
        "V5",
        "(Lcom/truecaller/flashsdk/models/ImageFlash;)V",
        "z0",
        "la",
        "drawable",
        "headerTextColor",
        "q5",
        "(II)V",
        "Landroid/net/Uri;",
        "uri",
        "Z0",
        "(Landroid/net/Uri;)V",
        "T4",
        "p5",
        "T7",
        "U9",
        "M4",
        "J7",
        "(Ljava/lang/String;Z)V",
        "g9",
        "J9",
        "url",
        "description",
        "D5",
        "hint",
        "c5",
        "onPause",
        "onDestroy",
        "locationMessage",
        "j5",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/widget/ImageView;",
        "z",
        "Landroid/widget/ImageView;",
        "closeReplyContact",
        "C",
        "Landroid/view/View;",
        "emojiContainer",
        "Landroid/widget/EditText;",
        "D",
        "Landroid/widget/EditText;",
        "mapContentTextSendV2",
        "E",
        "mapContainerV2",
        "x",
        "videoText",
        "A",
        "imageContainerV2",
        "v",
        "flashText",
        "B",
        "imageContentV2",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;",
        "K",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;",
        "flashAddImageButton",
        "com/truecaller/flashsdk/ui/send/SendActivity$f",
        "L",
        "Lcom/truecaller/flashsdk/ui/send/SendActivity$f;",
        "newIncomingFlashReceiver",
        "com/truecaller/flashsdk/ui/send/SendActivity$m",
        "M",
        "Lcom/truecaller/flashsdk/ui/send/SendActivity$m;",
        "uploadMediaReceiver",
        "y",
        "bodyContainer",
        "u",
        "rootView",
        "w",
        "imageText",
        "J",
        "Landroid/view/ActionMode;",
        "actionMode",
        "<init>",
        "N",
        "b",
        "c",
        "flash_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final N:Lcom/truecaller/flashsdk/ui/send/SendActivity$b;


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroid/widget/ImageView;

.field public C:Landroid/view/View;

.field public D:Landroid/widget/EditText;

.field public E:Landroid/view/View;

.field public J:Landroid/view/ActionMode;

.field public K:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;

.field public final L:Lcom/truecaller/flashsdk/ui/send/SendActivity$f;

.field public final M:Lcom/truecaller/flashsdk/ui/send/SendActivity$m;

.field public u:Landroid/view/View;

.field public v:Landroid/widget/EditText;

.field public w:Landroid/widget/EditText;

.field public x:Landroid/widget/EditText;

.field public y:Landroid/view/View;

.field public z:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/flashsdk/ui/send/SendActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/flashsdk/ui/send/SendActivity$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->N:Lcom/truecaller/flashsdk/ui/send/SendActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/flashsdk/ui/send/SendActivity$f;

    invoke-direct {v0, p0}, Lcom/truecaller/flashsdk/ui/send/SendActivity$f;-><init>(Lcom/truecaller/flashsdk/ui/send/SendActivity;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->L:Lcom/truecaller/flashsdk/ui/send/SendActivity$f;

    .line 3
    new-instance v0, Lcom/truecaller/flashsdk/ui/send/SendActivity$m;

    invoke-direct {v0, p0}, Lcom/truecaller/flashsdk/ui/send/SendActivity$m;-><init>(Lcom/truecaller/flashsdk/ui/send/SendActivity;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->M:Lcom/truecaller/flashsdk/ui/send/SendActivity$m;

    return-void
.end method

.method public static final synthetic wa(Lcom/truecaller/flashsdk/ui/send/SendActivity;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "flashText"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public A0(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    invoke-virtual {v0, p1}, Le/a/y/a/g/d;->n1(Z)V

    return-void
.end method

.method public A5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "location"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lat"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "long"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/flashsdk/ui/send/SendActivity$c;

    invoke-direct {v0, p0, p1}, Lcom/truecaller/flashsdk/ui/send/SendActivity$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->s:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_9

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->E:Landroid/view/View;

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->D:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->y:Landroid/view/View;

    const/4 v8, 0x0

    if-eqz p1, :cond_8

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->va()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->K:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->C:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->z:Landroid/widget/ImageView;

    const-string v9, "closeReplyContact"

    if-eqz p1, :cond_5

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    .line 12
    invoke-virtual {p1}, Le/a/y/a/g/d;->getSendLocation()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->D:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Le/a/y/a/g/d;->n1(Z)V

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->c(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 16
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Le/a/m0/a1$k;->e1(Lcom/google/android/gms/maps/GoogleMap;DDZ)V

    .line 17
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->z:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    new-instance v1, Lcom/truecaller/flashsdk/ui/send/SendActivity$j;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/truecaller/flashsdk/ui/send/SendActivity$j;-><init>(Lcom/truecaller/flashsdk/ui/send/SendActivity;Lcom/truecaller/flashsdk/ui/send/SendActivity$c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->D:Landroid/widget/EditText;

    if-eqz p1, :cond_9

    .line 19
    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 20
    new-instance p2, Lcom/truecaller/flashsdk/ui/send/SendActivity$k;

    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object p3

    check-cast p3, Le/a/y/a/j/t;

    invoke-direct {p2, p3}, Lcom/truecaller/flashsdk/ui/send/SendActivity$k;-><init>(Le/a/y/a/j/t;)V

    invoke-static {p1, p2}, Le/a/m0/a1$k;->j(Landroid/widget/EditText;Ls1/z/b/l;)V

    .line 21
    invoke-static {p1}, Le/a/m0/a1$k;->d1(Landroid/widget/EditText;)V

    goto :goto_0

    .line 22
    :cond_4
    invoke-static {v9}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    .line 23
    :cond_5
    invoke-static {v9}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :cond_6
    const-string p1, "emojiContainer"

    .line 24
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :cond_7
    const-string p1, "flashText"

    .line 25
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :cond_8
    const-string p1, "bodyContainer"

    .line 26
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :cond_9
    :goto_0
    return-void
.end method

.method public B2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/truecaller/flashsdk/ui/send/SendActivity$g;

    invoke-direct {v1, p0}, Lcom/truecaller/flashsdk/ui/send/SendActivity$g;-><init>(Lcom/truecaller/flashsdk/ui/send/SendActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-string v0, "flashText"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public B5()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    const/4 v1, 0x0

    const-string v2, "flashText"

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->sa()Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    invoke-virtual {v0, v3}, Le/a/y/a/g/d;->o1(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    iget-object v3, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Le/a/y/a/g/d;->n1(Z)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public C8()V
    .locals 7

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$string;->tip_send_edit_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.tip_send_edit_text)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v1, Lcom/truecaller/flashsdk/R$drawable;->flash_ic_tooltip_center_bottom:I

    const-string v2, "context"

    .line 3
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "toolTipText"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 5
    sget v3, Lcom/truecaller/flashsdk/R$layout;->flash_v2_pop_up:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 6
    sget v3, Lcom/truecaller/flashsdk/R$id;->text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v5, "view.findViewById<TextView>(R.id.text)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v3, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 8
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x1030002

    .line 9
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 11
    new-instance v3, Le/a/y/a/l/c$a;

    invoke-direct {v3, v0}, Le/a/y/a/l/c$a;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 12
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 13
    invoke-static {p0, v1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14
    sget v3, Lcom/truecaller/flashsdk/R$attr;->theme_contrast_bg:I

    invoke-static {p0, v3}, Le/a/p5/s0/g;->k0(Landroid/content/Context;I)I

    move-result v3

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    const-string v3, "view"

    .line 15
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 17
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v5, v5}, Landroid/view/View;->measure(II)V

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const-string v4, "contentView"

    .line 22
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v4

    add-int/2addr v2, v5

    neg-int v2, v2

    .line 24
    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "flashText"

    .line 25
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4
.end method

.method public D5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ra()Le/a/z3/e;

    move-result-object v0

    invoke-virtual {v0}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object v0

    .line 2
    iput-object p1, v0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Le/f/a/h;->N:Z

    .line 4
    new-instance p1, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$a;

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->B:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-direct {p1, p0, v1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$a;-><init>(Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    .line 5
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_0
    const-string p1, "flashText"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p1, "imageContentV2"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public E3(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    return-void

    :cond_0
    const-string p1, "flashText"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public F9()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    const-string v1, "flashText"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->sa()Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    invoke-virtual {v0, v3}, Le/a/y/a/g/d;->o1(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    invoke-virtual {v0}, Le/a/y/a/g/d;->h1()V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    iget-object v5, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Le/a/y/a/g/d;->n1(Z)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->D:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->y:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->va()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->K:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->C:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->n:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/MapView$b;

    invoke-virtual {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->j()V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->n:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/MapView$b;

    invoke-virtual {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->c()V

    :cond_4
    return-void

    :cond_5
    const-string v0, "closeReplyContact"

    .line 17
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string v0, "emojiContainer"

    .line 18
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-string v0, "bodyContainer"

    .line 19
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 20
    :cond_8
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 21
    :cond_9
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public J7(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_0
    const-string p1, "flashText"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public J9()V
    .locals 4

    .line 1
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->L:Lcom/truecaller/flashsdk/ui/send/SendActivity$f;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "type_flash_received"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ln3/x/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public M4()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    invoke-virtual {v0}, Le/a/y/a/g/d;->j1()V

    return-void
.end method

.method public N0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->sa()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->w:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "imageText"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->l:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->x:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "videoText"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->D:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->D:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v1

    check-cast v1, Le/a/y/a/j/t;

    invoke-interface {v1, v0}, Le/a/y/a/j/t;->k(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v0, "flashText"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string v0, "videoContainer"

    .line 8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public N4(Ljava/lang/String;III)V
    .locals 3

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    const/4 v1, 0x0

    const-string v2, "flashText"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    invoke-interface {v0, p2, p3, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public O3(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->s:Lcom/google/android/gms/maps/GoogleMap;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object p1

    check-cast p1, Le/a/y/a/j/t;

    invoke-interface {p1}, Le/a/y/a/e/b;->a1()V

    return-void
.end method

.method public O4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->O4(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->w:Landroid/widget/EditText;

    const-string v1, "imageText"

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->w:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Le/a/y/a/g/d;->n1(Z)V

    return-void

    .line 6
    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "flashText"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public P5()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->A:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->va()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->K:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->C:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->K:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;->U:Landroid/widget/ImageView;

    sget v2, Lcom/truecaller/flashsdk/R$drawable;->ic_flash_outline_remove_photo_alternate:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v1, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;->T:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/truecaller/flashsdk/R$string;->flash_remove_photo:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le/a/y/a/g/d;->n1(Z)V

    return-void

    :cond_2
    const-string v0, "emojiContainer"

    .line 11
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "flashText"

    .line 12
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "closeReplyContact"

    .line 13
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "imageContainerV2"

    .line 14
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public R9(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "placeName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationImageUrl"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->w:Landroid/widget/EditText;

    const/4 v1, 0x0

    const-string v2, "imageText"

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->sa()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ra()Le/a/z3/e;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/z3/d;

    .line 6
    iput-object p2, v0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, v0, Le/f/a/h;->N:Z

    .line 8
    check-cast p1, Le/a/z3/d;

    .line 9
    sget v0, Lcom/truecaller/flashsdk/R$drawable;->ic_map_placeholder:I

    invoke-virtual {p1, v0}, Le/a/z3/d;->o0(I)Le/a/z3/d;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 12
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->w:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 13
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    invoke-virtual {p1, p2}, Le/a/y/a/g/d;->o1(Z)V

    .line 14
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->w:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "imageContent"

    .line 16
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "flashText"

    .line 17
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_4
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public T3(Ljava/lang/String;Ljava/lang/String;ZJJ)V
    .locals 13

    move-object v0, p0

    const-string v1, "history"

    move-object v3, p1

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "name"

    move-object v6, p2

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    const/4 v11, 0x0

    invoke-static {v1, v11, v4, v5, v2}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    invoke-virtual {v1}, Le/a/y/a/g/d;->g1()V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v1, v0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->y:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 6
    new-instance v12, Ln3/r/a/a;

    invoke-direct {v12, v1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 7
    sget v1, Lcom/truecaller/flashsdk/R$id;->waiting_container:I

    .line 8
    sget-object v2, Le/a/y/a/k/e;->n:Le/a/y/a/k/e$a;

    move-object v3, p1

    move-wide/from16 v4, p4

    move-object v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Le/a/y/a/k/e$a;->a(Ljava/lang/String;JLjava/lang/String;ZJ)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 9
    invoke-virtual {v12, v1, v2, v10}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    const/16 v2, 0x1001

    .line 10
    iput v2, v12, Ln3/r/a/f0;->f:I

    .line 11
    invoke-virtual {v12}, Ln3/r/a/a;->g()I

    .line 12
    iget-object v2, v0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->k:Le/a/y/e/g;

    if-eqz v2, :cond_0

    .line 13
    invoke-interface {v2}, Le/a/y/e/g;->c()V

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->H4()V

    .line 15
    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view"

    .line 16
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const-string v1, "bodyContainer"

    .line 17
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v10

    :cond_2
    const-string v1, "flashText"

    .line 18
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v10
.end method

.method public T4()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    invoke-virtual {v0}, Le/a/y/a/g/d;->l1()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->K:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public T7()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    invoke-virtual {v0}, Le/a/y/a/g/d;->l1()V

    return-void
.end method

.method public U9()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    invoke-virtual {v0}, Le/a/y/a/g/d;->m1()V

    return-void
.end method

.method public V5(Lcom/truecaller/flashsdk/models/ImageFlash;)V
    .locals 2

    const-string v0, "imageFlash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    .line 1
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/flashsdk/core/FlashMediaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_image_flash"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public Y6()V
    .locals 5

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$id;->addPhoto:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->K:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;

    .line 2
    sget v0, Lcom/truecaller/flashsdk/R$id;->closeButtonContact:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.closeButtonContact)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->z:Landroid/widget/ImageView;

    .line 3
    sget v0, Lcom/truecaller/flashsdk/R$id;->imageBackgroundV2:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->j:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcom/truecaller/flashsdk/R$id;->flashImageContainerV2:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.flashImageContainerV2)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->A:Landroid/view/View;

    .line 6
    sget v0, Lcom/truecaller/flashsdk/R$id;->imageContentV2:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<ImageView>(R.id.imageContentV2)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->B:Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->z:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const-string v2, "closeReplyContact"

    if-eqz v0, :cond_5

    const/4 v3, -0x1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 9
    new-instance v3, Lcom/truecaller/flashsdk/ui/send/SendActivity$d;

    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v4

    check-cast v4, Le/a/y/a/j/t;

    invoke-direct {v3, v4}, Lcom/truecaller/flashsdk/ui/send/SendActivity$d;-><init>(Le/a/y/a/j/t;)V

    invoke-static {v0, v3}, Le/a/m0/a1$k;->j(Landroid/widget/EditText;Ls1/z/b/l;)V

    .line 10
    invoke-static {v0}, Le/a/m0/a1$k;->d1(Landroid/widget/EditText;)V

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 12
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 13
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->K:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->va()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->K:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;

    if-eqz v0, :cond_1

    new-instance v4, Lcom/truecaller/flashsdk/ui/send/SendActivity$a;

    invoke-direct {v4, v3, p0}, Lcom/truecaller/flashsdk/ui/send/SendActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/truecaller/flashsdk/ui/send/SendActivity$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/truecaller/flashsdk/ui/send/SendActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "flashText"

    .line 19
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_5
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public Z0(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ra()Le/a/z3/e;

    move-result-object v0

    invoke-virtual {v0}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object v0

    .line 2
    iput-object p1, v0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Le/f/a/h;->N:Z

    .line 4
    new-instance p1, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$a;

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->B:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-direct {p1, p0, v1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$a;-><init>(Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    return-void

    :cond_0
    const-string p1, "imageContentV2"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public b5()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->b5()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    const-string v1, "flashText"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->w:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->y:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "bodyContainer"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v0, "imageText"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public c5(Ljava/lang/String;)V
    .locals 1

    const-string v0, "hint"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "flashText"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public c8()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->J:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public d5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "videoUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->d5(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->x:Landroid/widget/EditText;

    const-string v1, "videoText"

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->x:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->w:Landroid/widget/EditText;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Le/a/y/a/g/d;->n1(Z)V

    return-void

    :cond_0
    const-string p1, "imageText"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "flashText"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public e0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->k:Le/a/y/e/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/y/e/g;->c()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    return-void
.end method

.method public e3(I)V
    .locals 2

    const-string v0, "notification"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager;

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public g0()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->g0()V

    .line 2
    sget v0, Lcom/truecaller/flashsdk/R$id;->containerSend:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.containerSend)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->u:Landroid/view/View;

    .line 3
    sget v0, Lcom/truecaller/flashsdk/R$id;->editTextSendFlash:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.editTextSendFlash)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    .line 4
    sget v0, Lcom/truecaller/flashsdk/R$id;->imageText:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.imageText)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->w:Landroid/widget/EditText;

    .line 5
    sget v0, Lcom/truecaller/flashsdk/R$id;->videoText:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.videoText)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->x:Landroid/widget/EditText;

    .line 6
    sget v0, Lcom/truecaller/flashsdk/R$id;->body_container:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.body_container)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->y:Landroid/view/View;

    .line 7
    sget v0, Lcom/truecaller/flashsdk/R$id;->emojiContainer:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.emojiContainer)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->C:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    const/4 v1, 0x0

    const-string v2, "flashText"

    if-eqz v0, :cond_3

    new-instance v3, Lcom/truecaller/flashsdk/ui/send/SendActivity$e;

    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v4

    check-cast v4, Le/a/y/a/j/t;

    invoke-direct {v3, v4}, Lcom/truecaller/flashsdk/ui/send/SendActivity$e;-><init>(Le/a/y/a/j/t;)V

    invoke-static {v0, v3}, Le/a/m0/a1$k;->j(Landroid/widget/EditText;Ls1/z/b/l;)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-static {v0}, Le/a/m0/a1$k;->d1(Landroid/widget/EditText;)V

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    invoke-virtual {v0, p0}, Le/a/y/a/g/d;->setActionListener(Le/a/y/a/g/d$a;)V

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;->setContactClickListener$flash_release(Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;)V

    .line 12
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 13
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public g9()V
    .locals 4

    .line 1
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->M:Lcom/truecaller/flashsdk/ui/send/SendActivity$m;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "action_image_flash"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ln3/x/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public h2(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    return-void

    :cond_0
    const-string p1, "flashText"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public j5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "placeName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationMessage"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "lat"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "long"

    invoke-static {p4, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p3, p4}, Lcom/truecaller/flashsdk/ui/send/SendActivity;->A5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l5(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    return-void

    :cond_0
    const-string p1, "flashText"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public la()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->E:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->va()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->K:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "closeReplyContact"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v0, "flashText"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public m9()V
    .locals 2

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$id;->flashMapContainerV2:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->E:Landroid/view/View;

    .line 2
    sget v0, Lcom/truecaller/flashsdk/R$id;->flashMapView:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapView;

    .line 3
    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->n:Lcom/google/android/gms/maps/MapView;

    .line 4
    sget v0, Lcom/truecaller/flashsdk/R$id;->mapContentTextSendV2:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->D:Landroid/widget/EditText;

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->n:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->b(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/MapView$b;

    invoke-virtual {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->g()V

    :cond_0
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 4

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    new-instance v1, Lcom/truecaller/flashsdk/ui/send/SendActivity$l;

    invoke-direct {v1, p0, p1}, Lcom/truecaller/flashsdk/ui/send/SendActivity$l;-><init>(Lcom/truecaller/flashsdk/ui/send/SendActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public o9()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->D:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/truecaller/flashsdk/ui/send/SendActivity$h;

    invoke-direct {v1, p0}, Lcom/truecaller/flashsdk/ui/send/SendActivity$h;-><init>(Lcom/truecaller/flashsdk/ui/send/SendActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget v1, Lcom/truecaller/flashsdk/R$layout;->activity_send_flash:I

    invoke-virtual {v0, v1}, Ln3/b/a/h;->setContentView(I)V

    .line 3
    sget-object v1, Le/a/y/c/c;->b:Le/a/y/c/c;

    invoke-static {}, Le/a/y/c/c;->a()Le/a/y/c/x/a/a;

    move-result-object v1

    .line 4
    new-instance v3, Le/a/y/a/j/p;

    invoke-direct {v3, v0}, Le/a/y/a/j/p;-><init>(Lcom/truecaller/flashsdk/ui/send/SendActivity;)V

    .line 5
    const-class v2, Le/a/y/a/j/p;

    invoke-static {v3, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    const-class v2, Le/a/y/c/x/a/a;

    invoke-static {v1, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    new-instance v4, Le/a/y/a/j/n;

    invoke-direct {v4, v1}, Le/a/y/a/j/n;-><init>(Le/a/y/c/x/a/a;)V

    .line 8
    new-instance v5, Le/a/y/a/j/e;

    invoke-direct {v5, v1}, Le/a/y/a/j/e;-><init>(Le/a/y/c/x/a/a;)V

    .line 9
    new-instance v6, Le/a/y/a/j/d;

    invoke-direct {v6, v1}, Le/a/y/a/j/d;-><init>(Le/a/y/c/x/a/a;)V

    .line 10
    new-instance v7, Le/a/y/a/j/l;

    invoke-direct {v7, v1}, Le/a/y/a/j/l;-><init>(Le/a/y/c/x/a/a;)V

    .line 11
    new-instance v8, Le/a/y/a/j/m;

    invoke-direct {v8, v1}, Le/a/y/a/j/m;-><init>(Le/a/y/c/x/a/a;)V

    .line 12
    new-instance v9, Le/a/y/a/j/c;

    invoke-direct {v9, v1}, Le/a/y/a/j/c;-><init>(Le/a/y/c/x/a/a;)V

    .line 13
    new-instance v10, Le/a/y/a/j/a;

    invoke-direct {v10, v1}, Le/a/y/a/j/a;-><init>(Le/a/y/c/x/a/a;)V

    .line 14
    new-instance v2, Le/a/y/a/j/r;

    invoke-direct {v2, v3}, Le/a/y/a/j/r;-><init>(Le/a/y/a/j/p;)V

    .line 15
    sget-object v11, Lo3/c/b;->c:Ljava/lang/Object;

    .line 16
    instance-of v11, v2, Lo3/c/b;

    if-eqz v11, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance v11, Lo3/c/b;

    invoke-direct {v11, v2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object v2, v11

    .line 18
    :goto_0
    new-instance v11, Le/a/y/a/j/q;

    invoke-direct {v11, v3, v2}, Le/a/y/a/j/q;-><init>(Le/a/y/a/j/p;Ljavax/inject/Provider;)V

    .line 19
    instance-of v2, v11, Lo3/c/b;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 20
    :cond_1
    new-instance v2, Lo3/c/b;

    invoke-direct {v2, v11}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object v11, v2

    .line 21
    :goto_1
    new-instance v2, Le/a/y/a/j/h;

    move-object v12, v2

    invoke-direct {v2, v1}, Le/a/y/a/j/h;-><init>(Le/a/y/c/x/a/a;)V

    .line 22
    new-instance v2, Le/a/y/a/j/j;

    move-object v13, v2

    invoke-direct {v2, v1}, Le/a/y/a/j/j;-><init>(Le/a/y/c/x/a/a;)V

    .line 23
    new-instance v2, Le/a/y/a/j/i;

    move-object v14, v2

    invoke-direct {v2, v1}, Le/a/y/a/j/i;-><init>(Le/a/y/c/x/a/a;)V

    .line 24
    new-instance v2, Le/a/y/a/j/g;

    move-object v15, v2

    invoke-direct {v2, v1}, Le/a/y/a/j/g;-><init>(Le/a/y/c/x/a/a;)V

    .line 25
    new-instance v2, Le/a/y/a/j/f;

    move-object/from16 v16, v2

    invoke-direct {v2, v1}, Le/a/y/a/j/f;-><init>(Le/a/y/c/x/a/a;)V

    .line 26
    new-instance v2, Le/a/y/a/j/k;

    move-object/from16 v17, v2

    invoke-direct {v2, v1}, Le/a/y/a/j/k;-><init>(Le/a/y/c/x/a/a;)V

    .line 27
    new-instance v2, Le/a/y/a/j/b;

    move-object/from16 v18, v2

    invoke-direct {v2, v1}, Le/a/y/a/j/b;-><init>(Le/a/y/c/x/a/a;)V

    .line 28
    new-instance v2, Le/a/y/a/j/s;

    move-object/from16 p1, v2

    invoke-direct/range {v2 .. v18}, Le/a/y/a/j/s;-><init>(Le/a/y/a/j/p;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 29
    instance-of v3, v2, Lo3/c/b;

    if-eqz v3, :cond_2

    goto :goto_2

    .line 30
    :cond_2
    new-instance v3, Lo3/c/b;

    invoke-direct {v3, v2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object v2, v3

    .line 31
    :goto_2
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/y/a/j/t;

    .line 32
    iput-object v2, v0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    .line 33
    invoke-interface {v1}, Le/a/y/c/x/a/a;->b()Le/a/u3/g;

    move-result-object v2

    const-string v3, "Cannot return null from a non-@Nullable component method"

    .line 34
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    invoke-interface {v1}, Le/a/y/c/x/a/a;->d()Le/a/b0/o/a;

    move-result-object v1

    .line 36
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    iput-object v1, v0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->b:Le/a/b0/o/a;

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v1

    check-cast v1, Le/a/y/a/j/t;

    invoke-interface {v1, v0}, Le/a/y/a/e/b;->f1(Le/a/y/a/e/e;)V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->J:Landroid/view/ActionMode;

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->L:Lcom/truecaller/flashsdk/ui/send/SendActivity$f;

    invoke-virtual {v0, v1}, Ln3/x/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 3
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->M:Lcom/truecaller/flashsdk/ui/send/SendActivity$m;

    invoke-virtual {v0, v1}, Ln3/x/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 5
    invoke-super {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->onDestroy()V

    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->J:Landroid/view/ActionMode;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/j/t;

    invoke-interface {v0}, Le/a/y/a/j/t;->onPause()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/j/t;

    invoke-interface {v0}, Le/a/y/a/j/t;->onResume()V

    .line 2
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/j/t;

    invoke-interface {v0}, Le/a/y/a/e/b;->onStart()V

    return-void
.end method

.method public p0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/truecaller/flashsdk/ui/send/SendActivity$i;

    invoke-direct {v1, p0}, Lcom/truecaller/flashsdk/ui/send/SendActivity$i;-><init>(Lcom/truecaller/flashsdk/ui/send/SendActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-string v0, "flashText"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public p5()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    invoke-virtual {v0}, Le/a/y/a/g/d;->j1()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->K:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public p8()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_0
    const-string v0, "flashText"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public q5(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v0

    invoke-static {p0, p1}, Le/a/p5/s0/g;->P(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;->setHeaderTextColor(I)V

    return-void
.end method

.method public s(Le/a/y/e/i;)V
    .locals 6

    const-string v0, "emoticon"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/j/t;

    .line 2
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    const/4 v2, 0x0

    const-string v3, "flashText"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    iget-object v5, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, p1, v4, v2}, Le/a/y/a/e/b;->d1(Ljava/lang/String;Le/a/y/e/i;II)V

    return-void

    :cond_0
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public t1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->A:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    const-string v3, "flashText"

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->C:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    invoke-virtual {v0}, Le/a/y/a/g/d;->h1()V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    iget-object v4, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Le/a/y/a/g/d;->n1(Z)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->K:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->K:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;

    if-eqz v0, :cond_1

    .line 9
    iget-object v2, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;->U:Landroid/widget/ImageView;

    sget v3, Lcom/truecaller/flashsdk/R$drawable;->ic_flash_outline_add_photo_alternate:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object v2, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;->T:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/truecaller/flashsdk/R$string;->flash_add_photo:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    .line 13
    :cond_3
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "emojiContainer"

    .line 14
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_5
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v0, "closeReplyContact"

    .line 16
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string v0, "imageContainerV2"

    .line 17
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public u1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->k:Le/a/y/e/g;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Le/a/y/e/g;->isShowing()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->k:Le/a/y/e/g;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Le/a/y/e/g;->h()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v2

    check-cast v2, Le/a/y/a/j/t;

    iget-object v3, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Le/a/y/a/e/b;->Y0(Ljava/lang/String;ZZ)V

    return-void

    :cond_0
    const-string v0, "flashText"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    return-void
.end method

.method public ua()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->u:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "rootView"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public v2(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/j/t;

    .line 2
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    const/4 v2, 0x0

    const-string v3, "flashText"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v4, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    iget-object v5, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->v:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 4
    invoke-interface {v0, v1, p1, v4, v2}, Le/a/y/a/e/b;->j1(Ljava/lang/String;III)V

    return-void

    .line 5
    :cond_0
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public w8()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;

    sget v1, Lcom/truecaller/flashsdk/R$string;->tip_use_location:I

    invoke-virtual {v0, v1}, Le/a/y/a/g/d;->k1(I)V

    return-void
.end method

.method public z0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->A:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->va()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->K:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "closeReplyContact"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "imageContainerV2"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
