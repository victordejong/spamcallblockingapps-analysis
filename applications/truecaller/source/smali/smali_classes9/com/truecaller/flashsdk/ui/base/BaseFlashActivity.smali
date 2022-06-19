.class public abstract Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/y/a/e/e;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Le/a/y/a/g/d$a;
.implements Le/a/y/e/h$c;
.implements Le/m/a/j/a/c$a;
.implements Le/a/y/e/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$AddressResultReceiver;,
        Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$a;,
        Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PresenterView::",
        "Le/a/y/a/e/e;",
        "Presenter::",
        "Le/a/y/a/e/b<",
        "TPresenterView;>;FooterView:",
        "Le/a/y/a/g/d<",
        "+",
        "Le/a/y/a/g/d$a;",
        ">;>",
        "Ln3/b/a/h;",
        "Le/a/y/a/e/e;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/location/LocationSettingsResponse;",
        ">;",
        "Le/a/y/a/g/d$a;",
        "Le/a/y/e/h$c;",
        "Le/m/a/j/a/c$a;",
        "Le/a/y/e/k$a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00be\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u0001*\u000e\u0008\u0001\u0010\u0004*\u0008\u0012\u0004\u0012\u00028\u00000\u0003*\u0010\u0008\u0002\u0010\u0007*\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00052\u00020\u00082\u00020\u00012\u0008\u0012\u0004\u0012\u00020\n0\t2\u00020\u00062\u00020\u000b2\u00020\u000c2\u00020\r:\u0006\u0083\u0002\u00fb\u0001\u00c2\u0001B\u0008\u00a2\u0006\u0005\u0008\u0082\u0002\u0010\u0018J\u0019\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0010H\u0017\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ\u001f\u0010!\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001eH\u0017\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010$\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u001eH\u0017\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010\'\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u0019H\u0017\u00a2\u0006\u0004\u0008\'\u0010\u001cJ\u001b\u0010+\u001a\u00020\u00102\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020)0(\u00a2\u0006\u0004\u0008+\u0010,J#\u00101\u001a\u00020\u00102\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020)0-2\u0006\u00100\u001a\u00020/\u00a2\u0006\u0004\u00081\u00102J\u001f\u00105\u001a\u00020\u00102\u0006\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u00020\u001eH\u0017\u00a2\u0006\u0004\u00085\u0010\"J\u001f\u00106\u001a\u00020\u00102\u0006\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u00020\u001eH\u0017\u00a2\u0006\u0004\u00086\u0010\"J\u001f\u00108\u001a\u00020\u00102\u0006\u00107\u001a\u00020\u001e2\u0006\u00104\u001a\u00020\u001eH\u0017\u00a2\u0006\u0004\u00088\u0010\"J\u000f\u0010:\u001a\u000209H&\u00a2\u0006\u0004\u0008:\u0010;J\u0017\u0010?\u001a\u00020>2\u0006\u0010=\u001a\u00020<H\u0017\u00a2\u0006\u0004\u0008?\u0010@J\r\u0010A\u001a\u00020\u0010\u00a2\u0006\u0004\u0008A\u0010\u0018J\r\u0010B\u001a\u00020\u0010\u00a2\u0006\u0004\u0008B\u0010\u0018J\r\u0010C\u001a\u00020\u0010\u00a2\u0006\u0004\u0008C\u0010\u0018J\r\u0010D\u001a\u00020\u0010\u00a2\u0006\u0004\u0008D\u0010\u0018J\r\u0010E\u001a\u00020\u0010\u00a2\u0006\u0004\u0008E\u0010\u0018J\u0015\u0010G\u001a\u00020\u00102\u0006\u0010F\u001a\u00020>\u00a2\u0006\u0004\u0008G\u0010HJ\r\u0010I\u001a\u00020\u0010\u00a2\u0006\u0004\u0008I\u0010\u0018J\u0017\u0010K\u001a\u00020\u00102\u0006\u0010J\u001a\u00020>H\u0016\u00a2\u0006\u0004\u0008K\u0010HJ\u0017\u0010M\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008M\u0010\u001cJ-\u0010Q\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u00192\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u001e0(2\u0006\u0010P\u001a\u00020OH\u0016\u00a2\u0006\u0004\u0008Q\u0010RJ\u000f\u0010S\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008S\u0010\u0018J\u001d\u0010V\u001a\u00020\u00102\u000c\u0010U\u001a\u0008\u0012\u0004\u0012\u00020\n0TH\u0016\u00a2\u0006\u0004\u0008V\u0010WJ\u0017\u0010Z\u001a\u00020\u00102\u0006\u0010Y\u001a\u00020XH\u0016\u00a2\u0006\u0004\u0008Z\u0010[J)\u0010^\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u00192\u0006\u0010\\\u001a\u00020\u00192\u0008\u0010]\u001a\u0004\u0018\u00010\u0013H\u0014\u00a2\u0006\u0004\u0008^\u0010_J\u000f\u0010`\u001a\u00020\u0010H\u0017\u00a2\u0006\u0004\u0008`\u0010\u0018J\u0017\u0010c\u001a\u00020\u00102\u0006\u0010b\u001a\u00020aH\u0016\u00a2\u0006\u0004\u0008c\u0010dJ\u000f\u0010e\u001a\u00020\u0010H\u0017\u00a2\u0006\u0004\u0008e\u0010\u0018J\u0017\u0010f\u001a\u00020\u00102\u0006\u00104\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008f\u0010%J\u000f\u0010g\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008g\u0010\u0018J\'\u0010m\u001a\u00020\u00102\u0006\u0010i\u001a\u00020h2\u0006\u0010k\u001a\u00020j2\u0006\u0010l\u001a\u00020>H\u0016\u00a2\u0006\u0004\u0008m\u0010nJ\u001f\u0010q\u001a\u00020\u00102\u0006\u0010i\u001a\u00020h2\u0006\u0010p\u001a\u00020oH\u0016\u00a2\u0006\u0004\u0008q\u0010rJ\u0017\u0010s\u001a\u00020\u00102\u0006\u00107\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008s\u0010%J\u0017\u0010t\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008t\u0010\u001cJ\u0017\u0010u\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008u\u0010\u001cJ\u001f\u0010x\u001a\u00020\u00102\u0006\u0010w\u001a\u00020v2\u0006\u0010L\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008x\u0010yJ\u0015\u0010z\u001a\u00020\u00102\u0006\u00104\u001a\u00020\u001e\u00a2\u0006\u0004\u0008z\u0010%J\r\u0010{\u001a\u00020\u0010\u00a2\u0006\u0004\u0008{\u0010\u0018J\r\u0010|\u001a\u00020\u0013\u00a2\u0006\u0004\u0008|\u0010}J\u0018\u0010\u0080\u0001\u001a\u00020>2\u0006\u0010\u007f\u001a\u00020~\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0081\u0001J\u000f\u0010\u0082\u0001\u001a\u00020\u0010\u00a2\u0006\u0005\u0008\u0082\u0001\u0010\u0018J\u001a\u0010\u0084\u0001\u001a\u00020\u00102\u0007\u0010\u0083\u0001\u001a\u00020\u0019H\u0016\u00a2\u0006\u0005\u0008\u0084\u0001\u0010\u001cJ\u0011\u0010\u0085\u0001\u001a\u00020\u0010H\u0016\u00a2\u0006\u0005\u0008\u0085\u0001\u0010\u0018J\u0011\u0010\u0086\u0001\u001a\u00020\u0010H\u0017\u00a2\u0006\u0005\u0008\u0086\u0001\u0010\u0018J\u0011\u0010\u0087\u0001\u001a\u00020\u0010H\u0014\u00a2\u0006\u0005\u0008\u0087\u0001\u0010\u0018R,\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001\u001a\u0006\u0008\u008b\u0001\u0010\u008c\u0001\"\u0006\u0008\u008d\u0001\u0010\u008e\u0001R*\u0010\u0097\u0001\u001a\u00030\u0090\u00018\u0004@\u0004X\u0084.\u00a2\u0006\u0018\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001\u001a\u0006\u0008\u0093\u0001\u0010\u0094\u0001\"\u0006\u0008\u0095\u0001\u0010\u0096\u0001R,\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0099\u0001\u0010\u009a\u0001\u001a\u0006\u0008\u009b\u0001\u0010\u009c\u0001\"\u0006\u0008\u009d\u0001\u0010\u009e\u0001R,\u0010\u00a7\u0001\u001a\u0005\u0018\u00010\u00a0\u00018\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001\u001a\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001\"\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001R(\u0010\u00ad\u0001\u001a\u0002098\u0004@\u0004X\u0084.\u00a2\u0006\u0017\n\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001\u001a\u0005\u0008\u00aa\u0001\u0010;\"\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R,\u0010\u00b5\u0001\u001a\u0005\u0018\u00010\u00ae\u00018\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\u001a\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001\"\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001R\'\u0010\u00b8\u0001\u001a\u0002098\u0004@\u0004X\u0084.\u00a2\u0006\u0016\n\u0005\u0008z\u0010\u00a9\u0001\u001a\u0005\u0008\u00b6\u0001\u0010;\"\u0006\u0008\u00b7\u0001\u0010\u00ac\u0001R,\u0010\u00c0\u0001\u001a\u0005\u0018\u00010\u00b9\u00018\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001\u001a\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001\"\u0006\u0008\u00be\u0001\u0010\u00bf\u0001R*\u0010\u00c8\u0001\u001a\u00030\u00c1\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001\u001a\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001\"\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R*\u0010\u00cc\u0001\u001a\u00030\u00b9\u00018\u0004@\u0004X\u0084.\u00a2\u0006\u0018\n\u0006\u0008\u00c9\u0001\u0010\u00bb\u0001\u001a\u0006\u0008\u00ca\u0001\u0010\u00bd\u0001\"\u0006\u0008\u00cb\u0001\u0010\u00bf\u0001R\u001b\u0010\u00cf\u0001\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cd\u0001\u0010\u00ce\u0001R\u001a\u0010\u00d3\u0001\u001a\u00030\u00d0\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00d1\u0001\u0010\u00d2\u0001R#\u0010\u00d9\u0001\u001a\u00030\u00d4\u00018D@\u0004X\u0084\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00d5\u0001\u0010\u00d6\u0001\u001a\u0006\u0008\u00d7\u0001\u0010\u00d8\u0001R\"\u0010\u00df\u0001\u001a\u00030\u00da\u00018\u0004@\u0004X\u0084\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00db\u0001\u0010\u00dc\u0001\u001a\u0006\u0008\u00dd\u0001\u0010\u00de\u0001R\u001c\u0010\u00e3\u0001\u001a\u0005\u0018\u00010\u00e0\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e1\u0001\u0010\u00e2\u0001R)\u0010\u00ea\u0001\u001a\u00028\u00028\u0004@\u0004X\u0084.\u00a2\u0006\u0018\n\u0006\u0008\u00e4\u0001\u0010\u00e5\u0001\u001a\u0006\u0008\u00e6\u0001\u0010\u00e7\u0001\"\u0006\u0008\u00e8\u0001\u0010\u00e9\u0001R*\u0010\u00f2\u0001\u001a\u00030\u00eb\u00018\u0004@\u0004X\u0084.\u00a2\u0006\u0018\n\u0006\u0008\u00ec\u0001\u0010\u00ed\u0001\u001a\u0006\u0008\u00ee\u0001\u0010\u00ef\u0001\"\u0006\u0008\u00f0\u0001\u0010\u00f1\u0001R\u001a\u0010\u00f6\u0001\u001a\u00030\u00f3\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00f4\u0001\u0010\u00f5\u0001R\u001a\u0010\u00fa\u0001\u001a\u00030\u00f7\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00f8\u0001\u0010\u00f9\u0001R)\u0010\u0081\u0002\u001a\u00028\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u00fb\u0001\u0010\u00fc\u0001\u001a\u0006\u0008\u00fd\u0001\u0010\u00fe\u0001\"\u0006\u0008\u00ff\u0001\u0010\u0080\u0002\u00a8\u0006\u0084\u0002"
    }
    d2 = {
        "Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;",
        "Le/a/y/a/e/e;",
        "PresenterView",
        "Le/a/y/a/e/b;",
        "Presenter",
        "Le/a/y/a/g/d;",
        "Le/a/y/a/g/d$a;",
        "FooterView",
        "Ln3/b/a/h;",
        "Lcom/google/android/gms/tasks/OnCompleteListener;",
        "Lcom/google/android/gms/location/LocationSettingsResponse;",
        "Le/a/y/e/h$c;",
        "Le/m/a/j/a/c$a;",
        "Le/a/y/e/k$a;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "g0",
        "()V",
        "",
        "color",
        "J4",
        "(I)V",
        "j8",
        "",
        "firstLine",
        "boldText",
        "i5",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "contactImageUrl",
        "S4",
        "(Ljava/lang/String;)V",
        "drawableRes",
        "f5",
        "",
        "Le/a/y/e/i;",
        "emojisList",
        "o5",
        "([Lcom/truecaller/flashsdk/emojicons/Emoticon;)V",
        "Le/a/y/b/z;",
        "recentEmojiManager",
        "",
        "to",
        "R4",
        "(Le/a/y/b/z;J)V",
        "imageUrl",
        "message",
        "O4",
        "n5",
        "videoUrl",
        "d5",
        "Landroid/view/View;",
        "ua",
        "()Landroid/view/View;",
        "Landroid/view/Menu;",
        "menu",
        "",
        "onCreateOptionsMenu",
        "(Landroid/view/Menu;)Z",
        "N8",
        "U4",
        "Z4",
        "r8",
        "H4",
        "showEmojis",
        "P4",
        "(Z)V",
        "e9",
        "showLocationView",
        "O0",
        "requestCode",
        "D7",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "h8",
        "Lcom/google/android/gms/tasks/Task;",
        "task",
        "onComplete",
        "(Lcom/google/android/gms/tasks/Task;)V",
        "Lcom/google/android/gms/common/api/ResolvableApiException;",
        "exception",
        "h5",
        "(Lcom/google/android/gms/common/api/ResolvableApiException;)V",
        "resultCode",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Q4",
        "Landroid/location/Location;",
        "lastLocation",
        "I4",
        "(Landroid/location/Location;)V",
        "L4",
        "K7",
        "V9",
        "Le/m/a/j/a/c$c;",
        "provider",
        "Le/m/a/j/a/c;",
        "youTubePlayer",
        "wasRestored",
        "k1",
        "(Le/m/a/j/a/c$c;Le/m/a/j/a/c;Z)V",
        "Le/m/a/j/a/b;",
        "youTubeInitializationResult",
        "G1",
        "(Le/m/a/j/a/c$c;Le/m/a/j/a/b;)V",
        "K4",
        "k5",
        "m5",
        "Landroid/net/Uri;",
        "fileUri",
        "Q5",
        "(Landroid/net/Uri;I)V",
        "l",
        "close",
        "H9",
        "()Landroid/content/Intent;",
        "Landroid/view/MenuItem;",
        "item",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "S0",
        "keyBoardHeight",
        "w5",
        "M7",
        "b5",
        "onDestroy",
        "Landroid/graphics/Bitmap;",
        "r",
        "Landroid/graphics/Bitmap;",
        "getBitmapImageContent",
        "()Landroid/graphics/Bitmap;",
        "setBitmapImageContent",
        "(Landroid/graphics/Bitmap;)V",
        "bitmapImageContent",
        "Landroidx/appcompat/widget/Toolbar;",
        "q",
        "Landroidx/appcompat/widget/Toolbar;",
        "va",
        "()Landroidx/appcompat/widget/Toolbar;",
        "setToolbar",
        "(Landroidx/appcompat/widget/Toolbar;)V",
        "toolbar",
        "Lcom/google/android/gms/maps/GoogleMap;",
        "s",
        "Lcom/google/android/gms/maps/GoogleMap;",
        "getGoogleMap",
        "()Lcom/google/android/gms/maps/GoogleMap;",
        "setGoogleMap",
        "(Lcom/google/android/gms/maps/GoogleMap;)V",
        "googleMap",
        "Le/a/y/e/g;",
        "k",
        "Le/a/y/e/g;",
        "getEmojiKeyboard",
        "()Le/a/y/e/g;",
        "setEmojiKeyboard",
        "(Le/a/y/e/g;)V",
        "emojiKeyboard",
        "h",
        "Landroid/view/View;",
        "sa",
        "setImageContainer",
        "(Landroid/view/View;)V",
        "imageContainer",
        "Lcom/google/android/gms/maps/MapView;",
        "n",
        "Lcom/google/android/gms/maps/MapView;",
        "getMapViewV2",
        "()Lcom/google/android/gms/maps/MapView;",
        "setMapViewV2",
        "(Lcom/google/android/gms/maps/MapView;)V",
        "mapViewV2",
        "getVideoContainer",
        "setVideoContainer",
        "videoContainer",
        "Landroid/widget/ImageView;",
        "j",
        "Landroid/widget/ImageView;",
        "getImageBackground",
        "()Landroid/widget/ImageView;",
        "setImageBackground",
        "(Landroid/widget/ImageView;)V",
        "imageBackground",
        "Le/a/b0/o/a;",
        "b",
        "Le/a/b0/o/a;",
        "getCoreSettings",
        "()Le/a/b0/o/a;",
        "setCoreSettings",
        "(Le/a/b0/o/a;)V",
        "coreSettings",
        "i",
        "getImageContent",
        "setImageContent",
        "imageContent",
        "d",
        "Le/m/a/j/a/c;",
        "player",
        "Landroid/os/ResultReceiver;",
        "o",
        "Landroid/os/ResultReceiver;",
        "addressResultReceiver",
        "Le/a/z3/e;",
        "c",
        "Ls1/g;",
        "ra",
        "()Le/a/z3/e;",
        "glide",
        "Landroid/os/Handler;",
        "e",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "handler",
        "Landroid/widget/ProgressBar;",
        "m",
        "Landroid/widget/ProgressBar;",
        "imageProgressBar",
        "f",
        "Le/a/y/a/g/d;",
        "qa",
        "()Le/a/y/a/g/d;",
        "setFooterView",
        "(Le/a/y/a/g/d;)V",
        "footerView",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;",
        "g",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;",
        "pa",
        "()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;",
        "setContactHeaderView",
        "(Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;)V",
        "contactHeaderView",
        "Lcom/google/android/gms/location/FusedLocationProviderClient;",
        "p",
        "Lcom/google/android/gms/location/FusedLocationProviderClient;",
        "fusedLocationClient",
        "Le/a/y/c/b;",
        "t",
        "Le/a/y/c/b;",
        "flashManager",
        "a",
        "Le/a/y/a/e/b;",
        "ta",
        "()Le/a/y/a/e/b;",
        "setPresenter",
        "(Le/a/y/a/e/b;)V",
        "presenter",
        "<init>",
        "AddressResultReceiver",
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
.field public a:Le/a/y/a/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPresenter;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/b0/o/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final c:Ls1/g;

.field public d:Le/m/a/j/a/c;

.field public final e:Landroid/os/Handler;

.field public f:Le/a/y/a/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFooterView;"
        }
    .end annotation
.end field

.field public g:Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

.field public h:Landroid/view/View;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/ImageView;

.field public k:Le/a/y/e/g;

.field public l:Landroid/view/View;

.field public m:Landroid/widget/ProgressBar;

.field public n:Lcom/google/android/gms/maps/MapView;

.field public o:Landroid/os/ResultReceiver;

.field public p:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field public q:Landroidx/appcompat/widget/Toolbar;

.field public r:Landroid/graphics/Bitmap;

.field public s:Lcom/google/android/gms/maps/GoogleMap;

.field public final t:Le/a/y/c/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    sget-object v0, Ln3/b/a/j;->a:Ln3/g/c;

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Ln3/b/f/w0;->a:Z

    .line 4
    new-instance v0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$e;

    invoke-direct {v0, p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$e;-><init>(Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->c:Ls1/g;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->e:Landroid/os/Handler;

    .line 6
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->t:Le/a/y/c/b;

    return-void
.end method


# virtual methods
.method public D7(I)V
    .locals 2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, v0, p1}, Ln3/k/a/b;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public G1(Le/m/a/j/a/c$c;Le/m/a/j/a/b;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "youTubeInitializationResult"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p1, Lcom/truecaller/flashsdk/R$string;->error_youtube_player:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final H4()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->k:Le/a/y/e/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/e/g;->dismiss()V

    :cond_0
    return-void
.end method

.method public final H9()Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public I4(Landroid/location/Location;)V
    .locals 3

    const-string v0, "lastLocation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->o:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    const-string v1, "context"

    .line 2
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "resultReceiver"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "location"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/flashsdk/assist/FetchAddressIntentService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.truecaller.flashsdk.assist.RECEIVER"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.truecaller.flashsdk.assist.LOCATION_DATA_EXTRA"

    .line 5
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const-string p1, "addressResultReceiver"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public J4(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->q:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 2
    sget v0, Lcom/truecaller/flashsdk/R$drawable;->ic_close_flash:I

    .line 3
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {p0, v0}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ln3/b/a/a;->t(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ln3/b/a/a;->n(Z)V

    :cond_3
    return-void

    :cond_4
    const-string p1, "toolbar"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public K4(Ljava/lang/String;)V
    .locals 2

    const-string v0, "videoUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->d:Le/m/a/j/a/c;

    if-eqz v0, :cond_0

    check-cast v0, Le/m/a/j/a/h/l;

    .line 2
    :try_start_0
    iget-object v0, v0, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Le/m/a/j/a/h/e;->t1(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Le/m/a/j/a/h/j;

    invoke-direct {v0, p1}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public K7(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->l(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->f:Le/a/y/a/g/d;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le/a/y/a/g/d;->o1(Z)V

    return-void

    :cond_0
    const-string p1, "footerView"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public L4()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const/16 v1, 0x64

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->q2(I)Lcom/google/android/gms/location/LocationRequest;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->p2(I)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x1388

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->r2(J)V

    iput-wide v1, v0, Lcom/google/android/gms/location/LocationRequest;->b:J

    iget-boolean v3, v0, Lcom/google/android/gms/location/LocationRequest;->d:Z

    if-nez v3, :cond_0

    long-to-double v1, v1

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    div-double/2addr v1, v3

    double-to-long v1, v1

    iput-wide v1, v0, Lcom/google/android/gms/location/LocationRequest;->c:J

    :cond_0
    const-wide/32 v1, 0xea60

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->o2(J)Lcom/google/android/gms/location/LocationRequest;

    .line 6
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->p:Lcom/google/android/gms/location/FusedLocationProviderClient;

    if-eqz v1, :cond_1

    .line 7
    new-instance v2, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$d;

    invoke-direct {v2, p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$d;-><init>(Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;)V

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderClient;->d(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_1
    const-string v0, "fusedLocationClient"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public M7()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->k:Le/a/y/e/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/y/e/g;->h()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/y/a/e/b;->i1(Z)V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    return-void
.end method

.method public final N8()V
    .locals 7

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$string;->tip_use_tutorial:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.tip_use_tutorial)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v1, Lcom/truecaller/flashsdk/R$drawable;->flash_ic_tooltip_top_right:I

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
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->q:Landroidx/appcompat/widget/Toolbar;

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

    invoke-virtual {v2, v5, v5}, Landroid/view/View;->measure(II)V

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    const-string v4, "popupWindow.contentView"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x4

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "toolbar"

    .line 23
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4
.end method

.method public O0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/y/a/e/b;->O0(Z)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public O4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->h:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    sget p2, Lcom/truecaller/flashsdk/R$id;->imageContent:I

    invoke-virtual {p0, p2}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v1, "findViewById(R.id.imageContent)"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->i:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ra()Le/a/z3/e;

    move-result-object p2

    invoke-virtual {p2}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object p2

    .line 4
    iput-object p1, p2, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p2, Le/f/a/h;->N:Z

    .line 6
    sget p1, Lcom/truecaller/flashsdk/R$drawable;->ic_map_placeholder:I

    invoke-virtual {p2, p1}, Le/a/z3/d;->o0(I)Le/a/z3/d;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Le/a/z3/d;->h0(I)Le/a/z3/d;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$b;

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-direct {p2, p0, v1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$b;-><init>(Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    return-void

    :cond_0
    const-string p1, "imageContent"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "imageContainer"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final P4(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->f:Le/a/y/a/g/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Le/a/y/a/g/d;->t:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget p1, Lcom/truecaller/flashsdk/R$drawable;->more_emojis:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/truecaller/flashsdk/R$drawable;->ic_keyboard:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    const-string p1, "moreEmojis"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "footerView"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public Q4()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->p:Lcom/google/android/gms/location/FusedLocationProviderClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$c;

    iget-object v3, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    if-eqz v3, :cond_0

    invoke-direct {v2, v3}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$c;-><init>(Le/a/y/a/e/b;)V

    new-instance v1, Le/a/y/a/e/a;

    invoke-direct {v1, v2}, Le/a/y/a/e/a;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/tasks/Task;->g(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "fusedLocationClient"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public Q5(Landroid/net/Uri;I)V
    .locals 2

    const-string v0, "fileUri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "output"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final R4(Le/a/y/b/z;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/y/b/z<",
            "Le/a/y/e/i;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "recentEmojiManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/y/e/h;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ua()Landroid/view/View;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    .line 3
    invoke-direct/range {v1 .. v7}, Le/a/y/e/h;-><init>(Landroid/content/Context;Landroid/view/View;Le/a/y/e/k$a;Le/a/y/b/z;J)V

    .line 4
    iget-boolean p1, v0, Le/a/y/e/h;->l:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, v0, Le/a/y/e/h;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Le/a/y/e/b;

    invoke-direct {p2, v0}, Le/a/y/e/b;-><init>(Le/a/y/e/h;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, v0, Le/a/y/e/h;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/truecaller/flashsdk/R$dimen;->keyboard_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Le/a/y/e/h;->f:I

    const/4 p2, -0x1

    .line 7
    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9
    :goto_0
    iput-object p0, v0, Le/a/y/e/h;->e:Le/a/y/e/h$c;

    .line 10
    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->k:Le/a/y/e/g;

    return-void
.end method

.method public final S0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/a/e/b;->l1()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public S4(Ljava/lang/String;)V
    .locals 4

    const-string v0, "contactImageUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->g:Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ra()Le/a/z3/e;

    move-result-object v2

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "glideRequests"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v3, 0x20

    invoke-static {v0, v3}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v0

    .line 4
    invoke-virtual {v2}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    .line 5
    check-cast v2, Le/a/z3/d;

    .line 6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v2, p1}, Le/a/m0/a1$k;->l(Le/f/a/r/a;Landroid/net/Uri;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    .line 7
    invoke-virtual {p1}, Le/f/a/r/a;->f()Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    .line 8
    sget v2, Lcom/truecaller/flashsdk/R$drawable;->ic_empty_avatar:I

    invoke-virtual {p1, v2}, Le/f/a/r/a;->u(I)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    .line 9
    invoke-virtual {p1, v0, v0}, Le/f/a/r/a;->t(II)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    .line 10
    iget-object v0, v1, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;->U:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    :cond_0
    return-void

    :cond_1
    const-string p1, "contactHeaderView"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final U4()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->f:Le/a/y/a/g/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance v2, Le/a/y/a/l/c;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/truecaller/flashsdk/R$string;->tip_use_emoji:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x1f44d

    invoke-static {v7}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    const-string v8, "Character.toChars(CODE_POINT_THUMBS_UP)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([C)V

    const/4 v7, 0x0

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context.getString(R.stri\u2026s(CODE_POINT_THUMBS_UP)))"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget v5, Lcom/truecaller/flashsdk/R$drawable;->flash_ic_tooltip_center_bottom:I

    invoke-direct {v2, v3, v4, v5}, Le/a/y/a/l/c;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6
    iput-object v2, v0, Le/a/y/a/g/d;->A:Le/a/y/a/l/c;

    .line 7
    iget-object v0, v0, Le/a/y/a/g/d;->y:Lcom/truecaller/flashsdk/ui/UniformEmojiLayout;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v2, v0, v7}, Le/a/y/a/l/c;->a(Landroid/view/View;I)V

    return-void

    :cond_0
    const-string v0, "recentEmojiLayout"

    .line 9
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "footerView"

    .line 10
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public V9()V
    .locals 0

    return-void
.end method

.method public final Z4()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->k:Le/a/y/e/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/e/g;->e()V

    :cond_0
    return-void
.end method

.method public b5()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->l:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    sget v0, Lcom/truecaller/flashsdk/R$id;->waiting_container:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    .line 4
    invoke-virtual {v4, v0}, Landroidx/fragment/app/FragmentManager;->J(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 5
    new-instance v5, Ln3/r/a/a;

    invoke-direct {v5, v4}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    if-eqz v0, :cond_6

    .line 6
    invoke-virtual {v5, v0}, Ln3/r/a/a;->l(Landroidx/fragment/app/Fragment;)Ln3/r/a/f0;

    invoke-virtual {v5}, Ln3/r/a/f0;->h()V

    const-string v0, "view"

    .line 7
    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->h:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->f:Le/a/y/a/g/d;

    const-string v2, "footerView"

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Le/a/y/a/g/d;->o1(Z)V

    .line 12
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->f:Le/a/y/a/g/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->f:Le/a/y/a/g/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Le/a/y/a/g/d;->g1()V

    return-void

    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "imageContainer"

    .line 16
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "imageContent"

    .line 17
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_6
    return-void

    :cond_7
    const-string v0, "videoContainer"

    .line 18
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public d5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "videoUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->l:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Le/a/y/a/e/b;->c1(Ljava/lang/String;)V

    .line 3
    new-instance p1, Le/m/a/j/a/d;

    invoke-direct {p1}, Le/m/a/j/a/d;-><init>()V

    .line 4
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    .line 5
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p2}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 6
    sget p2, Lcom/truecaller/flashsdk/R$id;->youtubeFragment:I

    invoke-virtual {v0, p2, p1}, Ln3/r/a/f0;->b(ILandroidx/fragment/app/Fragment;)Ln3/r/a/f0;

    .line 7
    invoke-virtual {v0}, Ln3/r/a/a;->h()V

    const-string p2, "AIzaSyCd6tpLEKJi-5w6SDpTpzj6UTZpS47j7fw"

    const-string v0, "Developer key cannot be null or empty"

    .line 8
    invoke-static {p2, v0}, Ln3/g0/y;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object p2, p1, Le/m/a/j/a/d;->d:Ljava/lang/String;

    iput-object p0, p1, Le/m/a/j/a/d;->e:Le/m/a/j/a/c$a;

    invoke-virtual {p1}, Le/m/a/j/a/d;->OA()V

    goto :goto_0

    :cond_0
    const-string p1, "presenter"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v0

    :cond_1
    :try_start_1
    const-string p1, "videoContainer"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    throw v0

    :catch_0
    :goto_0
    return-void
.end method

.method public final e9()V
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public f5(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->g:Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const-string p1, "contactHeaderView"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public g0()V
    .locals 2

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$id;->flash_contact_header_view:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.flash_contact_header_view)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->g:Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    .line 2
    sget v0, Lcom/truecaller/flashsdk/R$id;->footerView:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.footerView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/y/a/g/d;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->f:Le/a/y/a/g/d;

    .line 3
    sget v0, Lcom/truecaller/flashsdk/R$id;->toolbarMain:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.toolbarMain)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->q:Landroidx/appcompat/widget/Toolbar;

    .line 4
    sget v0, Lcom/truecaller/flashsdk/R$id;->imageContent:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.imageContent)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->i:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcom/truecaller/flashsdk/R$id;->flashImageContainer:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.flashImageContainer)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->h:Landroid/view/View;

    .line 6
    sget v0, Lcom/truecaller/flashsdk/R$id;->flashYoutubeContainer:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.flashYoutubeContainer)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->l:Landroid/view/View;

    return-void
.end method

.method public h5(Lcom/google/android/gms/common/api/ResolvableApiException;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/common/api/ApiException;->a:Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x3e8

    .line 2
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/common/api/Status;->r2(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public h8()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const/16 v1, 0x64

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->q2(I)Lcom/google/android/gms/location/LocationRequest;

    .line 3
    new-instance v1, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, v1, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->b:Z

    .line 6
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    new-instance v0, Lcom/google/android/gms/location/SettingsClient;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/SettingsClient;-><init>(Landroid/app/Activity;)V

    .line 7
    new-instance v2, Lcom/google/android/gms/location/LocationSettingsRequest;

    iget-object v3, v1, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->a:Ljava/util/ArrayList;

    iget-boolean v1, v1, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->b:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(Ljava/util/List;ZZLcom/google/android/gms/location/zzae;)V

    .line 8
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->d:Lcom/google/android/gms/location/SettingsApi;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/location/SettingsApi;->checkLocationSettings(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-direct {v1}, Lcom/google/android/gms/location/LocationSettingsResponse;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/PendingResultUtil;->a(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/Response;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 9
    check-cast v0, Le/m/a/f/q/b0;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Le/m/a/f/q/o;

    sget-object v2, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, p0}, Le/m/a/f/q/o;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    iget-object v2, v0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    .line 12
    invoke-virtual {v2, v1}, Le/m/a/f/q/w;->a(Le/m/a/f/q/v;)V

    .line 13
    invoke-static {p0}, Le/m/a/f/q/a0;->k(Landroid/app/Activity;)Le/m/a/f/q/a0;

    move-result-object v2

    invoke-virtual {v2, v1}, Le/m/a/f/q/a0;->l(Le/m/a/f/q/v;)V

    .line 14
    invoke-virtual {v0}, Le/m/a/f/q/b0;->A()V

    return-void
.end method

.method public i5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "firstLine"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boldText"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->g:Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    if-eqz v1, :cond_0

    const-string v2, "firstText"

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v1, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;->T:Landroid/widget/TextView;

    const-string v2, "$this$setHeaderTextWithFlashIcon"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "firstPart"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f666666    # 0.9f

    invoke-direct {p1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, p1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7
    invoke-static {v1, v0}, Le/a/m0/a1$k;->Z0(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V

    .line 8
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "contactHeaderView"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final j8(I)V
    .locals 2

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$id;->tc_logo:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public k1(Le/m/a/j/a/c$c;Le/m/a/j/a/c;Z)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "youTubePlayer"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p2, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->d:Le/m/a/j/a/c;

    if-nez p3, :cond_1

    .line 2
    sget-object p1, Le/m/a/j/a/c$b;->b:Le/m/a/j/a/c$b;

    check-cast p2, Le/m/a/j/a/h/l;

    .line 3
    :try_start_0
    iget-object p2, p2, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Le/m/a/j/a/h/e;->p1(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/y/a/e/b;->b1()V

    goto :goto_0

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Le/m/a/j/a/h/j;

    invoke-direct {p2, p1}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public k5(I)V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, v0, p1}, Ln3/k/a/b;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public m5(I)V
    .locals 1

    const-string v0, "android.permission.CAMERA"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, v0, p1}, Ln3/k/a/b;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public n5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p2, Lcom/truecaller/flashsdk/R$id;->imageContentV2:I

    invoke-virtual {p0, p2}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.imageContentV2)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->i:Landroid/widget/ImageView;

    .line 2
    sget p2, Lcom/truecaller/flashsdk/R$id;->imageBackgroundV2:I

    invoke-virtual {p0, p2}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->j:Landroid/widget/ImageView;

    .line 3
    sget p2, Lcom/truecaller/flashsdk/R$id;->imageProgressBar:I

    invoke-virtual {p0, p2}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->m:Landroid/widget/ProgressBar;

    .line 4
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->h:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ra()Le/a/z3/e;

    move-result-object p2

    invoke-virtual {p2}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object p2

    .line 6
    iput-object p1, p2, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p2, Le/f/a/h;->N:Z

    .line 8
    sget p1, Lcom/truecaller/flashsdk/R$drawable;->ic_flash_media_placeholder:I

    invoke-virtual {p2, p1}, Le/a/z3/d;->o0(I)Le/a/z3/d;

    move-result-object p2

    .line 9
    invoke-virtual {p2, p1}, Le/a/z3/d;->h0(I)Le/a/z3/d;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$b;

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-direct {p2, p0, v1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$b;-><init>(Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    return-void

    :cond_0
    const-string p1, "imageContent"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "imageContainer"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final o5([Le/a/y/e/i;)V
    .locals 1

    const-string v0, "emojisList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->f:Le/a/y/a/g/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/y/a/g/d;->setRecentEmojis([Le/a/y/e/i;)V

    return-void

    :cond_0
    const-string p1, "footerView"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Le/a/y/a/e/b;->m1(IILandroid/content/Intent;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/location/LocationSettingsResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/y/a/e/b;->U0(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->t:Le/a/y/c/b;

    invoke-interface {p1}, Le/a/y/c/b;->A()I

    move-result p1

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setTheme(I)V

    .line 3
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    new-instance p1, Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-direct {p1, p0}, Lcom/google/android/gms/location/FusedLocationProviderClient;-><init>(Landroid/app/Activity;)V

    const-string v0, "LocationServices.getFuse\u2026ationProviderClient(this)"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->p:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 5
    new-instance p1, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$AddressResultReceiver;

    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->e:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$AddressResultReceiver;-><init>(Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->o:Landroid/os/ResultReceiver;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/truecaller/flashsdk/R$menu;->flash_menu_top:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->d:Le/m/a/j/a/c;

    if-eqz v0, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Le/m/a/j/a/h/l;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    iget-object v1, v1, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {v1}, Le/m/a/j/a/h/e;->c()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_1

    .line 5
    :try_start_2
    check-cast v0, Le/m/a/j/a/h/l;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Le/m/a/j/a/h/l;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Le/m/a/j/a/h/j;

    invoke-direct {v1, v0}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-void

    :catch_1
    move-exception v0

    .line 8
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/y/a/e/b;->c()V

    return-void

    :cond_2
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    const/4 v0, 0x0

    const-string v1, "presenter"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/y/a/e/b;->W0()V

    .line 4
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Le/a/y/a/e/b;->f1(Le/a/y/a/e/e;)V

    return-void

    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-interface {v0, p1}, Le/a/y/a/e/b;->e1(I)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Le/a/y/a/e/b;->g1(I[Ljava/lang/String;[I)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final pa()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->g:Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "contactHeaderView"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final qa()Le/a/y/a/g/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFooterView;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->f:Le/a/y/a/g/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "footerView"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final r8()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->k:Le/a/y/e/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/e/g;->f()V

    :cond_0
    return-void
.end method

.method public final ra()Le/a/z3/e;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/z3/e;

    return-object v0
.end method

.method public final sa()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "imageContainer"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final ta()Le/a/y/a/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPresenter;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract ua()Landroid/view/View;
.end method

.method public final va()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->q:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "toolbar"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public w5(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->a:Le/a/y/a/e/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/y/a/e/b;->h1()V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
