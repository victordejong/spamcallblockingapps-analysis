.class public final Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;
.super Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;
.source "SourceFile"

# interfaces
.implements Le/a/y/a/h/v;
.implements Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView$a;
.implements Lcom/truecaller/flashsdk/ui/customviews/BouncingView$c;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;
.implements Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity<",
        "Le/a/y/a/h/v;",
        "Le/a/y/a/h/t;",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;",
        ">;",
        "Le/a/y/a/h/v;",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView$a;",
        "Lcom/truecaller/flashsdk/ui/customviews/BouncingView$c;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;",
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
        "\u0000\u0094\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\r\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010 \n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0003\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0004\u00f2\u0002\u00f5\u0002\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00022\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u00082\u00020\t2\u00020\n2\u00020\u000b:\u0002\u0088\u0003B\u0008\u00a2\u0006\u0005\u0008\u0087\u0003\u0010\u000eJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u000eJ\u000f\u0010\u0019\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u000eJ\u000f\u0010\u001a\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u000eJ\u000f\u0010\u001b\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u000eJ\u000f\u0010\u001c\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u000eJ\u0019\u0010\u001f\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008!\u0010\u000eJ\u0017\u0010$\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008&\u0010\u000eJ\u0017\u0010)\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008+\u0010\u000eJ\u000f\u0010,\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008,\u0010\u000eJ\u0017\u0010.\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00101\u001a\u00020\u000c2\u0006\u00100\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u00081\u0010/J\u001f\u00105\u001a\u00020\u000c2\u0006\u00103\u001a\u0002022\u0006\u00104\u001a\u000202H\u0016\u00a2\u0006\u0004\u00085\u00106J\u0017\u00108\u001a\u00020\u000c2\u0006\u00107\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u00088\u0010*J\u0017\u0010:\u001a\u00020\u000c2\u0006\u00109\u001a\u000202H\u0016\u00a2\u0006\u0004\u0008:\u0010;J\u0017\u0010=\u001a\u00020\u000c2\u0006\u0010<\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008=\u0010*J\u000f\u0010>\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008>\u0010\u000eJ\u0017\u0010A\u001a\u00020\u00112\u0006\u0010@\u001a\u00020?H\u0016\u00a2\u0006\u0004\u0008A\u0010BJ\u0017\u0010C\u001a\u00020\u00112\u0006\u0010@\u001a\u00020?H\u0016\u00a2\u0006\u0004\u0008C\u0010BJ\u0017\u0010E\u001a\u00020\u000c2\u0006\u0010D\u001a\u000202H\u0016\u00a2\u0006\u0004\u0008E\u0010;J\u000f\u0010F\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008F\u0010\u000eJ\u0017\u0010G\u001a\u00020\u000c2\u0006\u0010D\u001a\u000202H\u0016\u00a2\u0006\u0004\u0008G\u0010;J\u0017\u0010H\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008H\u0010IJ\u0017\u0010K\u001a\u00020\u000c2\u0006\u0010J\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008K\u0010/J\u0017\u0010M\u001a\u00020\u000c2\u0006\u0010L\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008M\u0010/J/\u0010R\u001a\u00020\u000c2\u0006\u0010N\u001a\u0002022\u0006\u0010O\u001a\u00020\'2\u0006\u0010P\u001a\u00020\'2\u0006\u0010Q\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008R\u0010SJ\u0019\u0010U\u001a\u00020\u000c2\u0008\u0008\u0001\u0010T\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008U\u0010*J\u0017\u0010X\u001a\u00020\u000c2\u0006\u0010W\u001a\u00020VH\u0016\u00a2\u0006\u0004\u0008X\u0010YJ\u0017\u0010[\u001a\u00020\u000c2\u0006\u0010Z\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008[\u0010*J\u000f\u0010\\\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\\\u0010\u000eJ\u0017\u0010_\u001a\u00020\u000c2\u0006\u0010^\u001a\u00020]H\u0016\u00a2\u0006\u0004\u0008_\u0010`J\u0017\u0010b\u001a\u00020\u000c2\u0006\u0010a\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008b\u0010/J\u000f\u0010c\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008c\u0010\u000eJ\u000f\u0010d\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008d\u0010\u000eJ\u001f\u0010g\u001a\u00020\u000c2\u0006\u0010N\u001a\u00020e2\u0006\u0010f\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008g\u0010hJ\u0017\u0010j\u001a\u00020\u000c2\u0006\u0010i\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008j\u0010/J\u001f\u0010m\u001a\u00020\u000c2\u0006\u0010k\u001a\u0002022\u0006\u0010l\u001a\u000202H\u0016\u00a2\u0006\u0004\u0008m\u00106J\'\u0010q\u001a\u00020\u000c2\u0006\u0010n\u001a\u0002022\u0006\u0010o\u001a\u0002022\u0006\u0010p\u001a\u000202H\u0016\u00a2\u0006\u0004\u0008q\u0010rJ/\u0010t\u001a\u00020\u000c2\u0006\u0010k\u001a\u0002022\u0006\u0010s\u001a\u0002022\u0006\u0010o\u001a\u0002022\u0006\u0010p\u001a\u000202H\u0016\u00a2\u0006\u0004\u0008t\u0010uJ\u000f\u0010v\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008v\u0010\u000eJ\u000f\u0010w\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008w\u0010\u000eJ\u000f\u0010x\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008x\u0010\u000eJ\u000f\u0010y\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008y\u0010\u000eJ\u0017\u0010z\u001a\u00020\u000c2\u0006\u00107\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008z\u0010*J\u0017\u0010|\u001a\u00020\u000c2\u0006\u0010{\u001a\u000202H\u0016\u00a2\u0006\u0004\u0008|\u0010;J\u0018\u0010\u007f\u001a\u00020\u000c2\u0006\u0010~\u001a\u00020}H\u0016\u00a2\u0006\u0005\u0008\u007f\u0010\u0080\u0001J\u001b\u0010\u0082\u0001\u001a\u00020\u000c2\u0007\u0010~\u001a\u00030\u0081\u0001H\u0016\u00a2\u0006\u0006\u0008\u0082\u0001\u0010\u0083\u0001J\"\u0010\u0085\u0001\u001a\u00020\u000c2\u0007\u0010\u0084\u0001\u001a\u0002022\u0006\u0010{\u001a\u000202H\u0016\u00a2\u0006\u0005\u0008\u0085\u0001\u00106J\u001a\u0010\u0087\u0001\u001a\u00020\u000c2\u0007\u0010\u0086\u0001\u001a\u000202H\u0016\u00a2\u0006\u0005\u0008\u0087\u0001\u0010;J\u0019\u0010\u0088\u0001\u001a\u00020\u000c2\u0006\u00107\u001a\u00020\'H\u0016\u00a2\u0006\u0005\u0008\u0088\u0001\u0010*J\u0011\u0010\u0089\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u0089\u0001\u0010\u000eJ#\u0010\u008b\u0001\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\'2\u0007\u0010\u008a\u0001\u001a\u00020\'H\u0016\u00a2\u0006\u0006\u0008\u008b\u0001\u0010\u008c\u0001J\"\u0010\u008e\u0001\u001a\u00020\u000c2\u0007\u0010\u008d\u0001\u001a\u0002022\u0006\u0010{\u001a\u000202H\u0016\u00a2\u0006\u0005\u0008\u008e\u0001\u00106J\"\u0010\u008f\u0001\u001a\u00020\u000c2\u0007\u0010\u008d\u0001\u001a\u0002022\u0006\u0010{\u001a\u000202H\u0016\u00a2\u0006\u0005\u0008\u008f\u0001\u00106J+\u0010\u0091\u0001\u001a\u00020\u000c2\u0007\u0010\u008d\u0001\u001a\u0002022\u0006\u0010{\u001a\u0002022\u0007\u0010\u0090\u0001\u001a\u000202H\u0016\u00a2\u0006\u0005\u0008\u0091\u0001\u0010rJ+\u0010\u0092\u0001\u001a\u00020\u000c2\u0007\u0010\u008d\u0001\u001a\u0002022\u0006\u0010{\u001a\u0002022\u0007\u0010\u0090\u0001\u001a\u000202H\u0016\u00a2\u0006\u0005\u0008\u0092\u0001\u0010rJ\"\u0010\u0094\u0001\u001a\u00020\u000c2\u0007\u0010\u0093\u0001\u001a\u0002022\u0006\u0010{\u001a\u000202H\u0016\u00a2\u0006\u0005\u0008\u0094\u0001\u00106J\"\u0010\u0097\u0001\u001a\u00020\u000c2\u000e\u0010\u0096\u0001\u001a\t\u0012\u0004\u0012\u0002020\u0095\u0001H\u0016\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u0098\u0001J\"\u0010\u0099\u0001\u001a\u00020\u000c2\u000e\u0010\u0096\u0001\u001a\t\u0012\u0004\u0012\u0002020\u0095\u0001H\u0016\u00a2\u0006\u0006\u0008\u0099\u0001\u0010\u0098\u0001J$\u0010\u009c\u0001\u001a\u00020\u00112\u0007\u0010\u009a\u0001\u001a\u0002022\u0007\u0010\u009b\u0001\u001a\u000202H\u0016\u00a2\u0006\u0006\u0008\u009c\u0001\u0010\u009d\u0001J\u001a\u0010\u009e\u0001\u001a\u00020\u000c2\u0007\u0010\u009a\u0001\u001a\u000202H\u0016\u00a2\u0006\u0005\u0008\u009e\u0001\u0010;J\u001a\u0010\u00a0\u0001\u001a\u00020\u000c2\u0007\u0010\u009f\u0001\u001a\u00020\u0011H\u0016\u00a2\u0006\u0005\u0008\u00a0\u0001\u0010/J\u001a\u0010\u00a2\u0001\u001a\u00020\u000c2\u0007\u0010\u00a1\u0001\u001a\u00020\'H\u0016\u00a2\u0006\u0005\u0008\u00a2\u0001\u0010*J\u0011\u0010\u00a3\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00a3\u0001\u0010\u000eJ\u0011\u0010\u00a4\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00a4\u0001\u0010\u000eJ\u0011\u0010\u00a5\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00a5\u0001\u0010\u000eJ\u0011\u0010\u00a6\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00a6\u0001\u0010\u000eJ\u0011\u0010\u00a7\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00a7\u0001\u0010\u000eJ\u0011\u0010\u00a8\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00a8\u0001\u0010\u000eJ\u001c\u0010\u00ab\u0001\u001a\u00020\u000c2\u0008\u0010\u00aa\u0001\u001a\u00030\u00a9\u0001H\u0016\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001J\u001c\u0010\u00ae\u0001\u001a\u00020\u000c2\u0008\u0010\u00aa\u0001\u001a\u00030\u00ad\u0001H\u0016\u00a2\u0006\u0006\u0008\u00ae\u0001\u0010\u00af\u0001J\u001a\u0010\u00b1\u0001\u001a\u00020\u000c2\u0007\u0010\u00b0\u0001\u001a\u00020\'H\u0016\u00a2\u0006\u0005\u0008\u00b1\u0001\u0010*J\u001a\u0010\u00b3\u0001\u001a\u00020\u000c2\u0007\u0010\u00b2\u0001\u001a\u00020\'H\u0016\u00a2\u0006\u0005\u0008\u00b3\u0001\u0010*J\u0011\u0010\u00b4\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00b4\u0001\u0010\u000eJ\u0011\u0010\u00b5\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00b5\u0001\u0010\u000eJ\u001c\u0010\u00b6\u0001\u001a\u00020\u000c2\u0008\u0010\u00aa\u0001\u001a\u00030\u00a9\u0001H\u0016\u00a2\u0006\u0006\u0008\u00b6\u0001\u0010\u00ac\u0001J\u001c\u0010\u00b7\u0001\u001a\u00020\u000c2\u0008\u0010\u00aa\u0001\u001a\u00030\u00a9\u0001H\u0016\u00a2\u0006\u0006\u0008\u00b7\u0001\u0010\u00ac\u0001J\u001c\u0010\u00b8\u0001\u001a\u00020\u000c2\u0008\u0010\u00aa\u0001\u001a\u00030\u00a9\u0001H\u0016\u00a2\u0006\u0006\u0008\u00b8\u0001\u0010\u00ac\u0001J%\u0010\u00bc\u0001\u001a\u00020\u00112\u0007\u0010\u00b9\u0001\u001a\u00020\'2\u0008\u0010\u00bb\u0001\u001a\u00030\u00ba\u0001H\u0016\u00a2\u0006\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001J-\u0010\u00c1\u0001\u001a\u00020\u000c2\u0007\u0010\u00be\u0001\u001a\u0002022\u0008\u0010\u00c0\u0001\u001a\u00030\u00bf\u00012\u0006\u0010D\u001a\u000202H\u0016\u00a2\u0006\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001J\u0019\u0010\u00c3\u0001\u001a\u00020\u000c2\u0006\u0010{\u001a\u000202H\u0016\u00a2\u0006\u0005\u0008\u00c3\u0001\u0010;J\"\u0010\u00c4\u0001\u001a\u00020\u000c2\u0007\u0010\u0084\u0001\u001a\u0002022\u0006\u0010{\u001a\u000202H\u0016\u00a2\u0006\u0005\u0008\u00c4\u0001\u00106J%\u0010\u00c8\u0001\u001a\u00020\u000c2\u0008\u0010\u00c6\u0001\u001a\u00030\u00c5\u00012\u0007\u0010\u00c7\u0001\u001a\u000202H\u0016\u00a2\u0006\u0006\u0008\u00c8\u0001\u0010\u00c9\u0001J\u0011\u0010\u00ca\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00ca\u0001\u0010\u000eJ5\u0010\u00d0\u0001\u001a\u00020\u000c2\u0007\u0010\u00cb\u0001\u001a\u00020\'2\u000e\u0010\u00cd\u0001\u001a\t\u0012\u0004\u0012\u0002020\u00cc\u00012\u0008\u0010\u00cf\u0001\u001a\u00030\u00ce\u0001H\u0016\u00a2\u0006\u0006\u0008\u00d0\u0001\u0010\u00d1\u0001J\u0011\u0010\u00d2\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00d2\u0001\u0010\u000eJ\u0011\u0010\u00d3\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00d3\u0001\u0010\u000eJ\u0019\u0010\u00d4\u0001\u001a\u00020\u000c2\u0006\u0010{\u001a\u000202H\u0016\u00a2\u0006\u0005\u0008\u00d4\u0001\u0010;J\u001a\u0010\u00d6\u0001\u001a\u00020\u000c2\u0007\u0010\u00d5\u0001\u001a\u000202H\u0016\u00a2\u0006\u0005\u0008\u00d6\u0001\u0010;J\u001c\u0010\u00d8\u0001\u001a\u00020\u000c2\u0008\u0010\u00d7\u0001\u001a\u00030\u00c5\u0001H\u0016\u00a2\u0006\u0006\u0008\u00d8\u0001\u0010\u00d9\u0001J\u0011\u0010\u00da\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00da\u0001\u0010\u000eJ\u0011\u0010\u00db\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00db\u0001\u0010\u000eJ\u001c\u0010\u00de\u0001\u001a\u00020\u000c2\u0008\u0010\u00dd\u0001\u001a\u00030\u00dc\u0001H\u0016\u00a2\u0006\u0006\u0008\u00de\u0001\u0010\u00df\u0001J\u0011\u0010\u00e0\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00e0\u0001\u0010\u000eJ%\u0010\u00e2\u0001\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\'2\t\u0008\u0001\u0010\u00e1\u0001\u001a\u00020\'H\u0016\u00a2\u0006\u0006\u0008\u00e2\u0001\u0010\u008c\u0001J\u0019\u0010\u00e3\u0001\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0005\u0008\u00e3\u0001\u0010%J#\u0010\u00e7\u0001\u001a\u00020\u000c2\u000f\u0010\u00e6\u0001\u001a\n\u0012\u0005\u0012\u00030\u00e5\u00010\u00e4\u0001H\u0016\u00a2\u0006\u0006\u0008\u00e7\u0001\u0010\u0098\u0001J$\u0010\u00ea\u0001\u001a\u00020\u000c2\u0007\u0010\u00e8\u0001\u001a\u00020\'2\u0007\u0010\u00e9\u0001\u001a\u00020\'H\u0016\u00a2\u0006\u0006\u0008\u00ea\u0001\u0010\u008c\u0001J\u001a\u0010\u00ec\u0001\u001a\u00020\u000c2\u0007\u0010\u00eb\u0001\u001a\u00020\'H\u0016\u00a2\u0006\u0005\u0008\u00ec\u0001\u0010*J\u0011\u0010\u00ed\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00ed\u0001\u0010\u000eJ\u0011\u0010\u00ee\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00ee\u0001\u0010\u000eJ\u0011\u0010\u00ef\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00ef\u0001\u0010\u000eJ\u0011\u0010\u00f0\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00f0\u0001\u0010\u000eJ\u0011\u0010\u00f1\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00f1\u0001\u0010\u000eJ\u0011\u0010\u00f2\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00f2\u0001\u0010\u000eJ\u0011\u0010\u00f3\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00f3\u0001\u0010\u000eJ\"\u0010\u00f4\u0001\u001a\u00020\u000c2\u0006\u0010{\u001a\u0002022\u0006\u0010-\u001a\u00020\u0011H\u0016\u00a2\u0006\u0006\u0008\u00f4\u0001\u0010\u00f5\u0001J\u0011\u0010\u00f6\u0001\u001a\u00020\u000cH\u0014\u00a2\u0006\u0005\u0008\u00f6\u0001\u0010\u000eJ\u0011\u0010\u00f7\u0001\u001a\u00020\u000cH\u0014\u00a2\u0006\u0005\u0008\u00f7\u0001\u0010\u000eJ\u0011\u0010\u00f8\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u00f8\u0001\u0010\u000eJ*\u0010\u00fd\u0001\u001a\u00020\u00112\n\u0010\u00fa\u0001\u001a\u0005\u0018\u00010\u00f9\u00012\n\u0010\u00fc\u0001\u001a\u0005\u0018\u00010\u00fb\u0001H\u0016\u00a2\u0006\u0006\u0008\u00fd\u0001\u0010\u00fe\u0001J(\u0010\u00ff\u0001\u001a\u00020\u00112\n\u0010\u00fa\u0001\u001a\u0005\u0018\u00010\u00f9\u00012\u0008\u0010@\u001a\u0004\u0018\u00010?H\u0016\u00a2\u0006\u0006\u0008\u00ff\u0001\u0010\u0080\u0002J(\u0010\u0081\u0002\u001a\u00020\u00112\n\u0010\u00fa\u0001\u001a\u0005\u0018\u00010\u00f9\u00012\u0008\u0010@\u001a\u0004\u0018\u00010?H\u0016\u00a2\u0006\u0006\u0008\u0081\u0002\u0010\u0080\u0002J\u001e\u0010\u0082\u0002\u001a\u00020\u000c2\n\u0010\u00fa\u0001\u001a\u0005\u0018\u00010\u00f9\u0001H\u0016\u00a2\u0006\u0006\u0008\u0082\u0002\u0010\u0083\u0002J\u001c\u0010\u0084\u0002\u001a\u00020\u000c2\u0008\u0010\u00aa\u0001\u001a\u00030\u00a9\u0001H\u0016\u00a2\u0006\u0006\u0008\u0084\u0002\u0010\u00ac\u0001J\u0011\u0010\u0085\u0002\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u0085\u0002\u0010\u000eJ\u0011\u0010\u0086\u0002\u001a\u00020\u000cH\u0016\u00a2\u0006\u0005\u0008\u0086\u0002\u0010\u000eJ\u001c\u0010\u0087\u0002\u001a\u00020\u000c2\u0008\u0010N\u001a\u0004\u0018\u00010eH\u0016\u00a2\u0006\u0006\u0008\u0087\u0002\u0010\u0088\u0002J\u0019\u0010\u0089\u0002\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u0011H\u0016\u00a2\u0006\u0005\u0008\u0089\u0002\u0010/R\u001c\u0010\u008d\u0002\u001a\u0005\u0018\u00010\u008a\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0002\u0010\u008c\u0002R\u001a\u0010\u0091\u0002\u001a\u00030\u008e\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0002\u0010\u0090\u0002R\u0019\u0010\u0094\u0002\u001a\u00030\u0092\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008j\u0010\u0093\u0002R\u001a\u0010\u0098\u0002\u001a\u00030\u0095\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0096\u0002\u0010\u0097\u0002R\u001c\u0010\u009b\u0002\u001a\u0005\u0018\u00010\u0099\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ee\u0001\u0010\u009a\u0002R\u001a\u0010\u009f\u0002\u001a\u00030\u009c\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0002\u0010\u009e\u0002R\u001a\u0010\u00a3\u0002\u001a\u00030\u00a0\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0002\u0010\u00a2\u0002R\u001a\u0010\u00a5\u0002\u001a\u00030\u0095\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0002\u0010\u0097\u0002R\u001a\u0010\u00a9\u0002\u001a\u00030\u00a6\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a7\u0002\u0010\u00a8\u0002R\u001a\u0010\u00ad\u0002\u001a\u00030\u00aa\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0002\u0010\u00ac\u0002R\u001a\u0010\u00af\u0002\u001a\u00030\u00aa\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00ae\u0002\u0010\u00ac\u0002R\u0019\u0010\u00b2\u0002\u001a\u00020V8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0002\u0010\u00b1\u0002R\u001a\u0010\u00b4\u0002\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008d\u0010\u00b3\u0002R\u001a\u0010\u00b8\u0002\u001a\u00030\u00b5\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b6\u0002\u0010\u00b7\u0002R\u0018\u0010\u00ba\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008W\u0010\u00b9\u0002R\u0019\u0010\u00bc\u0002\u001a\u00020V8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00bb\u0002\u0010\u00b1\u0002R\u001c\u0010\u00bf\u0002\u001a\u0005\u0018\u00010\u00bd\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ed\u0001\u0010\u00be\u0002R\u001a\u0010\u00c3\u0002\u001a\u00030\u00c0\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c1\u0002\u0010\u00c2\u0002R\u001a\u0010\u00c7\u0002\u001a\u00030\u00c4\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00c5\u0002\u0010\u00c6\u0002R\u001a\u0010\u00c9\u0002\u001a\u00030\u00aa\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00c8\u0002\u0010\u00ac\u0002R\u0019\u0010\u00cb\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ca\u0002\u0010\u00b9\u0002R\u001a\u0010\u00cd\u0002\u001a\u00030\u00aa\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00cc\u0002\u0010\u00ac\u0002R\u0019\u0010\u00ce\u0002\u001a\u00030\u0095\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008\u0018\u0010\u0097\u0002R\u0019\u0010\u00d0\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cf\u0002\u0010\u00b9\u0002R\u001a\u0010\u00d2\u0002\u001a\u00030\u00aa\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00d1\u0002\u0010\u00ac\u0002R\u001a\u0010\u00d4\u0002\u001a\u00030\u00aa\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00d3\u0002\u0010\u00ac\u0002R*\u0010\u00dc\u0002\u001a\u00030\u00d5\u00028\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u00d6\u0002\u0010\u00d7\u0002\u001a\u0006\u0008\u00d8\u0002\u0010\u00d9\u0002\"\u0006\u0008\u00da\u0002\u0010\u00db\u0002R\u0019\u0010\u00de\u0002\u001a\u00020V8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00dd\u0002\u0010\u00b1\u0002R\u0019\u0010\u00e0\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00df\u0002\u0010\u00b9\u0002R\u001a\u0010\u00e4\u0002\u001a\u00030\u00e1\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00e2\u0002\u0010\u00e3\u0002R\u001b\u0010\u00e6\u0002\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e5\u0002\u0010\u00b1\u0002R\u001a\u0010\u00e8\u0002\u001a\u00030\u0095\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00e7\u0002\u0010\u0097\u0002R\u001c\u0010\u00eb\u0002\u001a\u0005\u0018\u00010\u00f9\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e9\u0002\u0010\u00ea\u0002R\u001a\u0010\u00ef\u0002\u001a\u00030\u00ec\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00ed\u0002\u0010\u00ee\u0002R\u001a\u0010\u00f1\u0002\u001a\u00030\u00a0\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00f0\u0002\u0010\u00a2\u0002R\u001a\u0010\u00f4\u0002\u001a\u00030\u00f2\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ec\u0001\u0010\u00f3\u0002R\u001a\u0010\u00f8\u0002\u001a\u00030\u00f5\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00f6\u0002\u0010\u00f7\u0002R\u001a\u0010\u00fa\u0002\u001a\u00030\u0099\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00f9\u0002\u0010\u009a\u0002R\u0019\u0010\u00fc\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00fb\u0002\u0010\u00b9\u0002R\u0019\u0010\u00fe\u0002\u001a\u00020V8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00fd\u0002\u0010\u00b1\u0002R\u001a\u0010\u0080\u0003\u001a\u00030\u00a0\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00ff\u0002\u0010\u00a2\u0002R\u001a\u0010\u0082\u0003\u001a\u00030\u00aa\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0081\u0003\u0010\u00ac\u0002R\u001a\u0010\u0086\u0003\u001a\u00030\u0083\u00038\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0003\u0010\u0085\u0003\u00a8\u0006\u0089\u0003"
    }
    d2 = {
        "Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;",
        "Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;",
        "Le/a/y/a/h/v;",
        "Le/a/y/a/h/t;",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView$a;",
        "Lcom/truecaller/flashsdk/ui/customviews/BouncingView$c;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;",
        "Lcom/google/android/gms/maps/OnMapReadyCallback;",
        "Landroid/view/ActionMode$Callback;",
        "Ls1/s;",
        "ya",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "wa",
        "(Landroid/content/Intent;)Z",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "g0",
        "ba",
        "m9",
        "M6",
        "c6",
        "Lcom/google/android/gms/maps/GoogleMap;",
        "googleMap",
        "O3",
        "(Lcom/google/android/gms/maps/GoogleMap;)V",
        "o6",
        "Landroid/graphics/drawable/Drawable;",
        "drawable",
        "oa",
        "(Landroid/graphics/drawable/Drawable;)V",
        "v6",
        "",
        "themeColor",
        "s6",
        "(I)V",
        "x6",
        "U5",
        "enable",
        "D6",
        "(Z)V",
        "showOverlay",
        "K9",
        "",
        "firstLine",
        "boldText",
        "i5",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "color",
        "H7",
        "contactImageUrl",
        "S4",
        "(Ljava/lang/String;)V",
        "drawableRes",
        "f5",
        "onStart",
        "Landroid/view/Menu;",
        "menu",
        "onCreateOptionsMenu",
        "(Landroid/view/Menu;)Z",
        "onPrepareOptionsMenu",
        "name",
        "L6",
        "w8",
        "W5",
        "j6",
        "(Landroid/content/Intent;)V",
        "showQuickReplies",
        "a6",
        "showHint",
        "c7",
        "text",
        "initialSelectionStart",
        "initialSelectionEnd",
        "finalSelectionEnd",
        "N4",
        "(Ljava/lang/String;III)V",
        "buttonTextColor",
        "S6",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "position",
        "v2",
        "u1",
        "Le/a/y/e/i;",
        "emoticon",
        "s",
        "(Le/a/y/e/i;)V",
        "cursorVisible",
        "l5",
        "p8",
        "p0",
        "",
        "isMessageTypeLocation",
        "N2",
        "(Ljava/lang/CharSequence;Z)V",
        "hasFocus",
        "V",
        "placeName",
        "locationImageUrl",
        "R9",
        "location",
        "lat",
        "long",
        "A5",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "locationMessage",
        "j5",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "F9",
        "o9",
        "B5",
        "N6",
        "b6",
        "message",
        "J6",
        "Le/a/y/a/g/f/a;",
        "displayableEmojiAttributes",
        "q6",
        "(Le/a/y/a/g/f/a;)V",
        "Le/a/y/a/g/f/g;",
        "h6",
        "(Le/a/y/a/g/f/g;)V",
        "mapImageUrl",
        "Q9",
        "hint",
        "c5",
        "K6",
        "x7",
        "tintColor",
        "y6",
        "(II)V",
        "imageUrl",
        "O4",
        "n5",
        "wallpaperUrl",
        "r9",
        "ia",
        "videoUrl",
        "d5",
        "",
        "responses",
        "A6",
        "(Ljava/util/List;)V",
        "R6",
        "mapUri",
        "packageString",
        "O6",
        "(Ljava/lang/String;Ljava/lang/String;)Z",
        "G6",
        "startAnimation",
        "Z5",
        "duration",
        "J8",
        "z6",
        "X6",
        "H6",
        "O9",
        "W9",
        "e6",
        "Lcom/truecaller/flashsdk/models/Flash;",
        "flash",
        "V6",
        "(Lcom/truecaller/flashsdk/models/Flash;)V",
        "Lcom/truecaller/flashsdk/models/QueuedFlash;",
        "U7",
        "(Lcom/truecaller/flashsdk/models/QueuedFlash;)V",
        "progress",
        "Q6",
        "progressLeft",
        "d6",
        "u6",
        "G5",
        "S7",
        "V8",
        "Y5",
        "keyCode",
        "Landroid/view/KeyEvent;",
        "keyEvent",
        "onKeyDown",
        "(ILandroid/view/KeyEvent;)Z",
        "history",
        "",
        "toPhone",
        "k6",
        "(Ljava/lang/String;JLjava/lang/String;)V",
        "B6",
        "z7",
        "Landroid/net/Uri;",
        "contentUriFromBitmap",
        "imageDescription",
        "m6",
        "(Landroid/net/Uri;Ljava/lang/String;)V",
        "s7",
        "requestCode",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "b5",
        "F6",
        "o",
        "action",
        "r6",
        "imageUri",
        "Z0",
        "(Landroid/net/Uri;)V",
        "e8",
        "T6",
        "Lcom/truecaller/flashsdk/models/ImageFlash;",
        "imageFlash",
        "V5",
        "(Lcom/truecaller/flashsdk/models/ImageFlash;)V",
        "z0",
        "headerTextColor",
        "q5",
        "W6",
        "",
        "Le/a/y/a/g/c;",
        "menuItems",
        "X5",
        "imageId",
        "colorId",
        "l8",
        "id",
        "u0",
        "o0",
        "q0",
        "T4",
        "p5",
        "T7",
        "U9",
        "M4",
        "J7",
        "(Ljava/lang/String;Z)V",
        "onStop",
        "onDestroy",
        "c8",
        "Landroid/view/ActionMode;",
        "mode",
        "Landroid/view/MenuItem;",
        "item",
        "onActionItemClicked",
        "(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z",
        "onCreateActionMode",
        "(Landroid/view/ActionMode;Landroid/view/Menu;)Z",
        "onPrepareActionMode",
        "onDestroyActionMode",
        "(Landroid/view/ActionMode;)V",
        "s9",
        "I6",
        "w6",
        "T0",
        "(Ljava/lang/CharSequence;)V",
        "A0",
        "Le/a/y/a/g/f/e;",
        "E",
        "Le/a/y/a/g/f/e;",
        "emojiLayout",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "k0",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "flashUIContainer",
        "Landroid/widget/ProgressBar;",
        "Landroid/widget/ProgressBar;",
        "progressbar",
        "Landroid/widget/ImageView;",
        "Y",
        "Landroid/widget/ImageView;",
        "overlayImage",
        "Landroid/widget/FrameLayout;",
        "Landroid/widget/FrameLayout;",
        "mapContainerV2",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "J",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "flashText",
        "Landroid/widget/Button;",
        "Q",
        "Landroid/widget/Button;",
        "btnNo",
        "l0",
        "closeReplyContact",
        "Landroid/widget/EditText;",
        "s0",
        "Landroid/widget/EditText;",
        "editMessageText",
        "Landroid/widget/TextView;",
        "K",
        "Landroid/widget/TextView;",
        "imageText",
        "R",
        "replyWithText",
        "n0",
        "Landroid/view/View;",
        "buttonContainer",
        "Lcom/google/android/gms/maps/GoogleMap;",
        "map",
        "Landroid/content/IntentFilter;",
        "C",
        "Landroid/content/IntentFilter;",
        "flashServiceFilter",
        "Landroid/content/Intent;",
        "finishReplyIntent",
        "m0",
        "emojiDivider",
        "Lcom/google/android/gms/maps/MapView;",
        "Lcom/google/android/gms/maps/MapView;",
        "mapView",
        "Landroid/animation/AnimatorSet;",
        "A",
        "Landroid/animation/AnimatorSet;",
        "animSet",
        "Lcom/truecaller/flashsdk/ui/customviews/BouncingView;",
        "S",
        "Lcom/truecaller/flashsdk/ui/customviews/BouncingView;",
        "swipeView",
        "L",
        "imageTextV2",
        "y",
        "flashActiveIntent",
        "W",
        "overlayName",
        "overlayBackgroundImage",
        "z",
        "flashStopRingerIntent",
        "X",
        "overlayCaller",
        "N",
        "videoText",
        "Landroid/app/WallpaperManager;",
        "u",
        "Landroid/app/WallpaperManager;",
        "getWallpaperManager",
        "()Landroid/app/WallpaperManager;",
        "setWallpaperManager",
        "(Landroid/app/WallpaperManager;)V",
        "wallpaperManager",
        "h0",
        "bodyContainer",
        "x",
        "flashMinimizeIntent",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;",
        "r0",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;",
        "attachView",
        "M",
        "imageTextV2Container",
        "j0",
        "imageContentV2",
        "t0",
        "Landroid/view/ActionMode;",
        "receiveTextActionMode",
        "Lcom/truecaller/flashsdk/ui/customviews/ArrowView;",
        "T",
        "Lcom/truecaller/flashsdk/ui/customviews/ArrowView;",
        "arrowView",
        "O",
        "btnYes",
        "com/truecaller/flashsdk/ui/incoming/FlashActivity$o",
        "Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$o;",
        "uploadMediaReceiver",
        "com/truecaller/flashsdk/ui/incoming/FlashActivity$d",
        "D",
        "Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$d;",
        "flashServiceReceiver",
        "i0",
        "imageContainerV2",
        "w",
        "finishStopProgressIntent",
        "U",
        "layerView",
        "P",
        "btnOk",
        "Z",
        "overlayFlashFromText",
        "Ljava/lang/Runnable;",
        "B",
        "Ljava/lang/Runnable;",
        "animRunnable",
        "<init>",
        "b",
        "flash_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final A:Landroid/animation/AnimatorSet;

.field public final B:Ljava/lang/Runnable;

.field public final C:Landroid/content/IntentFilter;

.field public final D:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$d;

.field public E:Le/a/y/a/g/f/e;

.field public J:Landroidx/appcompat/widget/AppCompatTextView;

.field public K:Landroid/widget/TextView;

.field public L:Landroid/widget/TextView;

.field public M:Landroid/view/View;

.field public N:Landroid/widget/TextView;

.field public O:Landroid/widget/Button;

.field public P:Landroid/widget/Button;

.field public Q:Landroid/widget/Button;

.field public R:Landroid/widget/TextView;

.field public S:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

.field public T:Lcom/truecaller/flashsdk/ui/customviews/ArrowView;

.field public U:Landroid/view/View;

.field public V:Landroid/widget/ProgressBar;

.field public W:Landroid/widget/TextView;

.field public X:Landroid/widget/TextView;

.field public Y:Landroid/widget/ImageView;

.field public Z:Landroid/widget/TextView;

.field public g0:Landroid/widget/ImageView;

.field public h0:Landroid/view/View;

.field public i0:Landroid/widget/FrameLayout;

.field public j0:Landroid/widget/ImageView;

.field public k0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public l0:Landroid/widget/ImageView;

.field public m0:Landroid/view/View;

.field public n0:Landroid/view/View;

.field public o0:Lcom/google/android/gms/maps/MapView;

.field public p0:Lcom/google/android/gms/maps/GoogleMap;

.field public q0:Landroid/widget/FrameLayout;

.field public r0:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

.field public s0:Landroid/widget/EditText;

.field public t0:Landroid/view/ActionMode;

.field public u:Landroid/app/WallpaperManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final u0:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$o;

.field public final v:Landroid/content/Intent;

.field public final w:Landroid/content/Intent;

.field public final x:Landroid/content/Intent;

.field public final y:Landroid/content/Intent;

.field public final z:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;-><init>()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "type_flash_replied"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->v:Landroid/content/Intent;

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "type_stop_progress"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->w:Landroid/content/Intent;

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "type_flash_minimized"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->x:Landroid/content/Intent;

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "type_flash_active"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->y:Landroid/content/Intent;

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "type_stop_ringer"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->z:Landroid/content/Intent;

    .line 7
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->A:Landroid/animation/AnimatorSet;

    .line 8
    new-instance v0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$c;

    invoke-direct {v0, p0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$c;-><init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->B:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "type_publish_progress"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "type_flash_timer_expired"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "type_flash_received"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->C:Landroid/content/IntentFilter;

    .line 13
    new-instance v0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$d;

    invoke-direct {v0, p0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$d;-><init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->D:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$d;

    .line 14
    new-instance v0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$o;

    invoke-direct {v0, p0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$o;-><init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->u0:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$o;

    return-void
.end method

.method public static final xa(Landroid/content/Context;Lcom/truecaller/flashsdk/models/QueuedFlash;Z)Landroid/content/Intent;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 2
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x20000000

    .line 3
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x4000000

    .line 4
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "ACTION"

    const-string p1, "flashing"

    .line 6
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "show_overlay"

    .line 7
    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v1
.end method


# virtual methods
.method public A0(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0, p1}, Le/a/y/a/g/d;->n1(Z)V

    return-void
.end method

.method public A5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "location"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lat"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "long"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$b;

    invoke-direct {v0, p0, p1}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->p0:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_6

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Q:Landroid/widget/Button;

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    sget v3, Lcom/truecaller/flashsdk/R$drawable;->bg_solid_white_rad_24dp:I

    .line 4
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {p0, v3}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 6
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->O:Landroid/widget/Button;

    if-eqz p1, :cond_4

    .line 8
    invoke-static {p0, v3}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 9
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->P:Landroid/widget/Button;

    if-eqz p1, :cond_3

    .line 11
    invoke-static {p0, v3}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 12
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    sget v3, Lcom/truecaller/flashsdk/R$drawable;->flash_round_button_default_v2:I

    .line 14
    invoke-static {p0, v3}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 15
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->ya()V

    .line 17
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->m0:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->n0:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->r0:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 20
    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->c(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 21
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Le/a/m0/a1$k;->e1(Lcom/google/android/gms/maps/GoogleMap;DDZ)V

    .line 22
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    .line 23
    invoke-virtual {p1}, Le/a/y/a/g/d;->getRecentEmojiLayout()Lcom/truecaller/flashsdk/ui/UniformEmojiLayout;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 24
    invoke-virtual {p1}, Le/a/y/a/g/d;->getMoreEmojis()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->r1()V

    .line 26
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->t1()V

    .line 27
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->u1()V

    .line 28
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Le/a/y/a/g/d;->n1(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "attachView"

    .line 29
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p1, "buttonContainer"

    .line 30
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string p1, "emojiDivider"

    .line 31
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string p1, "btnOk"

    .line 32
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p1, "btnYes"

    .line 33
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string p1, "btnNo"

    .line 34
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_0
    return-void
.end method

.method public A6(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "responses"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->O:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->P:Landroid/widget/Button;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Q:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-string p1, "btnNo"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "btnOk"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "btnYes"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public B5()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->w1(I)V

    .line 3
    iget-object v0, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->B:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "editMessageText"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public B6(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0, p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->setMessageText(Ljava/lang/String;)V

    return-void
.end method

.method public D6(Z)V
    .locals 6

    .line 1
    new-instance v0, Ln3/g0/e;

    invoke-direct {v0}, Ln3/g0/e;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v1

    .line 3
    iget-object v2, v0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v1

    .line 5
    iget-object v2, v0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->n0:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 7
    iget-object v3, v0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$h;

    invoke-direct {v1, p0, p1}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$h;-><init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;Z)V

    invoke-virtual {v0, v1}, Ln3/g0/m;->a(Ln3/g0/m$d;)Ln3/g0/m;

    const-wide/16 v3, 0x190

    .line 9
    iput-wide v3, v0, Ln3/g0/m;->c:J

    .line 10
    new-instance p1, Ln3/g0/c;

    invoke-direct {p1}, Ln3/g0/c;-><init>()V

    .line 11
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->M:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 12
    iget-object v5, p1, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_0
    iput-wide v3, p1, Ln3/g0/m;->c:J

    .line 14
    new-instance v1, Ln3/g0/s;

    invoke-direct {v1}, Ln3/g0/s;-><init>()V

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v1, v3}, Ln3/g0/s;->P(I)Ln3/g0/s;

    .line 16
    invoke-virtual {v1, p1}, Ln3/g0/s;->M(Ln3/g0/m;)Ln3/g0/s;

    .line 17
    invoke-virtual {v1, v0}, Ln3/g0/s;->M(Ln3/g0/m;)Ln3/g0/s;

    .line 18
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->k0:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_1

    invoke-static {p1, v1}, Ln3/g0/q;->a(Landroid/view/ViewGroup;Ln3/g0/m;)V

    return-void

    :cond_1
    const-string p1, "flashUIContainer"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string p1, "buttonContainer"

    .line 19
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public F6()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->va()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->l0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->M:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->i0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    iget-object v2, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->s0:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Le/a/y/a/g/d;->n1(Z)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "editMessageText"

    .line 9
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "replyWithText"

    .line 10
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "imageContainerV2"

    .line 11
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "closeReplyContact"

    .line 12
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public F9()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->r0:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    .line 3
    invoke-virtual {v0}, Le/a/y/a/g/d;->getRecentEmojiLayout()Lcom/truecaller/flashsdk/ui/UniformEmojiLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    invoke-virtual {v0}, Le/a/y/a/g/d;->getMoreEmojis()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->i0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->m0:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->J:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->va()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->l0:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->n0:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->sa()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->L:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0}, Le/a/y/a/g/d;->h1()V

    .line 14
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->q0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->n:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/MapView$b;

    invoke-virtual {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->j()V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->n:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/MapView$b;

    invoke-virtual {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->c()V

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    iget-object v2, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->s0:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Le/a/y/a/g/d;->n1(Z)V

    return-void

    :cond_3
    const-string v0, "editMessageText"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "imageTextV2"

    .line 20
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "buttonContainer"

    .line 21
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v0, "closeReplyContact"

    .line 22
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string v0, "flashText"

    .line 23
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string v0, "emojiDivider"

    .line 24
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string v0, "imageContainerV2"

    .line 25
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_a
    const-string v0, "attachView"

    .line 26
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public G5()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    invoke-interface {v0}, Le/a/y/a/h/t;->o()V

    return-void
.end method

.method public G6(Ljava/lang/String;)V
    .locals 2

    const-string v0, "mapUri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->j6(Landroid/content/Intent;)V

    return-void
.end method

.method public H6()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method public H7(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->V:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const-string v2, "progressbar"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->V:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public I6()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/truecaller/flashsdk/R$id;->action_download:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "contactHeaderView.menu.f\u2026tem(R.id.action_download)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public J6(Ljava/lang/String;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->J:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    const-string v2, "flashText"

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->J:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_3

    const/16 v0, 0xf

    .line 3
    invoke-static {}, Ln3/k/g/f/b;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Ln3/k/g/f/b;->c(Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p1}, Ln3/k/g/f/b;->a(Landroid/widget/TextView;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 10
    invoke-static {v1, v0}, Ln3/k/g/f/b;->c(Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {p1}, Ln3/k/g/f/b;->a(Landroid/widget/TextView;)V

    .line 12
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void

    .line 13
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_4
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public J7(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->B:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_0
    const-string p1, "editMessageText"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public J8(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->e:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->B:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public K6(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->r0:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->setBackgroundColor(I)V

    return-void

    :cond_0
    const-string p1, "attachView"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public K9(Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->U:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "layerView"

    if-eqz v0, :cond_4

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/truecaller/flashsdk/R$dimen;->bouncing_view_jump:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    neg-float v8, v8

    const/4 v10, 0x1

    aput v8, v5, v10

    .line 3
    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v3, "animator"

    .line 4
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x190

    int-to-long v11, v3

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v3, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->U:Landroid/view/View;

    if-eqz v3, :cond_3

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v4, [F

    .line 7
    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    neg-float v9, v9

    aput v9, v8, v6

    aput v7, v8, v10

    .line 8
    invoke-static {v3, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string v5, "animator1"

    .line 9
    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x320

    int-to-long v7, v5

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/16 v5, 0x32

    int-to-long v7, v5

    .line 10
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 11
    new-instance v5, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v5}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    iget-object v5, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->A:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v6

    aput-object v3, v4, v10

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 13
    new-instance v0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$i;

    invoke-direct {v0, p0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$i;-><init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;)V

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->U:Landroid/view/View;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$j;

    invoke-direct {v2, p0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$j;-><init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->S:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    if-eqz v0, :cond_1

    .line 16
    iput-object p0, v0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;->c:Lcom/truecaller/flashsdk/ui/customviews/BouncingView$c;

    if-nez p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->G5()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "swipeView"

    .line 18
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_4
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public L6(Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v0

    new-instance v1, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$l;

    invoke-direct {v1, p0, p1}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$l;-><init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public M4()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0}, Le/a/y/a/g/d;->i1()V

    return-void
.end method

.method public M6()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Q:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    sget v2, Lcom/truecaller/flashsdk/R$drawable;->bg_solid_white_rad_24dp:I

    .line 2
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {p0, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->O:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 6
    invoke-static {p0, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->P:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 9
    invoke-static {p0, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->l0:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->o0:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->q0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->n0:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->q1()V

    .line 16
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->va()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    const-string v0, "replyWithText"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "buttonContainer"

    .line 18
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "closeReplyContact"

    .line 19
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "btnOk"

    .line 20
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v0, "btnYes"

    .line 21
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string v0, "btnNo"

    .line 22
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public N2(Ljava/lang/CharSequence;Z)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    .line 2
    invoke-interface {v0, p1, p2}, Le/a/y/a/h/t;->w(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public N4(Ljava/lang/String;III)V
    .locals 4

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "emoji"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->B:Landroid/widget/EditText;

    const/4 v2, 0x0

    const-string v3, "editMessageText"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 4
    invoke-interface {v1, p2, p3, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 5
    iget-object p1, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->B:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_0
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public N6()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->g0:Landroid/widget/ImageView;

    const-string v1, "overlayBackgroundImage"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->g0:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->u:Landroid/app/WallpaperManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const-string v0, "wallpaperManager"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v2

    :cond_1
    :try_start_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    throw v2

    .line 3
    :catch_0
    new-instance v0, Lcom/truecaller/log/UnmutedException$f;

    const-string v1, "exception setting flash wallpaper"

    invoke-direct {v0, v1}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 4
    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public O3(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->p0:Lcom/google/android/gms/maps/GoogleMap;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object p1

    check-cast p1, Le/a/y/a/h/t;

    invoke-interface {p1}, Le/a/y/a/e/b;->a1()V

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->p0:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$g;

    invoke-direct {v0, p0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$g;-><init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;)V

    .line 4
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/maps/GoogleMap;->a:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    new-instance v1, Le/m/a/f/k/j;

    invoke-direct {v1, v0}, Le/m/a/f/k/j;-><init>(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->L(Lcom/google/android/gms/maps/internal/zzaj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :cond_0
    :goto_0
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
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->J:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->K:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "imageText"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "flashText"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public O6(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "mapUri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageString"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public O9()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->T:Lcom/truecaller/flashsdk/ui/customviews/ArrowView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->d()V

    return-void

    :cond_0
    const-string v0, "arrowView"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public Q6(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->V:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const-string v2, "progressbar"

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->V:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public Q9(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mapImageUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->O4(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 3
    new-instance p2, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$m;

    invoke-direct {p2, p0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$m;-><init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p1, "imageContent"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public R6(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "responses"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->O:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Q:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->P:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    const-string p1, "btnOk"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "btnNo"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "btnYes"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public R9(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "placeName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationImageUrl"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ra()Le/a/z3/e;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->v1(Ljava/lang/String;Ljava/lang/String;Le/a/z3/e;)V

    return-void
.end method

.method public S4(Ljava/lang/String;)V
    .locals 1

    const-string v0, "contactImageUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->S4(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ra()Le/a/z3/e;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    .line 4
    check-cast v0, Le/a/z3/d;

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Le/a/m0/a1$k;->l(Le/f/a/r/a;Landroid/net/Uri;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    .line 6
    invoke-virtual {p1}, Le/f/a/r/a;->f()Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    .line 7
    sget v0, Lcom/truecaller/flashsdk/R$drawable;->ic_empty_avatar:I

    invoke-virtual {p1, v0}, Le/f/a/r/a;->u(I)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    .line 8
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Y:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void

    :cond_0
    const-string p1, "overlayImage"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public S6(I)V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-direct {v0, p0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/truecaller/flashsdk/R$string;->block_profile_popup_description:I

    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    .line 3
    sget v1, Lcom/truecaller/flashsdk/R$string;->sfc_ok:I

    new-instance v2, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$k;

    invoke-direct {v2, p0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$k;-><init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;)V

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 4
    sget v1, Lcom/truecaller/flashsdk/R$string;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 5
    invoke-virtual {v0}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object v0

    const-string v1, "dialog.create()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0, v1}, Ln3/b/a/g;->d(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, -0x2

    .line 8
    invoke-virtual {v0, v2}, Ln3/b/a/g;->d(I)Landroid/widget/Button;

    move-result-object v0

    .line 9
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public S7(Lcom/truecaller/flashsdk/models/Flash;)V
    .locals 2

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->x:Landroid/content/Intent;

    const-string v1, "extra_flash"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->x:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->wa(Landroid/content/Intent;)Z

    return-void
.end method

.method public T0(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    invoke-interface {v0, p1}, Le/a/y/a/e/b;->T0(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public T4()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0}, Le/a/y/a/g/d;->l1()V

    return-void
.end method

.method public T6()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->r0:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    .line 3
    invoke-virtual {v0}, Le/a/y/a/g/d;->getRecentEmojiLayout()Lcom/truecaller/flashsdk/ui/UniformEmojiLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    invoke-virtual {v0}, Le/a/y/a/g/d;->getMoreEmojis()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->i0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->m0:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->J:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->va()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->l0:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->n0:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    .line 12
    iget-object v4, v0, Le/a/y/a/g/d;->x:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    iget-object v3, v0, Le/a/y/a/g/d;->v:Landroid/widget/ImageView;

    const-string v4, "sendMessage"

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, v0, Le/a/y/a/g/d;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget v2, Lcom/truecaller/flashsdk/R$drawable;->flash_reply_button_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    iget-object v2, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->s0:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Le/a/y/a/g/d;->n1(Z)V

    return-void

    :cond_0
    const-string v0, "editMessageText"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_1
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_2
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "sendMessageProgress"

    .line 18
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "buttonContainer"

    .line 19
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "closeReplyContact"

    .line 20
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v0, "flashText"

    .line 21
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string v0, "emojiDivider"

    .line 22
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string v0, "imageContainerV2"

    .line 23
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string v0, "attachView"

    .line 24
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public T7()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0}, Le/a/y/a/g/d;->l1()V

    return-void
.end method

.method public U5()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->i0:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget v3, Lcom/truecaller/flashsdk/R$drawable;->flash_gradient_image_bg:I

    .line 3
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {p0, v3}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->n0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const-string v0, "buttonContainer"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "imageContainerV2"

    .line 8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public U7(Lcom/truecaller/flashsdk/models/QueuedFlash;)V
    .locals 2

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->y:Landroid/content/Intent;

    const-string v1, "extra_flash"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->y:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->wa(Landroid/content/Intent;)Z

    return-void
.end method

.method public U9()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0}, Le/a/y/a/g/d;->m1()V

    return-void
.end method

.method public V(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    invoke-interface {v0, p1}, Le/a/y/a/h/t;->p(Z)V

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

.method public V6(Lcom/truecaller/flashsdk/models/Flash;)V
    .locals 2

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->w:Landroid/content/Intent;

    const-string v1, "extra_flash"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->w:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->wa(Landroid/content/Intent;)Z

    return-void
.end method

.method public V8(Lcom/truecaller/flashsdk/models/Flash;)V
    .locals 2

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->z:Landroid/content/Intent;

    const-string v1, "extra_flash"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->z:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->wa(Landroid/content/Intent;)Z

    return-void
.end method

.method public W5(Ljava/lang/String;)V
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$string;->flash_miss_popup:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.flash_miss_popup, name)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, Lcom/truecaller/flashsdk/R$drawable;->flash_ic_tooltip_center_bottom:I

    const-string v2, "context"

    .line 3
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "toolTipText"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 5
    sget v4, Lcom/truecaller/flashsdk/R$layout;->flash_v2_pop_up:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 6
    sget v4, Lcom/truecaller/flashsdk/R$id;->text:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v6, "view.findViewById<TextView>(R.id.text)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    new-instance p1, Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-direct {p1, v2, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 8
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x1030002

    .line 9
    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 11
    new-instance v1, Le/a/y/a/l/c$a;

    invoke-direct {v1, p1}, Le/a/y/a/l/c$a;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 12
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 13
    invoke-static {p0, v0}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    sget v1, Lcom/truecaller/flashsdk/R$attr;->theme_contrast_bg:I

    invoke-static {p0, v1}, Le/a/p5/s0/g;->k0(Landroid/content/Context;I)I

    move-result v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    const-string v1, "view"

    .line 15
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Z:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 17
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const-string v4, "contentView"

    .line 22
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    neg-int v1, v1

    .line 24
    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "overlayFlashFromText"

    .line 25
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5
.end method

.method public W6(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$attr;->theme_flash_round_button_color:I

    invoke-static {p0, p1, v0}, Le/a/p5/s0/g;->p1(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public W9()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public X5(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/y/a/g/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "menuItems"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->r0:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->setMenuItems(Ljava/util/List;)V

    return-void

    :cond_0
    const-string p1, "attachView"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public X6()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->e:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y5(Lcom/truecaller/flashsdk/models/Flash;)V
    .locals 2

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->v:Landroid/content/Intent;

    const-string v1, "extra_flash"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->v:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->wa(Landroid/content/Intent;)Z

    return-void
.end method

.method public Z0(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "imageUri"

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
    new-instance v1, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$a;

    iget-object v2, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->j0:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-direct {v1, p0, v2}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$a;-><init>(Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0, p1}, Le/a/y/a/g/d;->n1(Z)V

    return-void

    :cond_0
    const-string p1, "imageContentV2"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public Z5(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->U:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const-string p1, "layerView"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a6(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->O:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->P:Landroid/widget/Button;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Q:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_1
    const-string p1, "btnNo"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "btnOk"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "btnYes"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public b5()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->b5()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->k0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->E:Le/a/y/a/g/f/e;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v2, Lcom/truecaller/flashsdk/R$id;->header_action_group:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeGroup(I)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->J:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->m0:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    .line 9
    invoke-virtual {v0, v2}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->w1(I)V

    .line 10
    iget-object v0, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->B:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->a6(Z)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->c7(Z)V

    return-void

    :cond_0
    const-string v0, "editMessageText"

    .line 13
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "replyWithText"

    .line 14
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "emojiDivider"

    .line 15
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "flashText"

    .line 16
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "flashUIContainer"

    .line 17
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public b6(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->J:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const-string p1, "flashText"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public ba()V
    .locals 4

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$id;->receiveImageTextV2:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.receiveImageTextV2)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->L:Landroid/widget/TextView;

    .line 2
    sget v0, Lcom/truecaller/flashsdk/R$id;->receiveImageTextV2Container:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->M:Landroid/view/View;

    .line 3
    sget v0, Lcom/truecaller/flashsdk/R$id;->flashImageContainerV2:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.flashImageContainerV2)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->i0:Landroid/widget/FrameLayout;

    .line 4
    sget v0, Lcom/truecaller/flashsdk/R$id;->imageContentV2:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.imageContentV2)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->j0:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcom/truecaller/flashsdk/R$id;->closeButtonContact:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.closeButtonContact)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->l0:Landroid/widget/ImageView;

    const/4 v1, -0x1

    .line 6
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->j0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->l0:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$a;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->L:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void

    :cond_0
    const-string v0, "imageTextV2"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "closeReplyContact"

    .line 10
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "imageContentV2"

    .line 11
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public c5(Ljava/lang/String;)V
    .locals 1

    const-string v0, "hint"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0, p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->setCameraModeHint(Ljava/lang/String;)V

    return-void
.end method

.method public c6()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->q0:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->i0:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->L:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const-string v0, "imageTextV2"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v0, "imageContainerV2"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public c7(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const-string p1, "replyWithText"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public c8()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->t0:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public d5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "videoUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->d5(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->J:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->N:Landroid/widget/TextView;

    const-string v1, "videoText"

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->N:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "flashText"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public d6(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->V:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :cond_0
    const-string p1, "progressbar"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public e6()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->E:Le/a/y/a/g/f/e;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "(context as Activity).window"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "(context as Activity).window.decorView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const-string v2, "(context as Activity).window.decorView.rootView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 3
    new-instance v2, Ln3/g0/s;

    invoke-direct {v2}, Ln3/g0/s;-><init>()V

    .line 4
    new-instance v3, Ln3/g0/c;

    invoke-direct {v3}, Ln3/g0/c;-><init>()V

    int-to-long v4, v1

    .line 5
    iput-wide v4, v3, Ln3/g0/m;->c:J

    .line 6
    new-instance v1, Ln3/g0/a;

    invoke-direct {v1}, Ln3/g0/a;-><init>()V

    const/high16 v4, 0x42b40000    # 90.0f

    .line 7
    invoke-static {v4}, Ln3/g0/a;->b(F)F

    move-result v5

    iput v5, v1, Ln3/g0/a;->a:F

    .line 8
    invoke-static {v4}, Ln3/g0/a;->b(F)F

    move-result v4

    iput v4, v1, Ln3/g0/a;->b:F

    .line 9
    invoke-virtual {v2, v3}, Ln3/g0/s;->M(Ln3/g0/m;)Ln3/g0/s;

    .line 10
    new-instance v1, Le/a/y/a/g/f/f;

    invoke-direct {v1}, Le/a/y/a/g/f/f;-><init>()V

    invoke-virtual {v2, v1}, Ln3/g0/s;->M(Ln3/g0/m;)Ln3/g0/s;

    .line 11
    invoke-static {v0, v2}, Ln3/g0/q;->a(Landroid/view/ViewGroup;Ln3/g0/m;)V

    .line 12
    iget-object v1, v0, Le/a/y/a/g/f/e;->u:Le/a/y/a/g/f/e$a;

    if-eqz v1, :cond_4

    .line 13
    new-instance v2, Ls1/d0/i;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Ls1/d0/i;-><init>(II)V

    .line 14
    invoke-virtual {v2}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    move-object v3, v2

    check-cast v3, Ls1/d0/h;

    invoke-virtual {v3}, Ls1/d0/h;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Ls1/u/z;

    invoke-virtual {v3}, Ls1/u/z;->a()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 15
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 16
    instance-of v5, v4, Landroid/widget/TextView;

    const-string v6, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    if-eqz v5, :cond_2

    .line 17
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 18
    iget-object v6, v0, Le/a/y/a/g/f/e;->t:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;->z:F

    .line 19
    invoke-virtual {v0, v5}, Le/a/y/a/g/f/e;->h1(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 20
    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setPivotX(F)V

    .line 21
    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setPivotY(F)V

    .line 22
    iget-object v5, v0, Le/a/y/a/g/f/e;->t:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    const/high16 v6, 0x41a00000    # 20.0f

    mul-float/2addr v5, v6

    .line 23
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    neg-float v5, v5

    :cond_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setRotation(F)V

    goto :goto_0

    .line 24
    :cond_2
    instance-of v3, v4, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v3, :cond_0

    .line 25
    check-cast v4, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 26
    iget v5, v1, Le/a/y/a/g/f/e$a;->d:F

    .line 27
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:F

    .line 28
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_4
    return-void
.end method

.method public e8()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->r0:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    .line 3
    invoke-virtual {v0}, Le/a/y/a/g/d;->getRecentEmojiLayout()Lcom/truecaller/flashsdk/ui/UniformEmojiLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    invoke-virtual {v0}, Le/a/y/a/g/d;->getMoreEmojis()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->r1()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->q0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->m0:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->J:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->va()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->M:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->n0:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->i0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->l0:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->t1()V

    .line 16
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->u1()V

    return-void

    :cond_2
    const-string v0, "closeReplyContact"

    .line 17
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "imageContainerV2"

    .line 18
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "buttonContainer"

    .line 19
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "flashText"

    .line 20
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v0, "replyWithText"

    .line 21
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string v0, "emojiDivider"

    .line 22
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string v0, "attachView"

    .line 23
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public f5(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->f5(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Y:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const-string p1, "overlayImage"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public g0()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->g0()V

    .line 2
    sget v0, Lcom/truecaller/flashsdk/R$id;->textReceiveFlash:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.textReceiveFlash)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->J:Landroidx/appcompat/widget/AppCompatTextView;

    .line 3
    sget v0, Lcom/truecaller/flashsdk/R$id;->receiveImageText:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.receiveImageText)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->K:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/truecaller/flashsdk/R$id;->videoText:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.videoText)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->N:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/truecaller/flashsdk/R$id;->btnYes:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.btnYes)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->O:Landroid/widget/Button;

    .line 6
    sget v0, Lcom/truecaller/flashsdk/R$id;->btnOk:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.btnOk)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->P:Landroid/widget/Button;

    .line 7
    sget v0, Lcom/truecaller/flashsdk/R$id;->btnNo:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.btnNo)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Q:Landroid/widget/Button;

    .line 8
    sget v0, Lcom/truecaller/flashsdk/R$id;->replyWithText:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.replyWithText)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->R:Landroid/widget/TextView;

    .line 9
    sget v0, Lcom/truecaller/flashsdk/R$id;->swipeView:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.swipeView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->S:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    .line 10
    sget v0, Lcom/truecaller/flashsdk/R$id;->arrowView:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.arrowView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->T:Lcom/truecaller/flashsdk/ui/customviews/ArrowView;

    .line 11
    sget v0, Lcom/truecaller/flashsdk/R$id;->overLayViewContainer:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.overLayViewContainer)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->U:Landroid/view/View;

    .line 12
    sget v1, Lcom/truecaller/flashsdk/R$id;->progressBar:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.progressBar)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->V:Landroid/widget/ProgressBar;

    .line 13
    sget v1, Lcom/truecaller/flashsdk/R$id;->overlayName:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.overlayName)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->W:Landroid/widget/TextView;

    .line 14
    sget v1, Lcom/truecaller/flashsdk/R$id;->overlayCaller:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.overlayCaller)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->X:Landroid/widget/TextView;

    .line 15
    sget v2, Lcom/truecaller/flashsdk/R$id;->overlayUserImage:I

    invoke-virtual {p0, v2}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v4, "findViewById(R.id.overlayUserImage)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Y:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Z:Landroid/widget/TextView;

    .line 17
    sget v1, Lcom/truecaller/flashsdk/R$id;->imageOverlayBackground:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.imageOverlayBackground)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->g0:Landroid/widget/ImageView;

    .line 18
    sget v1, Lcom/truecaller/flashsdk/R$id;->bodyStub:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.bodyStub)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->h0:Landroid/view/View;

    .line 19
    sget v1, Lcom/truecaller/flashsdk/R$id;->root_container:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.root_container)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->k0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 20
    sget v1, Lcom/truecaller/flashsdk/R$id;->buttonContainer:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.buttonContainer)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->n0:Landroid/view/View;

    .line 21
    sget v1, Lcom/truecaller/flashsdk/R$id;->footerEmojiDivider:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.footerEmojiDivider)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->m0:Landroid/view/View;

    .line 22
    sget v1, Lcom/truecaller/flashsdk/R$id;->edit_message_text:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.edit_message_text)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->s0:Landroid/widget/EditText;

    .line 23
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->S:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;->setDragViewResId(I)V

    .line 24
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0, p0}, Le/a/y/a/g/d;->setActionListener(Le/a/y/a/g/d$a;)V

    .line 25
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;->setContactClickListener$flash_release(Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;)V

    .line 26
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Q:Landroid/widget/Button;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->O:Landroid/widget/Button;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->P:Landroid/widget/Button;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Z:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const-string v1, "$this$updateFlashEmojiTextWithIcon"

    .line 30
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 32
    invoke-static {v0, v1}, Le/a/m0/a1$k;->Z0(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->n0:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->J:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 36
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0, v1}, Le/a/y/a/g/d;->n1(Z)V

    return-void

    :cond_0
    const-string v0, "flashText"

    .line 37
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "buttonContainer"

    .line 38
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v0, "overlayFlashFromText"

    .line 39
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v0, "btnOk"

    .line 40
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string v0, "btnYes"

    .line 41
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string v0, "btnNo"

    .line 42
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string v0, "swipeView"

    .line 43
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public h6(Le/a/y/a/g/f/g;)V
    .locals 3

    const-string v0, "displayableEmojiAttributes"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/y/a/g/f/h;

    invoke-direct {v0, p0}, Le/a/y/a/g/f/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->E:Le/a/y/a/g/f/e;

    .line 2
    invoke-virtual {v0, p1}, Le/a/y/a/g/f/e;->setEmojiAttributes$flash_release(Le/a/y/a/g/f/e$a;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->k0:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->E:Le/a/y/a/g/f/e;

    .line 5
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const-string p1, "flashUIContainer"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public i5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "firstLine"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boldText"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->i5(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->W:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->X:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "overlayCaller"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "overlayName"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public ia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wallpaperUrl"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->n5(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->g0:Landroid/widget/ImageView;

    const-string v0, "overlayBackgroundImage"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ra()Le/a/z3/e;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object p1

    invoke-virtual {p1, p3}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    .line 5
    check-cast p1, Le/a/z3/d;

    .line 6
    iget-object p3, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->g0:Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    invoke-virtual {p1, p3}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 7
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->J:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->K:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "imageText"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "flashText"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_2
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public j5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    const-string v1, "placeName"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "locationMessage"

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lat"

    move-object/from16 v9, p3

    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "long"

    move-object/from16 v10, p4

    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v3, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$b;

    invoke-direct {v3, v7, v0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object v0, v7, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->p0:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->ya()V

    .line 4
    iget-object v1, v7, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->n0:Landroid/view/View;

    const/4 v15, 0x0

    if-eqz v1, :cond_3

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->q1()V

    .line 6
    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/GoogleMap;->c(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 7
    new-instance v11, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$n;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$n;-><init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/maps/GoogleMap;->a:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    new-instance v2, Le/m/a/f/k/g;

    invoke-direct {v2, v11}, Le/m/a/f/k/g;-><init>(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->z0(Lcom/google/android/gms/maps/internal/zzab;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-static/range {p3 .. p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const/4 v3, 0x1

    move-object v9, v0

    move-wide v10, v1

    move v0, v14

    move v14, v3

    invoke-static/range {v9 .. v14}, Le/a/m0/a1$k;->e1(Lcom/google/android/gms/maps/GoogleMap;DDZ)V

    .line 10
    iget-object v1, v7, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->M:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_0
    iget-object v1, v7, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->L:Landroid/widget/TextView;

    const-string v2, "imageTextV2"

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, v7, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->L:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v15

    .line 13
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v15

    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_3
    const-string v0, "buttonContainer"

    .line 15
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v15

    :cond_4
    :goto_0
    return-void
.end method

.method public j6(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public k6(Ljava/lang/String;JLjava/lang/String;)V
    .locals 13

    move-object v0, p0

    const-string v1, "history"

    move-object v3, p1

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "name"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->k0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v10, 0x0

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->E:Le/a/y/a/g/f/e;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v1

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    const/4 v11, 0x0

    invoke-static {v1, v11, v4, v5, v2}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v1}, Le/a/y/a/g/d;->g1()V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/truecaller/flashsdk/R$id;->header_action_group:I

    invoke-interface {v1, v2, v11}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v2, v11}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 6
    iget-object v1, v0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->k:Le/a/y/e/g;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1}, Le/a/y/e/g;->dismiss()V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->sa()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v1, v0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->l:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v1, v0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->J:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-virtual {p0, v11}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->a6(Z)V

    .line 14
    invoke-virtual {p0, v11}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->c7(Z)V

    .line 15
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 16
    new-instance v12, Ln3/r/a/a;

    invoke-direct {v12, v1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 17
    sget v1, Lcom/truecaller/flashsdk/R$id;->waiting_container:I

    .line 18
    sget-object v2, Le/a/y/a/k/e;->n:Le/a/y/a/k/e$a;

    const-wide/32 v4, 0xea60

    const/4 v7, 0x0

    move-object v3, p1

    move-object/from16 v6, p4

    move-wide v8, p2

    .line 19
    invoke-virtual/range {v2 .. v9}, Le/a/y/a/k/e$a;->a(Ljava/lang/String;JLjava/lang/String;ZJ)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 20
    invoke-virtual {v12, v1, v2, v10}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    const/16 v2, 0x1001

    .line 21
    iput v2, v12, Ln3/r/a/f0;->f:I

    .line 22
    invoke-virtual {v12}, Ln3/r/a/a;->g()I

    .line 23
    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view"

    .line 24
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const-string v1, "flashText"

    .line 25
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v10

    :cond_2
    const-string v1, "videoContainer"

    .line 26
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v10

    :cond_3
    const-string v1, "flashUIContainer"

    .line 27
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v10
.end method

.method public l5(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0, p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->setMessageCursorVisible(Z)V

    return-void
.end method

.method public l8(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->r0:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "ThemeUtils.getTintedDraw\u2026ontext, imageId, colorId)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-boolean p2, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->c:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    :cond_1
    iget-object p2, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->g:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_2
    iput-boolean p1, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->d:Z

    .line 12
    iput-boolean p1, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->c:Z

    :goto_0
    return-void

    :cond_3
    const-string p1, "attachView"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public m6(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    const-string v0, "contentUriFromBitmap"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageDescription"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/y/a/a/a;

    invoke-direct {v0}, Le/a/y/a/a/a;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "share_image"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    const-string p1, "share_text"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public m9()V
    .locals 2

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$id;->flashMapContainerV2:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->q0:Landroid/widget/FrameLayout;

    .line 2
    sget v0, Lcom/truecaller/flashsdk/R$id;->flashMapView:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->o0:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->b(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/MapView$b;

    invoke-virtual {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->g()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->q0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$e;

    invoke-direct {v1, p0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$e;-><init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public n5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->n5(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->J:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->M:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->L:Landroid/widget/TextView;

    const-string v2, "imageTextV2"

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->L:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "flashText"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/truecaller/flashsdk/R$id;->waiting_container:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->J(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Le/a/y/a/k/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/a/y/a/k/e;->OA(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public o0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    invoke-interface {v0}, Le/a/y/a/e/b;->o0()V

    return-void
.end method

.method public o6()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Q:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    sget v2, Lcom/truecaller/flashsdk/R$drawable;->bg_solid_white_rad_24dp:I

    .line 2
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {p0, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->O:Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 6
    invoke-static {p0, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->P:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 9
    invoke-static {p0, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->l0:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->M:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->i0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->n0:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->q1()V

    .line 16
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->va()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->q0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "replyWithText"

    .line 19
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "buttonContainer"

    .line 20
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "imageContainerV2"

    .line 21
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "closeReplyContact"

    .line 22
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v0, "btnOk"

    .line 23
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string v0, "btnYes"

    .line 24
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string v0, "btnNo"

    .line 25
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public o9()V
    .locals 0

    return-void
.end method

.method public oa(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "drawable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Q:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->O:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->P:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const-string p1, "btnOk"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "btnYes"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "btnNo"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Le/a/y/a/h/t;->v(ILjava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x280080

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 3
    new-instance v1, Le/a/y/a/h/o;

    invoke-direct {v1, v0}, Le/a/y/a/h/o;-><init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;)V

    .line 4
    sget-object v2, Le/a/y/c/c;->b:Le/a/y/c/c;

    invoke-static {}, Le/a/y/c/c;->a()Le/a/y/c/x/a/a;

    move-result-object v2

    .line 5
    const-class v3, Le/a/y/a/h/o;

    invoke-static {v1, v3}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    const-class v3, Le/a/y/c/x/a/a;

    invoke-static {v2, v3}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    new-instance v5, Le/a/y/a/h/n;

    invoke-direct {v5, v2}, Le/a/y/a/h/n;-><init>(Le/a/y/c/x/a/a;)V

    .line 8
    new-instance v6, Le/a/y/a/h/f;

    invoke-direct {v6, v2}, Le/a/y/a/h/f;-><init>(Le/a/y/c/x/a/a;)V

    .line 9
    new-instance v7, Le/a/y/a/h/d;

    invoke-direct {v7, v2}, Le/a/y/a/h/d;-><init>(Le/a/y/c/x/a/a;)V

    .line 10
    new-instance v8, Le/a/y/a/h/l;

    invoke-direct {v8, v2}, Le/a/y/a/h/l;-><init>(Le/a/y/c/x/a/a;)V

    .line 11
    new-instance v9, Le/a/y/a/h/m;

    invoke-direct {v9, v2}, Le/a/y/a/h/m;-><init>(Le/a/y/c/x/a/a;)V

    .line 12
    new-instance v10, Le/a/y/a/h/c;

    invoke-direct {v10, v2}, Le/a/y/a/h/c;-><init>(Le/a/y/c/x/a/a;)V

    .line 13
    new-instance v11, Le/a/y/a/h/a;

    invoke-direct {v11, v2}, Le/a/y/a/h/a;-><init>(Le/a/y/c/x/a/a;)V

    .line 14
    new-instance v3, Le/a/y/a/h/q;

    invoke-direct {v3, v1}, Le/a/y/a/h/q;-><init>(Le/a/y/a/h/o;)V

    .line 15
    sget-object v4, Lo3/c/b;->c:Ljava/lang/Object;

    .line 16
    instance-of v4, v3, Lo3/c/b;

    if-eqz v4, :cond_0

    move-object v12, v3

    goto :goto_0

    .line 17
    :cond_0
    new-instance v4, Lo3/c/b;

    invoke-direct {v4, v3}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object v12, v4

    .line 18
    :goto_0
    new-instance v3, Le/a/y/a/h/p;

    invoke-direct {v3, v1, v12}, Le/a/y/a/h/p;-><init>(Le/a/y/a/h/o;Ljavax/inject/Provider;)V

    .line 19
    instance-of v4, v3, Lo3/c/b;

    if-eqz v4, :cond_1

    move-object/from16 v20, v3

    goto :goto_1

    .line 20
    :cond_1
    new-instance v4, Lo3/c/b;

    invoke-direct {v4, v3}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object/from16 v20, v4

    .line 21
    :goto_1
    new-instance v3, Le/a/y/a/h/h;

    move-object v13, v3

    invoke-direct {v3, v2}, Le/a/y/a/h/h;-><init>(Le/a/y/c/x/a/a;)V

    .line 22
    new-instance v3, Le/a/y/a/h/j;

    move-object v14, v3

    invoke-direct {v3, v2}, Le/a/y/a/h/j;-><init>(Le/a/y/c/x/a/a;)V

    .line 23
    new-instance v3, Le/a/y/a/h/i;

    move-object v15, v3

    invoke-direct {v3, v2}, Le/a/y/a/h/i;-><init>(Le/a/y/c/x/a/a;)V

    .line 24
    new-instance v3, Le/a/y/a/h/e;

    move-object/from16 v16, v3

    invoke-direct {v3, v2}, Le/a/y/a/h/e;-><init>(Le/a/y/c/x/a/a;)V

    .line 25
    new-instance v3, Le/a/y/a/h/g;

    move-object/from16 v17, v3

    invoke-direct {v3, v2}, Le/a/y/a/h/g;-><init>(Le/a/y/c/x/a/a;)V

    .line 26
    new-instance v3, Le/a/y/a/h/k;

    move-object/from16 v18, v3

    invoke-direct {v3, v2}, Le/a/y/a/h/k;-><init>(Le/a/y/c/x/a/a;)V

    .line 27
    new-instance v3, Le/a/y/a/h/b;

    move-object/from16 v19, v3

    invoke-direct {v3, v2}, Le/a/y/a/h/b;-><init>(Le/a/y/c/x/a/a;)V

    .line 28
    new-instance v4, Le/a/y/a/h/r;

    move-object v3, v4

    move-object/from16 p1, v2

    move-object v2, v4

    move-object v4, v1

    move-object v0, v12

    move-object/from16 v12, v20

    invoke-direct/range {v3 .. v19}, Le/a/y/a/h/r;-><init>(Le/a/y/a/h/o;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 29
    instance-of v3, v2, Lo3/c/b;

    if-eqz v3, :cond_2

    move-object v4, v2

    goto :goto_2

    .line 30
    :cond_2
    new-instance v4, Lo3/c/b;

    invoke-direct {v4, v2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    .line 31
    :goto_2
    new-instance v2, Le/a/y/a/h/s;

    invoke-direct {v2, v1, v0}, Le/a/y/a/h/s;-><init>(Le/a/y/a/h/o;Ljavax/inject/Provider;)V

    .line 32
    instance-of v0, v2, Lo3/c/b;

    if-eqz v0, :cond_3

    goto :goto_3

    .line 33
    :cond_3
    new-instance v0, Lo3/c/b;

    invoke-direct {v0, v2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object v2, v0

    .line 34
    :goto_3
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    move-object/from16 v1, p0

    .line 35
    iput-object v0, v1, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    .line 36
    invoke-interface/range {p1 .. p1}, Le/a/y/c/x/a/a;->b()Le/a/u3/g;

    move-result-object v0

    const-string v3, "Cannot return null from a non-@Nullable component method"

    .line 37
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    invoke-interface/range {p1 .. p1}, Le/a/y/c/x/a/a;->d()Le/a/b0/o/a;

    move-result-object v0

    .line 39
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    iput-object v0, v1, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->b:Le/a/b0/o/a;

    .line 41
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 42
    iput-object v0, v1, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->u:Landroid/app/WallpaperManager;

    .line 43
    iget-object v0, v1, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->b:Le/a/b0/o/a;

    if-eqz v0, :cond_5

    const-string v2, "featureShareImageInFlash"

    .line 44
    invoke-interface {v0, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/truecaller/flashsdk/R$layout;->activity_receive_flashv2:I

    goto :goto_4

    .line 45
    :cond_4
    sget v0, Lcom/truecaller/flashsdk/R$layout;->activity_receive_flash:I

    .line 46
    :goto_4
    invoke-virtual {v1, v0}, Ln3/b/a/h;->setContentView(I)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    invoke-interface {v0, v1}, Le/a/y/a/e/b;->f1(Le/a/y/a/e/e;)V

    return-void

    :cond_5
    const-string v0, "coreSettings"

    .line 48
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->t0:Landroid/view/ActionMode;

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v0

    sget v1, Lcom/truecaller/flashsdk/R$menu;->menu_incoming_header:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->n(I)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v0

    new-instance v1, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$f;

    invoke-direct {v1, p0}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$f;-><init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$f;)V

    .line 3
    invoke-super {p0, p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->o0:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/MapView$b;

    invoke-virtual {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->c()V

    .line 4
    :cond_0
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->D:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$d;

    invoke-virtual {v0, v1}, Ln3/x/a/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->t0:Landroid/view/ActionMode;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "keyEvent"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    invoke-interface {v0, p2}, Le/a/y/a/h/t;->i(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-super {p0, p1, p2}, Ln3/b/a/h;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    invoke-interface {v0}, Le/a/y/a/h/t;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    invoke-interface {v0, p1, p2, p3}, Le/a/y/a/e/b;->g1(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    .line 2
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->D:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$d;

    iget-object v2, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->C:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Ln3/x/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 3
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->u0:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$o;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "action_image_flash"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ln3/x/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    invoke-interface {v0}, Le/a/y/a/e/b;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStop()V

    const-string v0, "power"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager;

    .line 3
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->getMessageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v2

    check-cast v2, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    .line 5
    iget-object v2, v2, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->C:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-interface {v0, v1, v2}, Le/a/y/a/h/t;->t(Ljava/lang/CharSequence;Z)V

    .line 7
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->u0:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$o;

    invoke-virtual {v0, v1}, Ln3/x/a/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_2
    const-string v0, "mapView"

    .line 9
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public p0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->u1()V

    return-void
.end method

.method public p5()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0}, Le/a/y/a/g/d;->i1()V

    return-void
.end method

.method public p8()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->t1()V

    return-void
.end method

.method public q0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    invoke-interface {v0}, Le/a/y/a/e/b;->q0()V

    return-void
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

.method public q6(Le/a/y/a/g/f/a;)V
    .locals 3

    const-string v0, "displayableEmojiAttributes"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/y/a/g/f/b;

    invoke-direct {v0, p0}, Le/a/y/a/g/f/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->E:Le/a/y/a/g/f/e;

    .line 2
    invoke-virtual {v0, p1}, Le/a/y/a/g/f/e;->setEmojiAttributes$flash_release(Le/a/y/a/g/f/e$a;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->k0:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->E:Le/a/y/a/g/f/e;

    .line 5
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const-string p1, "flashUIContainer"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public r6(Ljava/lang/String;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public r9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wallpaperUrl"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->O4(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->g0:Landroid/widget/ImageView;

    const-string v0, "overlayBackgroundImage"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ra()Le/a/z3/e;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object p1

    invoke-virtual {p1, p3}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    .line 5
    check-cast p1, Le/a/z3/d;

    .line 6
    iget-object p3, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->g0:Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    invoke-virtual {p1, p3}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 7
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->J:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->K:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "imageText"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "flashText"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_2
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public s(Le/a/y/e/i;)V
    .locals 4

    const-string v0, "emoticon"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->getMessageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v2

    check-cast v2, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->getSelectionStart()I

    move-result v2

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v3

    check-cast v3, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v3}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->getSelectionEnd()I

    move-result v3

    .line 4
    invoke-interface {v0, v1, p1, v2, v3}, Le/a/y/a/e/b;->d1(Ljava/lang/String;Le/a/y/e/i;II)V

    return-void
.end method

.method public s6(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Q:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->O:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->P:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void

    :cond_0
    const-string p1, "btnOk"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "btnYes"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "btnNo"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public s7()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    .line 2
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->r:Landroid/graphics/Bitmap;

    .line 3
    invoke-interface {v0, v1}, Le/a/y/a/h/t;->h(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public s9(Lcom/truecaller/flashsdk/models/Flash;)V
    .locals 2

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    .line 1
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/flashsdk/core/FlashMediaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_image_download"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_flash"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public u0(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    invoke-interface {v0, p1}, Le/a/y/a/e/b;->k1(I)V

    return-void
.end method

.method public u1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->getMessageText()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->k:Le/a/y/e/g;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2}, Le/a/y/e/g;->isShowing()Z

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->k:Le/a/y/e/g;

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v3}, Le/a/y/e/g;->h()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 7
    invoke-interface {v0, v1, v2, v3}, Le/a/y/a/e/b;->Y0(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public u6()V
    .locals 2

    .line 1
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->D:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$d;

    invoke-virtual {v0, v1}, Ln3/x/a/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public ua()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->S:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "swipeView"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public v2(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->getMessageText()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v2

    check-cast v2, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v3

    check-cast v3, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v3}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->getSelectionEnd()I

    move-result v3

    .line 4
    invoke-interface {v0, v1, p1, v2, v3}, Le/a/y/a/e/b;->j1(Ljava/lang/String;III)V

    return-void
.end method

.method public v6()V
    .locals 5

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$id;->flashAttachButton:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.flashAttachButton)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->r0:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->q1()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->r0:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 5
    sget v2, Lcom/truecaller/flashsdk/R$layout;->flash_attach_viewv2:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 7
    sget v2, Lcom/truecaller/flashsdk/R$id;->fab_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->e:Landroid/widget/ImageView;

    .line 8
    sget v2, Lcom/truecaller/flashsdk/R$id;->fab_menu:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->f:Landroid/widget/LinearLayout;

    .line 9
    sget v2, Lcom/truecaller/flashsdk/R$id;->fab_backdrop:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->g:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 10
    new-instance v3, Le/a/y/a/g/a;

    invoke-direct {v3, v0}, Le/a/y/a/g/a;-><init>(Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_0
    iget-object v2, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->e:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v3, v4}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setElevation(F)V

    .line 12
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "resources"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->h:Z

    .line 13
    iget-object v2, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->e:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    invoke-virtual {v0, p0}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->setFabActionListener(Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;)V

    .line 16
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    check-cast v0, Le/a/y/a/h/t;

    invoke-interface {v0}, Le/a/y/a/h/t;->r()V

    return-void

    :cond_4
    const-string v0, "attachView"

    .line 17
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public w6()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/truecaller/flashsdk/R$id;->action_download:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "contactHeaderView.menu.f\u2026tem(R.id.action_download)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public w8()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    sget v1, Lcom/truecaller/flashsdk/R$string;->tip_reply_with_location:I

    invoke-virtual {v0, v1}, Le/a/y/a/g/d;->k1(I)V

    return-void
.end method

.method public final wa(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public x6()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->r0:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->i0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->n0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const-string v0, "buttonContainer"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "imageContainerV2"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "attachView"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public x7()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->r0:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "attachView"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public y6(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->r0:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "ThemeUtils.getTintedDraw\u2026his, drawable, tintColor)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const-string p1, "attachView"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ya()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->l0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->o0:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->q0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->va()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->L:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    const-string v0, "replyWithText"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "imageTextV2"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "closeReplyContact"

    .line 8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public z0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->i0:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->va()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->l0:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->r0:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    .line 6
    iget-object v3, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->B:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 8
    invoke-virtual {v0}, Le/a/y/a/g/d;->getSendMessageProgress()Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    invoke-virtual {v0}, Le/a/y/a/g/d;->getSendMessage()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/truecaller/flashsdk/R$drawable;->flash_reply_button_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const-string v0, "editMessageText"

    .line 10
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "attachView"

    .line 11
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "closeReplyContact"

    .line 12
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "imageContainerV2"

    .line 13
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public z6()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->T:Lcom/truecaller/flashsdk/ui/customviews/ArrowView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->f()V

    return-void

    :cond_0
    const-string v0, "arrowView"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public z7(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "mapImageUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->qa()Le/a/y/a/g/d;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ra()Le/a/z3/e;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->v1(Ljava/lang/String;Ljava/lang/String;Le/a/z3/e;)V

    return-void
.end method
