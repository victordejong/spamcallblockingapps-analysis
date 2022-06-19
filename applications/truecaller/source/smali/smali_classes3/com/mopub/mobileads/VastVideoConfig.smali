.class public Lcom/mopub/mobileads/VastVideoConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/mopub/mobileads/Mockable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastVideoConfig$a;,
        Lcom/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapter;,
        Lcom/mopub/mobileads/VastVideoConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001c\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010#\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008Q\u0008\u0017\u0018\u0000 \u00cb\u00012\u00020\u0001:\u0005\u00cb\u0001\u00cc\u0001\u000eB\t\u00a2\u0006\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001J)\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0012\u00a2\u0006\u0004\u0008\u0008\u0010\tJ#\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0012\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001d\u0010\u0011\u001a\u00020\u00072\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\nH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001d\u0010\u0014\u001a\u00020\u00072\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\nH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\u001d\u0010\u0017\u001a\u00020\u00072\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\nH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0012J\u001d\u0010\u001a\u001a\u00020\u00072\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\nH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0012J\u001d\u0010\u001c\u001a\u00020\u00072\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\r0\nH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0012J\u001d\u0010\u001e\u001a\u00020\u00072\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\r0\nH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0012J\u001d\u0010 \u001a\u00020\u00072\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\r0\nH\u0016\u00a2\u0006\u0004\u0008 \u0010\u0012J\u001d\u0010\"\u001a\u00020\u00072\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\r0\nH\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0012J\u001d\u0010$\u001a\u00020\u00072\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\r0\nH\u0016\u00a2\u0006\u0004\u0008$\u0010\u0012J\u001d\u0010&\u001a\u00020\u00072\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\r0\nH\u0016\u00a2\u0006\u0004\u0008&\u0010\u0012J\u001f\u0010*\u001a\u00020\u00072\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010\'H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u0019\u0010.\u001a\u00020\u00072\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u00081\u00102J\u001f\u00103\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00083\u00104J\'\u00107\u001a\u00020\u00072\u0006\u00106\u001a\u0002052\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00087\u00108J\u001f\u00109\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00089\u00104J\u001f\u0010:\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008:\u00104J\u001f\u0010;\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008;\u00104J\u001f\u0010<\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008<\u00104J\u001f\u0010=\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008=\u00104J\u001f\u0010>\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008>\u00104J)\u0010A\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010@\u001a\u0004\u0018\u00010?2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008A\u0010BJ%\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\r0\n2\u0006\u0010C\u001a\u00020\u00042\u0006\u0010D\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008E\u0010FJ\u0019\u0010H\u001a\u0004\u0018\u00010\u00042\u0006\u0010G\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008H\u0010IJ\u000f\u0010J\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008J\u0010KJ\u0017\u0010N\u001a\u00020\u00072\u0006\u0010M\u001a\u00020LH\u0016\u00a2\u0006\u0004\u0008N\u0010OJ\u001d\u0010R\u001a\u00020\u00072\u000c\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020L0PH\u0016\u00a2\u0006\u0004\u0008R\u0010SR\u001c\u0010W\u001a\u0008\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u001c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010ZR\u001c\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004\u00a2\u0006\u0006\n\u0004\u0008[\u0010VR$\u0010d\u001a\u0004\u0018\u00010]8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010cR\u001c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008e\u0010ZR$\u0010k\u001a\u0004\u0018\u00010\u000b8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u0008f\u0010g\u001a\u0004\u0008h\u0010K\"\u0004\u0008i\u0010jR\u001c\u0010o\u001a\u0008\u0012\u0004\u0012\u00020(0l8\u0012@\u0013X\u0093\u0004\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR$\u0010s\u001a\u0004\u0018\u00010\u000b8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u0008p\u0010g\u001a\u0004\u0008q\u0010K\"\u0004\u0008r\u0010jR\u001c\u0010u\u001a\u0008\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004\u00a2\u0006\u0006\n\u0004\u0008t\u0010VR$\u0010y\u001a\u0004\u0018\u00010\u000b8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u0008v\u0010g\u001a\u0004\u0008w\u0010K\"\u0004\u0008x\u0010jR\u001c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008z\u0010ZR\u001c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180X8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008{\u0010ZR3\u0010\u0084\u0001\u001a\u0004\u0018\u00010|2\u0008\u0010}\u001a\u0004\u0018\u00010|8\u0016@VX\u0097\u000e\u00a2\u0006\u0016\n\u0004\u0008~\u0010\u007f\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001\"\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u001e\u0010\u0086\u0001\u001a\u0008\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0085\u0001\u0010VR2\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u000b2\u0008\u0010}\u001a\u0004\u0018\u00010\u000b8\u0016@VX\u0097\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0087\u0001\u0010g\u001a\u0005\u0008\u0088\u0001\u0010K\"\u0005\u0008\u0089\u0001\u0010jR%\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020L0l8\u0016@\u0017X\u0097\u0004\u00a2\u0006\u000f\n\u0005\u0008\u008b\u0001\u0010n\u001a\u0006\u0008\u008c\u0001\u0010\u008d\u0001R)\u0010\u0094\u0001\u001a\u00020\u00048\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001\"\u0006\u0008\u0092\u0001\u0010\u0093\u0001R\u001d\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0095\u0001\u0010ZR2\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u000b2\u0008\u0010}\u001a\u0004\u0018\u00010\u000b8\u0016@VX\u0097\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0096\u0001\u0010g\u001a\u0005\u0008\u0097\u0001\u0010K\"\u0005\u0008\u0098\u0001\u0010jR2\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u000b2\u0008\u0010}\u001a\u0004\u0018\u00010\u000b8\u0016@VX\u0097\u000e\u00a2\u0006\u0015\n\u0005\u0008\u009a\u0001\u0010g\u001a\u0005\u0008\u009b\u0001\u0010K\"\u0005\u0008\u009c\u0001\u0010jR\u001e\u0010\u009f\u0001\u001a\u0008\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004\u00a2\u0006\u0007\n\u0005\u0008\u009e\u0001\u0010VR\u001d\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150X8V@\u0016X\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00a0\u0001\u0010ZR\u001d\u0010\u00a1\u0001\u001a\u0008\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010VR\u001d\u0010\u00a2\u0001\u001a\u0008\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010VR\u001d\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00a3\u0001\u0010ZR\u001e\u0010\u00a5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00150T8\u0012@\u0013X\u0093\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00a4\u0001\u0010VR\u001e\u0010)\u001a\u0008\u0012\u0004\u0012\u00020(0\'8V@\u0016X\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00a6\u0001\u0010\u008d\u0001R2\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u000b2\u0008\u0010}\u001a\u0004\u0018\u00010\u000b8\u0016@VX\u0097\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a7\u0001\u0010g\u001a\u0005\u0008\u00a8\u0001\u0010K\"\u0005\u0008\u00a9\u0001\u0010jR\u001d\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ab\u0001\u0010ZR\u001d\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ac\u0001\u0010ZR(\u0010\u00b0\u0001\u001a\u0004\u0018\u00010\u000b8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00ad\u0001\u0010g\u001a\u0005\u0008\u00ae\u0001\u0010K\"\u0005\u0008\u00af\u0001\u0010jR\u001d\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b1\u0001\u0010ZR\u0019\u0010\u00b3\u0001\u001a\u00020\u00048V@\u0016X\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00b2\u0001\u0010\u0091\u0001R(\u0010\u00b7\u0001\u001a\u0004\u0018\u00010\u000b8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00b4\u0001\u0010g\u001a\u0005\u0008\u00b5\u0001\u0010K\"\u0005\u0008\u00b6\u0001\u0010jR(\u0010\u00bd\u0001\u001a\u0002008\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001\u001a\u0005\u0008\u00ba\u0001\u00102\"\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001R\u001e\u0010\u00bf\u0001\u001a\u0008\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00be\u0001\u0010VR\u001e\u0010\u00c1\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00180T8\u0012@\u0013X\u0093\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00c0\u0001\u0010VR(\u0010\u00c3\u0001\u001a\u0002008\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00c2\u0001\u0010\u00b9\u0001\u001a\u0005\u0008\u00c3\u0001\u00102\"\u0006\u0008\u00c4\u0001\u0010\u00bc\u0001R2\u0010\u00c8\u0001\u001a\u0004\u0018\u00010\u000b2\u0008\u0010}\u001a\u0004\u0018\u00010\u000b8\u0016@VX\u0097\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00c5\u0001\u0010g\u001a\u0005\u0008\u00c6\u0001\u0010K\"\u0005\u0008\u00c7\u0001\u0010j\u00a8\u0006\u00cd\u0001"
    }
    d2 = {
        "Lcom/mopub/mobileads/VastVideoConfig;",
        "Ljava/io/Serializable;",
        "Landroid/content/Context;",
        "context",
        "",
        "contentPlayHead",
        "requestCode",
        "Ls1/s;",
        "b",
        "(Landroid/content/Context;ILjava/lang/Integer;)V",
        "",
        "",
        "urls",
        "Lcom/mopub/mobileads/VastTracker;",
        "a",
        "(Ljava/util/List;)Ljava/util/List;",
        "impressionTrackers",
        "addImpressionTrackers",
        "(Ljava/util/List;)V",
        "resumeTrackers",
        "addResumeTrackers",
        "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
        "fractionalTrackers",
        "addFractionalTrackers",
        "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
        "absoluteTrackers",
        "addAbsoluteTrackers",
        "completeTrackers",
        "addCompleteTrackers",
        "pauseTrackers",
        "addPauseTrackers",
        "closeTrackers",
        "addCloseTrackers",
        "skipTrackers",
        "addSkipTrackers",
        "clickTrackers",
        "addClickTrackers",
        "errorTrackers",
        "addErrorTrackers",
        "",
        "Lcom/mopub/common/ViewabilityVendor;",
        "viewabilityVendors",
        "addViewabilityVendors",
        "(Ljava/util/Set;)V",
        "Lorg/json/JSONObject;",
        "videoTrackers",
        "addVideoTrackers",
        "(Lorg/json/JSONObject;)V",
        "",
        "hasCompanionAd",
        "()Z",
        "handleImpression",
        "(Landroid/content/Context;I)V",
        "Landroid/app/Activity;",
        "activity",
        "handleClickForResult",
        "(Landroid/app/Activity;II)V",
        "handleClickWithoutResult",
        "handleResume",
        "handlePause",
        "handleClose",
        "handleSkip",
        "handleComplete",
        "Lcom/mopub/mobileads/VastErrorCode;",
        "errorCode",
        "handleError",
        "(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V",
        "currentPositionMillis",
        "videoLengthMillis",
        "getUntriggeredTrackersBefore",
        "(II)Ljava/util/List;",
        "videoDuration",
        "getSkipOffsetMillis",
        "(I)Ljava/lang/Integer;",
        "toJsonString",
        "()Ljava/lang/String;",
        "Lcom/mopub/mobileads/VastCompanionAdConfig;",
        "vastCompanionAdConfig",
        "addVastCompanionAdConfig",
        "(Lcom/mopub/mobileads/VastCompanionAdConfig;)V",
        "",
        "vastCompanionAdConfigs",
        "addVastCompanionAdConfigs",
        "(Ljava/lang/Iterable;)V",
        "",
        "e",
        "Ljava/util/List;",
        "_closeTrackers",
        "Ljava/util/ArrayList;",
        "getResumeTrackers",
        "()Ljava/util/ArrayList;",
        "f",
        "_skipTrackers",
        "Lcom/mopub/mobileads/VastIconConfig;",
        "q",
        "Lcom/mopub/mobileads/VastIconConfig;",
        "getVastIconConfig",
        "()Lcom/mopub/mobileads/VastIconConfig;",
        "setVastIconConfig",
        "(Lcom/mopub/mobileads/VastIconConfig;)V",
        "vastIconConfig",
        "getClickTrackers",
        "m",
        "Ljava/lang/String;",
        "getNetworkMediaFileUrl",
        "setNetworkMediaFileUrl",
        "(Ljava/lang/String;)V",
        "networkMediaFileUrl",
        "",
        "k",
        "Ljava/util/Set;",
        "_viewabilityVendors",
        "o",
        "getSkipOffset",
        "setSkipOffset",
        "skipOffset",
        "c",
        "_resumeTrackers",
        "n",
        "getDiskMediaFileUrl",
        "setDiskMediaFileUrl",
        "diskMediaFileUrl",
        "getCompleteTrackers",
        "getAbsoluteTrackers",
        "Lcom/mopub/mobileads/VideoViewabilityTracker;",
        "value",
        "x",
        "Lcom/mopub/mobileads/VideoViewabilityTracker;",
        "getVideoViewabilityTracker",
        "()Lcom/mopub/mobileads/VideoViewabilityTracker;",
        "setVideoViewabilityTracker",
        "(Lcom/mopub/mobileads/VideoViewabilityTracker;)V",
        "videoViewabilityTracker",
        "h",
        "_errorTrackers",
        "y",
        "getDspCreativeId",
        "setDspCreativeId",
        "dspCreativeId",
        "p",
        "getVastCompanionAdConfigs",
        "()Ljava/util/Set;",
        "s",
        "I",
        "getCountdownTimerDuration",
        "()I",
        "setCountdownTimerDuration",
        "(I)V",
        "countdownTimerDuration",
        "getCloseTrackers",
        "u",
        "getCustomCtaText",
        "setCustomCtaText",
        "customCtaText",
        "w",
        "getCustomCloseIconUrl",
        "setCustomCloseIconUrl",
        "customCloseIconUrl",
        "d",
        "_completeTrackers",
        "getFractionalTrackers",
        "_impressionTrackers",
        "_pauseTrackers",
        "getSkipTrackers",
        "i",
        "_fractionalTrackers",
        "getViewabilityVendors",
        "v",
        "getCustomSkipText",
        "setCustomSkipText",
        "customSkipText",
        "getImpressionTrackers",
        "getErrorTrackers",
        "l",
        "getClickThroughUrl",
        "setClickThroughUrl",
        "clickThroughUrl",
        "getPauseTrackers",
        "getRemainingProgressTrackerCount",
        "remainingProgressTrackerCount",
        "A",
        "getPrivacyInformationIconClickthroughUrl",
        "setPrivacyInformationIconClickthroughUrl",
        "privacyInformationIconClickthroughUrl",
        "t",
        "Z",
        "getEnableClickExperiment",
        "setEnableClickExperiment",
        "(Z)V",
        "enableClickExperiment",
        "g",
        "_clickTrackers",
        "j",
        "_absoluteTrackers",
        "r",
        "isRewarded",
        "setRewarded",
        "z",
        "getPrivacyInformationIconImageUrl",
        "setPrivacyInformationIconImageUrl",
        "privacyInformationIconImageUrl",
        "<init>",
        "()V",
        "Companion",
        "VastVideoConfigTypeAdapter",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/mopub/mobileads/VastVideoConfig$Companion;


# instance fields
.field private A:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "privacy_icon_click_url"
    .end annotation
.end field

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "impression_trackers"
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "pause_trackers"
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "resume_trackers"
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "complete_trackers"
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "close_trackers"
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "skip_trackers"
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "click_trackers"
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "error_trackers"
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "fractional_trackers"
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "absolute_trackers"
    .end annotation
.end field

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "viewability-verification-resources"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "clickthrough_url"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "network_media_file_url"
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "disk_media_file_url"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "skip_offset"
    .end annotation
.end field

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "companion_ads"
    .end annotation
.end field

.field private q:Lcom/mopub/mobileads/VastIconConfig;
    .annotation runtime Le/m/e/d0/b;
        value = "icon_config"
    .end annotation
.end field

.field private r:Z
    .annotation runtime Le/m/e/d0/b;
        value = "is_rewarded"
    .end annotation
.end field

.field private s:I
    .annotation runtime Le/m/e/d0/b;
        value = "countdown_timer_duration"
    .end annotation
.end field

.field private t:Z
    .annotation runtime Le/m/e/d0/b;
        value = "enable_click_exp"
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "custom_cta_text"
    .end annotation
.end field

.field private v:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "custom_skip_text"
    .end annotation
.end field

.field private w:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "custom_close_icon_url"
    .end annotation
.end field

.field private x:Lcom/mopub/mobileads/VideoViewabilityTracker;
    .annotation runtime Le/m/e/d0/b;
        value = "video_viewability_tracker"
    .end annotation
.end field

.field private y:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "dsp_creative_id"
    .end annotation
.end field

.field private z:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "privacy_icon_image_url"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mopub/mobileads/VastVideoConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig$Companion;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/mopub/mobileads/VastVideoConfig;->Companion:Lcom/mopub/mobileads/VastVideoConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->c:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->d:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->e:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->f:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->g:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->h:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->i:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->j:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->k:Ljava/util/Set;

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->p:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/String;

    .line 4
    new-instance v2, Lcom/mopub/mobileads/VastTracker$Builder;

    invoke-direct {v2, v1}, Lcom/mopub/mobileads/VastTracker$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastTracker$Builder;->build()Lcom/mopub/mobileads/VastTracker;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public addAbsoluteTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "absoluteTrackers"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->j:Ljava/util/List;

    invoke-static {p1}, Le/q/f/a/d/a;->U2(Ljava/util/List;)V

    return-void
.end method

.method public addClickTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clickTrackers"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addCloseTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "closeTrackers"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addCompleteTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "completeTrackers"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addErrorTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "errorTrackers"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addFractionalTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fractionalTrackers"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->i:Ljava/util/List;

    invoke-static {p1}, Le/q/f/a/d/a;->U2(Ljava/util/List;)V

    return-void
.end method

.method public addImpressionTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "impressionTrackers"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addPauseTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pauseTrackers"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addResumeTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "resumeTrackers"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addSkipTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "skipTrackers"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addVastCompanionAdConfig(Lcom/mopub/mobileads/VastCompanionAdConfig;)V
    .locals 1

    const-string v0, "vastCompanionAdConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAdConfigs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVastCompanionAdConfigs(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "vastCompanionAdConfigs"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 2
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addVastCompanionAdConfig(Lcom/mopub/mobileads/VastCompanionAdConfig;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addVideoTrackers(Lorg/json/JSONObject;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "urls"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "events"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz v0, :cond_9

    if-nez p1, :cond_1

    goto/16 :goto_8

    .line 3
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_9

    .line 4
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    .line 5
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_4

    .line 7
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    const/4 v9, 0x4

    const-string v10, "%%VIDEO_EVENT%%"

    .line 8
    invoke-static {v8, v10, v4, v2, v9}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 10
    :cond_4
    :goto_2
    sget-object v6, Lcom/mopub/mobileads/VideoTrackingEvent;->Companion:Lcom/mopub/mobileads/VideoTrackingEvent$Companion;

    invoke-virtual {v6, v4}, Lcom/mopub/mobileads/VideoTrackingEvent$Companion;->fromString(Ljava/lang/String;)Lcom/mopub/mobileads/VideoTrackingEvent;

    move-result-object v6

    if-eqz v4, :cond_8

    if-nez v5, :cond_5

    goto/16 :goto_7

    .line 11
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xa

    packed-switch v7, :pswitch_data_0

    .line 12
    sget-object v5, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Encountered unknown video tracking event: "

    invoke-static {v7, v4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 13
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/mopub/mobileads/VastVideoConfig;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 14
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAdConfigs()Ljava/util/Set;

    move-result-object v5

    .line 15
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 16
    invoke-virtual {v6, v4}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/Collection;)V

    goto :goto_3

    .line 17
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/mopub/mobileads/VastVideoConfig;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 18
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAdConfigs()Ljava/util/Set;

    move-result-object v5

    .line 19
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 20
    invoke-virtual {v6, v4}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/Collection;)V

    goto :goto_4

    .line 21
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/mopub/mobileads/VastVideoConfig;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mopub/mobileads/VastVideoConfig;->addCompleteTrackers(Ljava/util/List;)V

    goto :goto_7

    .line 22
    :pswitch_3
    invoke-virtual {v6}, Lcom/mopub/mobileads/VideoTrackingEvent;->toFloat()F

    move-result v4

    .line 23
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 25
    check-cast v7, Ljava/lang/String;

    .line 26
    new-instance v8, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;

    invoke-direct {v8, v7, v4}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v8}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;->build()Lcom/mopub/mobileads/VastFractionalProgressTracker;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 27
    :cond_6
    invoke-virtual {p0, v6}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackers(Ljava/util/List;)V

    goto :goto_7

    .line 28
    :pswitch_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v5, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 30
    check-cast v6, Ljava/lang/String;

    .line 31
    new-instance v7, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;

    invoke-direct {v7, v6, v2}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;->build()Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 32
    :cond_7
    invoke-virtual {p0, v4}, Lcom/mopub/mobileads/VastVideoConfig;->addAbsoluteTrackers(Ljava/util/List;)V

    :cond_8
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addViewabilityVendors(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;ILjava/lang/Integer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->g:Ljava/util/List;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    :goto_1
    if-eqz p2, :cond_2

    return-void

    .line 6
    :cond_2
    new-instance p2, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {p2}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/mopub/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 9
    sget-object v2, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/mopub/common/UrlAction;

    .line 10
    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    aput-object v4, v3, v0

    .line 11
    sget-object v0, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v0, v3, v1

    const/4 v0, 0x2

    .line 12
    sget-object v1, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v1, v3, v0

    const/4 v0, 0x3

    .line 13
    sget-object v1, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v1, v3, v0

    const/4 v0, 0x4

    .line 14
    sget-object v1, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v1, v3, v0

    const/4 v0, 0x5

    .line 15
    sget-object v1, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v1, v3, v0

    .line 16
    invoke-virtual {p2, v2, v3}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 17
    new-instance v0, Lcom/mopub/mobileads/VastVideoConfig$handleClick$urlHandler$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/mopub/mobileads/VastVideoConfig$handleClick$urlHandler$1;-><init>(Lcom/mopub/mobileads/VastVideoConfig;Landroid/content/Context;Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object p2

    .line 19
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p2, p1, p3}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public getAbsoluteTrackers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCloseTrackers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCompleteTrackers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCountdownTimerDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->s:I

    return v0
.end method

.method public getCustomCloseIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomCtaText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomSkipText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskMediaFileUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getDspCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableClickExperiment()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->t:Z

    return v0
.end method

.method public getErrorTrackers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFractionalTrackers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getImpressionTrackers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getNetworkMediaFileUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getPauseTrackers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPrivacyInformationIconClickthroughUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyInformationIconImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingProgressTrackerCount()I
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResumeTrackers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSkipOffset()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipOffsetMillis(I)Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    sget-object v2, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->Companion:Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;->isAbsoluteTracker(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lcom/mopub/mobileads/VastFractionalProgressTracker;->Companion:Lcom/mopub/mobileads/VastFractionalProgressTracker$Companion;

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Companion;->isPercentageTracker(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2, v0, p1}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Companion;->parsePercentageOffset(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Invalid VAST skipoffset format: "

    invoke-static {v5, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public getSkipTrackers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getUntriggeredTrackersBefore(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    if-lez p2, :cond_5

    if-gez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;

    const-string v2, ""

    invoke-direct {v1, v2, p1}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;->build()Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    move-result-object v1

    .line 4
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->j:Ljava/util/List;

    .line 5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    .line 6
    invoke-virtual {v4, v1}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->compareTo(Lcom/mopub/mobileads/VastAbsoluteProgressTracker;)I

    move-result v5

    if-gtz v5, :cond_1

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastTracker;->isTracked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 7
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    new-instance v1, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-direct {v1, v2, p1}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;-><init>(Ljava/lang/String;F)V

    .line 9
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;->build()Lcom/mopub/mobileads/VastFractionalProgressTracker;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoConfig;->i:Ljava/util/List;

    .line 11
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    .line 12
    invoke-virtual {v1, p1}, Lcom/mopub/mobileads/VastFractionalProgressTracker;->compareTo(Lcom/mopub/mobileads/VastFractionalProgressTracker;)I

    move-result v2

    if-gtz v2, :cond_3

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastTracker;->isTracked()Z

    move-result v2

    if-nez v2, :cond_3

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0

    .line 14
    :cond_5
    :goto_2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1
.end method

.method public getVastCompanionAdConfigs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->p:Ljava/util/Set;

    return-object v0
.end method

.method public getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->q:Lcom/mopub/mobileads/VastIconConfig;

    return-object v0
.end method

.method public getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->x:Lcom/mopub/mobileads/VideoViewabilityTracker;

    return-object v0
.end method

.method public getViewabilityVendors()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->k:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public handleClickForResult(Landroid/app/Activity;II)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/mopub/mobileads/VastVideoConfig;->b(Landroid/content/Context;ILjava/lang/Integer;)V

    return-void
.end method

.method public handleClickWithoutResult(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->b(Landroid/content/Context;ILjava/lang/Integer;)V

    return-void
.end method

.method public handleClose(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->e:Ljava/util/List;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handleComplete(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->d:Ljava/util/List;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->h:Ljava/util/List;

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, p2, p3, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handleImpression(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->a:Ljava/util/List;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handlePause(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->b:Ljava/util/List;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handleResume(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->c:Ljava/util/List;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handleSkip(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->f:Ljava/util/List;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public hasCompanionAd()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAdConfigs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRewarded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->r:Z

    return v0
.end method

.method public setClickThroughUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->l:Ljava/lang/String;

    return-void
.end method

.method public setCountdownTimerDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->s:I

    return-void
.end method

.method public setCustomCloseIconUrl(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->w:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->w:Ljava/lang/String;

    return-void
.end method

.method public setCustomCtaText(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->u:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->u:Ljava/lang/String;

    return-void
.end method

.method public setCustomSkipText(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->v:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->v:Ljava/lang/String;

    return-void
.end method

.method public setDiskMediaFileUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->n:Ljava/lang/String;

    return-void
.end method

.method public setDspCreativeId(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->y:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->y:Ljava/lang/String;

    return-void
.end method

.method public setEnableClickExperiment(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->t:Z

    return-void
.end method

.method public setNetworkMediaFileUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->m:Ljava/lang/String;

    return-void
.end method

.method public setPrivacyInformationIconClickthroughUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->A:Ljava/lang/String;

    return-void
.end method

.method public setPrivacyInformationIconImageUrl(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->z:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->z:Ljava/lang/String;

    return-void
.end method

.method public setRewarded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->r:Z

    return-void
.end method

.method public setSkipOffset(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->o:Ljava/lang/String;

    return-void
.end method

.method public setVastIconConfig(Lcom/mopub/mobileads/VastIconConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->q:Lcom/mopub/mobileads/VastIconConfig;

    return-void
.end method

.method public setVideoViewabilityTracker(Lcom/mopub/mobileads/VideoViewabilityTracker;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->x:Lcom/mopub/mobileads/VideoViewabilityTracker;

    :goto_0
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->x:Lcom/mopub/mobileads/VideoViewabilityTracker;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Le/m/e/l;

    invoke-direct {v0}, Le/m/e/l;-><init>()V

    .line 2
    new-instance v1, Lcom/mopub/mobileads/VastVideoConfig$a;

    invoke-direct {v1}, Lcom/mopub/mobileads/VastVideoConfig$a;-><init>()V

    .line 3
    iget-object v2, v0, Le/m/e/l;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gson.toJson(this@VastVideoConfig)"

    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
