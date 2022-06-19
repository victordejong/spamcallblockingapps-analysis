.class public final Le/a/p/a/b;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/editprofile/ui/EditProfileMvp$View;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Le/a/p/a/h$b;
.implements Le/a/p/a/c$b;
.implements Le/a/p/a/a$b;
.implements Le/a/p/a/d$b;
.implements Le/a/p/a/g$b;
.implements Le/a/p/a/e$b;
.implements Le/a/p/a/f$b;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ac\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008,\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u00082\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u00082\u00020\t2\u00020\nB\u0008\u00a2\u0006\u0005\u0008\u0082\u0003\u0010*J+\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0013\u0010\u001e\u001a\u00020\u000b*\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001b\u0010#\u001a\u00020 *\u00020 2\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010\'\u001a\u00020\u000f2\u0008\u0010&\u001a\u0004\u0018\u00010%H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008)\u0010*J-\u0010/\u001a\u0004\u0018\u00010\u000e2\u0006\u0010,\u001a\u00020+2\u0008\u0010.\u001a\u0004\u0018\u00010-2\u0008\u0010&\u001a\u0004\u0018\u00010%H\u0016\u00a2\u0006\u0004\u0008/\u00100J!\u00101\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000e2\u0008\u0010&\u001a\u0004\u0018\u00010%H\u0016\u00a2\u0006\u0004\u00081\u00102J)\u00107\u001a\u00020\u000f2\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u0002032\u0008\u00106\u001a\u0004\u0018\u00010 H\u0016\u00a2\u0006\u0004\u00087\u00108J-\u0010=\u001a\u00020\u000f2\u0006\u00104\u001a\u0002032\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u000b092\u0006\u0010<\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010?\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008?\u0010*J\u000f\u0010@\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008@\u0010*J\u000f\u0010A\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008A\u0010*J\u000f\u0010B\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008B\u0010*J\u000f\u0010C\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008C\u0010*J\u000f\u0010D\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008D\u0010*J\u0017\u0010F\u001a\u00020\u000f2\u0006\u0010E\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008F\u0010GJ\u0017\u0010I\u001a\u00020\u000f2\u0006\u0010H\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008I\u0010GJ\u0017\u0010L\u001a\u00020\u000f2\u0006\u0010K\u001a\u00020JH\u0016\u00a2\u0006\u0004\u0008L\u0010MJ\u0017\u0010O\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008O\u0010GJ\u0017\u0010R\u001a\u00020\u000f2\u0006\u0010Q\u001a\u00020PH\u0016\u00a2\u0006\u0004\u0008R\u0010SJ\u000f\u0010T\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008T\u0010*J\u0017\u0010U\u001a\u00020\u000f2\u0006\u0010K\u001a\u00020JH\u0016\u00a2\u0006\u0004\u0008U\u0010MJ\u0017\u0010W\u001a\u00020\u000f2\u0006\u0010V\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008W\u0010GJ\u0017\u0010Y\u001a\u00020\u000f2\u0006\u0010X\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008Y\u0010GJ\u0017\u0010[\u001a\u00020\u000f2\u0006\u0010Z\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008[\u0010GJ\u0017\u0010]\u001a\u00020\u000f2\u0006\u0010\\\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008]\u0010GJ\u001f\u0010`\u001a\u00020\u000f2\u0006\u0010^\u001a\u00020\u00172\u0006\u0010_\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008`\u0010aJ\u000f\u0010b\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008b\u0010*J\u0017\u0010d\u001a\u00020\u000f2\u0006\u0010c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008d\u0010GJ\u0017\u0010f\u001a\u00020\u000f2\u0006\u0010e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008f\u0010GJ\u0017\u0010h\u001a\u00020\u000f2\u0006\u0010g\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008h\u0010GJ\u0017\u0010j\u001a\u00020\u000f2\u0006\u0010i\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008j\u0010GJ\u0017\u0010l\u001a\u00020\u000f2\u0006\u0010k\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008l\u0010GJ\u0017\u0010n\u001a\u00020\u000f2\u0006\u0010m\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008n\u0010GJ\u0017\u0010p\u001a\u00020\u000f2\u0006\u0010o\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008p\u0010GJ\u0017\u0010r\u001a\u00020\u000f2\u0006\u0010q\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008r\u0010GJ\u0017\u0010t\u001a\u00020\u000f2\u0006\u0010s\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008t\u0010GJ!\u0010w\u001a\u00020\u000f2\u0006\u0010u\u001a\u00020\u000b2\u0008\u0010v\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008w\u0010xJ\u000f\u0010y\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008y\u0010*J0\u0010\u007f\u001a\u00020\u000f2\u0006\u0010z\u001a\u0002032\u0006\u0010{\u001a\u0002032\u0006\u0010|\u001a\u0002032\u0006\u0010~\u001a\u00020}H\u0016\u00a2\u0006\u0005\u0008\u007f\u0010\u0080\u0001J!\u0010\u0081\u0001\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0005\u0008\u0081\u0001\u0010aJ5\u0010\u0083\u0001\u001a\u00020\u000f2\t\u0010\u0014\u001a\u0005\u0018\u00010\u0082\u00012\u0006\u0010z\u001a\u0002032\u0006\u0010{\u001a\u0002032\u0006\u0010|\u001a\u000203H\u0016\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001J\u0011\u0010\u0085\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u0085\u0001\u0010*J\u001b\u0010\u0087\u0001\u001a\u00020\u000f2\u0007\u0010c\u001a\u00030\u0086\u0001H\u0016\u00a2\u0006\u0006\u0008\u0087\u0001\u0010\u0088\u0001J\u001d\u0010\u008a\u0001\u001a\u00020\u000f2\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010}H\u0016\u00a2\u0006\u0006\u0008\u008a\u0001\u0010\u008b\u0001J\u0011\u0010\u008c\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u008c\u0001\u0010*J\u0011\u0010\u008d\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u008d\u0001\u0010*J\u0011\u0010\u008e\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u008e\u0001\u0010*J\u0011\u0010\u008f\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u008f\u0001\u0010*J\u0011\u0010\u0090\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u0090\u0001\u0010*J\u0011\u0010\u0091\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u0091\u0001\u0010*J\u001a\u0010\u0093\u0001\u001a\u00020\u000f2\u0007\u0010\u0092\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0005\u0008\u0093\u0001\u0010GJ\u001a\u0010\u0095\u0001\u001a\u00020\u000f2\u0007\u0010\u0094\u0001\u001a\u00020PH\u0016\u00a2\u0006\u0005\u0008\u0095\u0001\u0010SJ\u001b\u0010\u0096\u0001\u001a\u00020J2\u0007\u0010\u0092\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u0097\u0001J#\u0010\u0098\u0001\u001a\u00020\u000f2\u0007\u0010\u0092\u0001\u001a\u00020\u000b2\u0006\u00104\u001a\u000203H\u0016\u00a2\u0006\u0006\u0008\u0098\u0001\u0010\u0099\u0001J\u001a\u0010\u009b\u0001\u001a\u00020\u000f2\u0007\u0010\u009a\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0005\u0008\u009b\u0001\u0010GJ\u0011\u0010\u009c\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u009c\u0001\u0010*J\u0011\u0010\u009d\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u009d\u0001\u0010*J\u0011\u0010\u009e\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u009e\u0001\u0010*J\u0011\u0010\u009f\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u009f\u0001\u0010*J\u0011\u0010\u00a0\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00a0\u0001\u0010*J\u0011\u0010\u00a1\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00a1\u0001\u0010*J\u0019\u0010\u00a2\u0001\u001a\u00020\u000f2\u0006\u0010K\u001a\u00020JH\u0016\u00a2\u0006\u0005\u0008\u00a2\u0001\u0010MJ\u001a\u0010\u00a4\u0001\u001a\u00020\u000f2\u0007\u0010\u00a3\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0005\u0008\u00a4\u0001\u0010GJ\u001a\u0010\u00a6\u0001\u001a\u00020\u000f2\u0007\u0010\u00a5\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0005\u0008\u00a6\u0001\u0010GJ\u001b\u0010\u00a8\u0001\u001a\u00020\u000f2\u0007\u0010\u00a7\u0001\u001a\u00020 H\u0016\u00a2\u0006\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001J%\u0010\u00ab\u0001\u001a\u00020\u000f2\t\u0008\u0001\u0010\u00aa\u0001\u001a\u0002032\u0006\u0010Z\u001a\u00020\u000bH\u0016\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001J\u0011\u0010\u00ad\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00ad\u0001\u0010*J%\u0010\u00ae\u0001\u001a\u00020\u000f2\t\u0008\u0001\u0010\u00aa\u0001\u001a\u0002032\u0006\u0010Z\u001a\u00020\u000bH\u0016\u00a2\u0006\u0006\u0008\u00ae\u0001\u0010\u00ac\u0001J,\u0010\u00af\u0001\u001a\u00020\u000f2\u0007\u0010\u00aa\u0001\u001a\u0002032\u0006\u0010Z\u001a\u00020\u000b2\u0007\u0010\u00a3\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0006\u0008\u00af\u0001\u0010\u00b0\u0001J\u0011\u0010\u00b1\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00b1\u0001\u0010*J\u001a\u0010\u00b3\u0001\u001a\u00020\u000f2\u0007\u0010\u00b2\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0005\u0008\u00b3\u0001\u0010GJ\u0011\u0010\u00b4\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00b4\u0001\u0010*J\u001a\u0010\u00b5\u0001\u001a\u00020\u000f2\u0007\u0010\u00b2\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0005\u0008\u00b5\u0001\u0010GJ\u0011\u0010\u00b6\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00b6\u0001\u0010*J\u001a\u0010\u00b7\u0001\u001a\u00020\u000f2\u0007\u0010\u00b2\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0005\u0008\u00b7\u0001\u0010GJ\u0011\u0010\u00b8\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00b8\u0001\u0010*J\u001c\u0010\u00bb\u0001\u001a\u00020\u000f2\u0008\u0010\u00ba\u0001\u001a\u00030\u00b9\u0001H\u0016\u00a2\u0006\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001J\u001a\u0010\u00bd\u0001\u001a\u00020\u000f2\u0007\u0010\u00aa\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0005\u0008\u00bd\u0001\u0010GJ\u0011\u0010\u00be\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00be\u0001\u0010*J\u0011\u0010\u00bf\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00bf\u0001\u0010*J%\u0010\u00c3\u0001\u001a\u00020\u000f2\u0007\u0010\u00c0\u0001\u001a\u0002032\u0008\u0010\u00c2\u0001\u001a\u00030\u00c1\u0001H\u0016\u00a2\u0006\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001J\u0011\u0010\u00c5\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00c5\u0001\u0010*J\u0011\u0010\u00c6\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00c6\u0001\u0010*J\u0011\u0010\u00c7\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00c7\u0001\u0010*J\u0011\u0010\u00c8\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00c8\u0001\u0010*J\u0011\u0010\u00c9\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00c9\u0001\u0010*J\u0019\u0010\u00ca\u0001\u001a\u00020\u000f2\u0006\u0010K\u001a\u00020JH\u0016\u00a2\u0006\u0005\u0008\u00ca\u0001\u0010MJ\u0011\u0010\u00cb\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00cb\u0001\u0010*J\u0011\u0010\u00cc\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00cc\u0001\u0010*J\u0011\u0010\u00cd\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00cd\u0001\u0010*J\u0011\u0010\u00ce\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00ce\u0001\u0010*J\u0011\u0010\u00cf\u0001\u001a\u00020\u000fH\u0016\u00a2\u0006\u0005\u0008\u00cf\u0001\u0010*J\u000f\u0010\u00d0\u0001\u001a\u00020\u000f\u00a2\u0006\u0005\u0008\u00d0\u0001\u0010*R-\u0010\u00d7\u0001\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00d1\u00010\u00d1\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00d3\u0001\u0010\u00d4\u0001\u001a\u0006\u0008\u00d5\u0001\u0010\u00d6\u0001R+\u0010\u00db\u0001\u001a\u000b \u00d2\u0001*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00d8\u0001\u0010\u00d4\u0001\u001a\u0006\u0008\u00d9\u0001\u0010\u00da\u0001R-\u0010\u00e0\u0001\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00dd\u0001\u0010\u00d4\u0001\u001a\u0006\u0008\u00de\u0001\u0010\u00df\u0001R+\u0010\u00e4\u0001\u001a\u000b \u00d2\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00e1\u0001\u0010\u00d4\u0001\u001a\u0006\u0008\u00e2\u0001\u0010\u00e3\u0001R-\u0010\u00e9\u0001\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00e5\u00010\u00e5\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00e6\u0001\u0010\u00d4\u0001\u001a\u0006\u0008\u00e7\u0001\u0010\u00e8\u0001R+\u0010\u00ec\u0001\u001a\u000b \u00d2\u0001*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ea\u0001\u0010\u00d4\u0001\u001a\u0006\u0008\u00eb\u0001\u0010\u00da\u0001R\u0018\u0010m\u001a\u00020\u000b8B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00ed\u0001\u0010\u00ee\u0001R+\u0010\u00f1\u0001\u001a\u000b \u00d2\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ef\u0001\u0010\u00d4\u0001\u001a\u0006\u0008\u00f0\u0001\u0010\u00e3\u0001R\u0018\u0010e\u001a\u00020\u000b8B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00f2\u0001\u0010\u00ee\u0001R-\u0010\u00f5\u0001\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00f3\u0001\u0010\u00d4\u0001\u001a\u0006\u0008\u00f4\u0001\u0010\u00df\u0001R-\u0010\u00f7\u0001\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00bd\u0001\u0010\u00d4\u0001\u001a\u0006\u0008\u00f6\u0001\u0010\u00df\u0001R+\u0010\u00fa\u0001\u001a\u000b \u00d2\u0001*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00f8\u0001\u0010\u00d4\u0001\u001a\u0006\u0008\u00f9\u0001\u0010\u00da\u0001R-\u0010\u00ff\u0001\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00fb\u00010\u00fb\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00fc\u0001\u0010\u00d4\u0001\u001a\u0006\u0008\u00fd\u0001\u0010\u00fe\u0001R-\u0010\u0082\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00e5\u00010\u00e5\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0080\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u0081\u0002\u0010\u00e8\u0001R+\u0010\u0085\u0002\u001a\u000b \u00d2\u0001*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0083\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u0084\u0002\u0010\u00da\u0001R-\u0010\u0088\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0086\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u0087\u0002\u0010\u00df\u0001R,\u0010\u008a\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008F\u0010\u00d4\u0001\u001a\u0006\u0008\u0089\u0002\u0010\u00df\u0001R-\u0010\u008f\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u008b\u00020\u008b\u00028B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u008c\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u008d\u0002\u0010\u008e\u0002R\u0018\u0010s\u001a\u00020\u000b8B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0090\u0002\u0010\u00ee\u0001R-\u0010\u0093\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0091\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u0092\u0002\u0010\u00df\u0001R\u0018\u0010q\u001a\u00020\u000b8B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0094\u0002\u0010\u00ee\u0001R%\u0010\u0097\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0002\u0010\u0096\u0002R*\u0010\u009f\u0002\u001a\u00030\u0098\u00028\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u0099\u0002\u0010\u009a\u0002\u001a\u0006\u0008\u009b\u0002\u0010\u009c\u0002\"\u0006\u0008\u009d\u0002\u0010\u009e\u0002R+\u0010\u00a2\u0002\u001a\u000b \u00d2\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00a0\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00a1\u0002\u0010\u00e3\u0001R*\u0010\u00aa\u0002\u001a\u00030\u00a3\u00028\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00a4\u0002\u0010\u00a5\u0002\u001a\u0006\u0008\u00a6\u0002\u0010\u00a7\u0002\"\u0006\u0008\u00a8\u0002\u0010\u00a9\u0002R-\u0010\u00ad\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ab\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00ac\u0002\u0010\u00df\u0001R+\u0010\u00b0\u0002\u001a\u000b \u00d2\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ae\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00af\u0002\u0010\u00e3\u0001R-\u0010\u00b3\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00b1\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00b2\u0002\u0010\u00df\u0001R-\u0010\u00b6\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00b4\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00b5\u0002\u0010\u00df\u0001R-\u0010\u00b9\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00b7\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00b8\u0002\u0010\u00df\u0001R,\u0010\u00c1\u0002\u001a\u0005\u0018\u00010\u00ba\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00bb\u0002\u0010\u00bc\u0002\u001a\u0006\u0008\u00bd\u0002\u0010\u00be\u0002\"\u0006\u0008\u00bf\u0002\u0010\u00c0\u0002R\u0018\u0010\\\u001a\u00020\u000b8B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00c2\u0002\u0010\u00ee\u0001R+\u0010\u00c5\u0002\u001a\u000b \u00d2\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00c3\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00c4\u0002\u0010\u00e3\u0001R\u0018\u0010X\u001a\u00020\u000b8B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00c6\u0002\u0010\u00ee\u0001R1\u0010\u00cf\u0002\u001a\u00030\u00c7\u00028\u0006@\u0006X\u0087.\u00a2\u0006\u001f\n\u0006\u0008\u00c8\u0002\u0010\u00c9\u0002\u0012\u0005\u0008\u00ce\u0002\u0010*\u001a\u0006\u0008\u00ca\u0002\u0010\u00cb\u0002\"\u0006\u0008\u00cc\u0002\u0010\u00cd\u0002R\u0019\u0010\u00d2\u0002\u001a\u00020\u000e8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00d0\u0002\u0010\u00d1\u0002R\u0018\u0010g\u001a\u00020\u000b8B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00d3\u0002\u0010\u00ee\u0001R+\u0010\u00d6\u0002\u001a\u000b \u00d2\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00d4\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00d5\u0002\u0010\u00e3\u0001R*\u0010\u00d8\u0002\u001a\u000b \u00d2\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008R\u0010\u00d4\u0001\u001a\u0006\u0008\u00d7\u0002\u0010\u00e3\u0001R+\u0010\u00db\u0002\u001a\u000b \u00d2\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00d9\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00da\u0002\u0010\u00e3\u0001R-\u0010\u00e0\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00020\u00dc\u00028B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00dd\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00de\u0002\u0010\u00df\u0002R\u0018\u0010o\u001a\u00020\u000b8B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00e1\u0002\u0010\u00ee\u0001R-\u0010\u00e3\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0096\u0001\u0010\u00d4\u0001\u001a\u0006\u0008\u00e2\u0002\u0010\u00df\u0001R-\u0010\u00e6\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00e4\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00e5\u0002\u0010\u00df\u0001R-\u0010\u00e9\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00e7\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00e8\u0002\u0010\u00df\u0001R+\u0010\u00ec\u0002\u001a\u000b \u00d2\u0001*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ea\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00eb\u0002\u0010\u00da\u0001R\u0018\u0010i\u001a\u00020\u000b8B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00ed\u0002\u0010\u00ee\u0001R\'\u0010\u00f2\u0002\u001a\u0010\u0012\u0005\u0012\u00030\u00ef\u0002\u0012\u0004\u0012\u0002030\u00ee\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00f0\u0002\u0010\u00f1\u0002R-\u0010\u00f5\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00f3\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00f4\u0002\u0010\u00df\u0001R-\u0010\u00f8\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00f6\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00f7\u0002\u0010\u00df\u0001R-\u0010\u00fb\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00e5\u00010\u00e5\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00f9\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u00fa\u0002\u0010\u00e8\u0001R-\u0010\u00fd\u0002\u001a\r \u00d2\u0001*\u0005\u0018\u00010\u00dc\u00010\u00dc\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00cc\u0001\u0010\u00d4\u0001\u001a\u0006\u0008\u00fc\u0002\u0010\u00df\u0001R\u0018\u0010V\u001a\u00020\u000b8B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00fe\u0002\u0010\u00ee\u0001R+\u0010\u0081\u0003\u001a\u000b \u00d2\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ff\u0002\u0010\u00d4\u0001\u001a\u0006\u0008\u0080\u0003\u0010\u00e3\u0001\u00a8\u0006\u0083\u0003"
    }
    d2 = {
        "Le/a/p/a/b;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/truecaller/editprofile/ui/EditProfileMvp$View;",
        "Landroid/app/DatePickerDialog$OnDateSetListener;",
        "Le/a/p/a/h$b;",
        "Le/a/p/a/c$b;",
        "Le/a/p/a/a$b;",
        "Le/a/p/a/d$b;",
        "Le/a/p/a/g$b;",
        "Le/a/p/a/e$b;",
        "Le/a/p/a/f$b;",
        "",
        "text",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "Ls1/s;",
        "listener",
        "sB",
        "(Ljava/lang/String;Ls1/z/b/l;)V",
        "Lcom/google/android/material/textfield/TextInputLayout;",
        "view",
        "qB",
        "(Lcom/google/android/material/textfield/TextInputLayout;)V",
        "Ljava/util/Date;",
        "date",
        "Ljava/text/DateFormat;",
        "defaultDateFormat",
        "fB",
        "(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;",
        "Landroid/text/Editable;",
        "rB",
        "(Landroid/text/Editable;)Ljava/lang/String;",
        "Landroid/content/Intent;",
        "Landroid/content/pm/ResolveInfo;",
        "resolveInfo",
        "OA",
        "(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "requestCode",
        "resultCode",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "Pw",
        "lk",
        "Bb",
        "pz",
        "Mv",
        "ao",
        "toolbarTitle",
        "o",
        "(Ljava/lang/String;)V",
        "supportText",
        "Cr",
        "",
        "visible",
        "Ru",
        "(Z)V",
        "avatarUrl",
        "Xe",
        "Landroid/net/Uri;",
        "avatarUri",
        "u",
        "(Landroid/net/Uri;)V",
        "Gu",
        "Nn",
        "firstName",
        "Tf",
        "lastName",
        "Hf",
        "phoneNumber",
        "setPhoneNumber",
        "email",
        "Yf",
        "dateOfBirthday",
        "defaultBirthdayFormat",
        "Zs",
        "(Ljava/util/Date;Ljava/text/DateFormat;)V",
        "ca",
        "gender",
        "Kc",
        "street",
        "dv",
        "zipCode",
        "jv",
        "city",
        "ei",
        "countryName",
        "Yg",
        "company",
        "wp",
        "jobTitle",
        "vy",
        "website",
        "ah",
        "bio",
        "he",
        "tagName",
        "tagIcon",
        "A2",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Fm",
        "year",
        "month",
        "day",
        "",
        "maxDate",
        "tn",
        "(IIIJ)V",
        "qs",
        "Landroid/widget/DatePicker;",
        "onDateSet",
        "(Landroid/widget/DatePicker;III)V",
        "wd",
        "Lcom/truecaller/editprofile/ui/Gender;",
        "a7",
        "(Lcom/truecaller/editprofile/ui/Gender;)V",
        "preSelectedTagId",
        "nb",
        "(Ljava/lang/Long;)V",
        "vb",
        "Jr",
        "Pg",
        "ti",
        "Q0",
        "N0",
        "permission",
        "Gr",
        "uri",
        "qf",
        "k",
        "(Ljava/lang/String;)Z",
        "M5",
        "(Ljava/lang/String;I)V",
        "mainText",
        "f2",
        "bb",
        "ey",
        "yi",
        "ap",
        "Tt",
        "iv",
        "md",
        "secondaryPhoneNumber",
        "sc",
        "secondaryNumberHint",
        "Xj",
        "intent",
        "r9",
        "(Landroid/content/Intent;)V",
        "message",
        "Ua",
        "(ILjava/lang/String;)V",
        "Kf",
        "Wf",
        "Dn",
        "(ILjava/lang/String;Ljava/lang/String;)V",
        "Mh",
        "error",
        "es",
        "Sf",
        "ch",
        "Qj",
        "r6",
        "xf",
        "Lcom/truecaller/editprofile/ui/ErrorField;",
        "errorField",
        "js",
        "(Lcom/truecaller/editprofile/ui/ErrorField;)V",
        "m",
        "Dt",
        "Ew",
        "stringRes",
        "Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;",
        "videoCallerIdProfileAction",
        "Wq",
        "(ILcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;)V",
        "kr",
        "L6",
        "dw",
        "Ov",
        "fh",
        "Ax",
        "Sk",
        "t",
        "bg",
        "Nx",
        "onDestroyView",
        "onBackPressed",
        "Landroidx/appcompat/widget/Toolbar;",
        "kotlin.jvm.PlatformType",
        "Q",
        "Ls1/g;",
        "getToolbar",
        "()Landroidx/appcompat/widget/Toolbar;",
        "toolbar",
        "s",
        "getFirstNameTextInputLayout",
        "()Lcom/google/android/material/textfield/TextInputLayout;",
        "firstNameTextInputLayout",
        "Landroid/widget/EditText;",
        "v",
        "cB",
        "()Landroid/widget/EditText;",
        "jobTitleEditText",
        "P",
        "getSavingLoadingGroup",
        "()Landroid/view/View;",
        "savingLoadingGroup",
        "Landroid/widget/TextView;",
        "E",
        "getVideoCallerIdButton",
        "()Landroid/widget/TextView;",
        "videoCallerIdButton",
        "p",
        "getEmailTextInputLayout",
        "emailTextInputLayout",
        "VA",
        "()Ljava/lang/String;",
        "n",
        "getEditProfileContentConstraintLayout",
        "editProfileContentConstraintLayout",
        "jB",
        "j",
        "UA",
        "cityEditText",
        "getCountryEditText",
        "countryEditText",
        "h",
        "getBirthdayTextInputLayout",
        "birthdayTextInputLayout",
        "Lcom/google/android/material/appbar/CollapsingToolbarLayout;",
        "N",
        "getCollapsingToolbar",
        "()Lcom/google/android/material/appbar/CollapsingToolbarLayout;",
        "collapsingToolbar",
        "O",
        "iB",
        "saveButton",
        "B",
        "getSecondaryPhoneNumberTextInputLayout",
        "secondaryPhoneNumberTextInputLayout",
        "f",
        "RA",
        "bioEditText",
        "YA",
        "emailEditText",
        "Landroid/widget/ImageView;",
        "R",
        "PA",
        "()Landroid/widget/ImageView;",
        "avatar",
        "QA",
        "z",
        "getPhoneNumberEditText",
        "phoneNumberEditText",
        "mB",
        "V",
        "Ls1/z/b/l;",
        "saveOnClickListener",
        "Le/a/k/h;",
        "c",
        "Le/a/k/h;",
        "getVideoCallerId",
        "()Le/a/k/h;",
        "setVideoCallerId",
        "(Le/a/k/h;)V",
        "videoCallerId",
        "i",
        "getBusinessSection",
        "businessSection",
        "Le/a/p/a/l;",
        "a",
        "Le/a/p/a/l;",
        "gB",
        "()Le/a/p/a/l;",
        "setPresenter$editprofile_release",
        "(Le/a/p/a/l;)V",
        "presenter",
        "D",
        "lB",
        "tagEditText",
        "q",
        "getFacebookButton",
        "facebookButton",
        "w",
        "eB",
        "lastNameEditText",
        "K",
        "nB",
        "websiteEditText",
        "L",
        "pB",
        "zipCodeEditText",
        "Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;",
        "d",
        "Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;",
        "getLaunchContext",
        "()Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;",
        "setLaunchContext",
        "(Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;)V",
        "launchContext",
        "XA",
        "y",
        "getNestedScrollView",
        "nestedScrollView",
        "dB",
        "Le/a/u3/g;",
        "b",
        "Le/a/u3/g;",
        "getFeaturesRegistry",
        "()Le/a/u3/g;",
        "setFeaturesRegistry",
        "(Le/a/u3/g;)V",
        "getFeaturesRegistry$annotations",
        "featuresRegistry",
        "e",
        "Landroid/view/View;",
        "birthdayPickerDialogTitleView",
        "oB",
        "S",
        "getEditAvatar",
        "editAvatar",
        "getGoogleButton",
        "googleButton",
        "J",
        "getVideoCallerIdGroupView",
        "videoCallerIdGroupView",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        "M",
        "getAppBarLayout",
        "()Lcom/google/android/material/appbar/AppBarLayout;",
        "appBarLayout",
        "bB",
        "WA",
        "companyEditText",
        "r",
        "aB",
        "firstNameEditText",
        "A",
        "getSecondaryPhoneNumberEditText",
        "secondaryPhoneNumberEditText",
        "x",
        "getLastNameTextInputLayout",
        "lastNameTextInputLayout",
        "TA",
        "",
        "Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;",
        "U",
        "Ljava/util/Map;",
        "formElementToViewIdMap",
        "C",
        "kB",
        "streetEditText",
        "g",
        "SA",
        "birthdayEditText",
        "l",
        "getContactSupport",
        "contactSupport",
        "getGenderEditText",
        "genderEditText",
        "ZA",
        "T",
        "getGeneralLoading",
        "generalLoading",
        "<init>",
        "editprofile_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic W:I


# instance fields
.field public final A:Ls1/g;

.field public final B:Ls1/g;

.field public final C:Ls1/g;

.field public final D:Ls1/g;

.field public final E:Ls1/g;

.field public final J:Ls1/g;

.field public final K:Ls1/g;

.field public final L:Ls1/g;

.field public final M:Ls1/g;

.field public final N:Ls1/g;

.field public final O:Ls1/g;

.field public final P:Ls1/g;

.field public final Q:Ls1/g;

.field public final R:Ls1/g;

.field public final S:Ls1/g;

.field public final T:Ls1/g;

.field public final U:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final V:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Landroid/view/View;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public a:Le/a/p/a/l;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/u3/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/k/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;

.field public e:Landroid/view/View;

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Ls1/g;

.field public final i:Ls1/g;

.field public final j:Ls1/g;

.field public final k:Ls1/g;

.field public final l:Ls1/g;

.field public final m:Ls1/g;

.field public final n:Ls1/g;

.field public final o:Ls1/g;

.field public final p:Ls1/g;

.field public final q:Ls1/g;

.field public final r:Ls1/g;

.field public final s:Ls1/g;

.field public final t:Ls1/g;

.field public final u:Ls1/g;

.field public final v:Ls1/g;

.field public final w:Ls1/g;

.field public final x:Ls1/g;

.field public final y:Ls1/g;

.field public final z:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    sget v0, Lcom/truecaller/editprofile/R$id;->bioEditText:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/p/a/b;->f:Ls1/g;

    .line 3
    sget v0, Lcom/truecaller/editprofile/R$id;->birthdayEditText:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/p/a/b;->g:Ls1/g;

    .line 4
    sget v0, Lcom/truecaller/editprofile/R$id;->birthdayTextInputLayout:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/p/a/b;->h:Ls1/g;

    .line 5
    sget v1, Lcom/truecaller/editprofile/R$id;->businessSection:I

    invoke-static {p0, v1}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/p/a/b;->i:Ls1/g;

    .line 6
    sget v1, Lcom/truecaller/editprofile/R$id;->cityEditText:I

    invoke-static {p0, v1}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/p/a/b;->j:Ls1/g;

    .line 7
    sget v1, Lcom/truecaller/editprofile/R$id;->companyEditText:I

    invoke-static {p0, v1}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/p/a/b;->k:Ls1/g;

    .line 8
    sget v1, Lcom/truecaller/editprofile/R$id;->contactSupport:I

    invoke-static {p0, v1}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/p/a/b;->l:Ls1/g;

    .line 9
    sget v1, Lcom/truecaller/editprofile/R$id;->countryEditText:I

    invoke-static {p0, v1}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/p/a/b;->m:Ls1/g;

    .line 10
    sget v1, Lcom/truecaller/editprofile/R$id;->editProfileContentConstraintLayout:I

    invoke-static {p0, v1}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/p/a/b;->n:Ls1/g;

    .line 11
    sget v1, Lcom/truecaller/editprofile/R$id;->emailEditText:I

    invoke-static {p0, v1}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/p/a/b;->o:Ls1/g;

    .line 12
    sget v1, Lcom/truecaller/editprofile/R$id;->emailTextInputLayout:I

    invoke-static {p0, v1}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v2

    iput-object v2, p0, Le/a/p/a/b;->p:Ls1/g;

    .line 13
    sget v2, Lcom/truecaller/editprofile/R$id;->facebookButton:I

    invoke-static {p0, v2}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v2

    iput-object v2, p0, Le/a/p/a/b;->q:Ls1/g;

    .line 14
    sget v2, Lcom/truecaller/editprofile/R$id;->firstNameEditText:I

    invoke-static {p0, v2}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v2

    iput-object v2, p0, Le/a/p/a/b;->r:Ls1/g;

    .line 15
    sget v2, Lcom/truecaller/editprofile/R$id;->firstNameTextInputLayout:I

    invoke-static {p0, v2}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v3

    iput-object v3, p0, Le/a/p/a/b;->s:Ls1/g;

    .line 16
    sget v3, Lcom/truecaller/editprofile/R$id;->genderEditText:I

    invoke-static {p0, v3}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v3

    iput-object v3, p0, Le/a/p/a/b;->t:Ls1/g;

    .line 17
    sget v3, Lcom/truecaller/editprofile/R$id;->googleButton:I

    invoke-static {p0, v3}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v3

    iput-object v3, p0, Le/a/p/a/b;->u:Ls1/g;

    .line 18
    sget v3, Lcom/truecaller/editprofile/R$id;->jobTitleEditText:I

    invoke-static {p0, v3}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v3

    iput-object v3, p0, Le/a/p/a/b;->v:Ls1/g;

    .line 19
    sget v3, Lcom/truecaller/editprofile/R$id;->lastNameEditText:I

    invoke-static {p0, v3}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v3

    iput-object v3, p0, Le/a/p/a/b;->w:Ls1/g;

    .line 20
    sget v3, Lcom/truecaller/editprofile/R$id;->lastNameTextInputLayout:I

    invoke-static {p0, v3}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v4

    iput-object v4, p0, Le/a/p/a/b;->x:Ls1/g;

    .line 21
    sget v4, Lcom/truecaller/editprofile/R$id;->nestedScrollView:I

    invoke-static {p0, v4}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v4

    iput-object v4, p0, Le/a/p/a/b;->y:Ls1/g;

    .line 22
    sget v4, Lcom/truecaller/editprofile/R$id;->phoneNumberEditText:I

    invoke-static {p0, v4}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v4

    iput-object v4, p0, Le/a/p/a/b;->z:Ls1/g;

    .line 23
    sget v4, Lcom/truecaller/editprofile/R$id;->secondaryPhoneNumberEditText:I

    invoke-static {p0, v4}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v4

    iput-object v4, p0, Le/a/p/a/b;->A:Ls1/g;

    .line 24
    sget v4, Lcom/truecaller/editprofile/R$id;->secondaryPhoneNumberTextInputLayout:I

    invoke-static {p0, v4}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v5

    iput-object v5, p0, Le/a/p/a/b;->B:Ls1/g;

    .line 25
    sget v5, Lcom/truecaller/editprofile/R$id;->streetEditText:I

    invoke-static {p0, v5}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v5

    iput-object v5, p0, Le/a/p/a/b;->C:Ls1/g;

    .line 26
    sget v5, Lcom/truecaller/editprofile/R$id;->tagEditText:I

    invoke-static {p0, v5}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v5

    iput-object v5, p0, Le/a/p/a/b;->D:Ls1/g;

    .line 27
    sget v5, Lcom/truecaller/editprofile/R$id;->videoCallerIdButton:I

    invoke-static {p0, v5}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v5

    iput-object v5, p0, Le/a/p/a/b;->E:Ls1/g;

    .line 28
    sget v5, Lcom/truecaller/editprofile/R$id;->videoCallerIdGroupView:I

    invoke-static {p0, v5}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v5

    iput-object v5, p0, Le/a/p/a/b;->J:Ls1/g;

    .line 29
    sget v5, Lcom/truecaller/editprofile/R$id;->websiteEditText:I

    invoke-static {p0, v5}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v5

    iput-object v5, p0, Le/a/p/a/b;->K:Ls1/g;

    .line 30
    sget v5, Lcom/truecaller/editprofile/R$id;->zipCodeEditText:I

    invoke-static {p0, v5}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v5

    iput-object v5, p0, Le/a/p/a/b;->L:Ls1/g;

    .line 31
    sget v5, Lcom/truecaller/editprofile/R$id;->appBarLayout:I

    invoke-static {p0, v5}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v5

    iput-object v5, p0, Le/a/p/a/b;->M:Ls1/g;

    .line 32
    sget v5, Lcom/truecaller/editprofile/R$id;->collapsingToolbar:I

    invoke-static {p0, v5}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v5

    iput-object v5, p0, Le/a/p/a/b;->N:Ls1/g;

    .line 33
    sget v5, Lcom/truecaller/editprofile/R$id;->saveButton:I

    invoke-static {p0, v5}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v5

    iput-object v5, p0, Le/a/p/a/b;->O:Ls1/g;

    .line 34
    sget v5, Lcom/truecaller/editprofile/R$id;->savingLoadingGroup:I

    invoke-static {p0, v5}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v5

    iput-object v5, p0, Le/a/p/a/b;->P:Ls1/g;

    .line 35
    sget v5, Lcom/truecaller/editprofile/R$id;->toolbar:I

    invoke-static {p0, v5}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v5

    iput-object v5, p0, Le/a/p/a/b;->Q:Ls1/g;

    .line 36
    sget v5, Lcom/truecaller/editprofile/R$id;->avatar:I

    invoke-static {p0, v5}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v5

    iput-object v5, p0, Le/a/p/a/b;->R:Ls1/g;

    .line 37
    sget v5, Lcom/truecaller/editprofile/R$id;->editAvatar:I

    invoke-static {p0, v5}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v5

    iput-object v5, p0, Le/a/p/a/b;->S:Ls1/g;

    .line 38
    sget v5, Lcom/truecaller/editprofile/R$id;->generalLoading:I

    invoke-static {p0, v5}, Le/a/p5/s0/f;->t(Landroidx/fragment/app/Fragment;I)Ls1/g;

    move-result-object v5

    iput-object v5, p0, Le/a/p/a/b;->T:Ls1/g;

    const/16 v5, 0x13

    new-array v5, v5, [Ls1/k;

    .line 39
    sget-object v6, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->FIRST_NAME:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 40
    new-instance v7, Ls1/k;

    invoke-direct {v7, v6, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v7, v5, v2

    .line 41
    sget-object v6, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->LAST_NAME:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 42
    new-instance v7, Ls1/k;

    invoke-direct {v7, v6, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v7, v5, v3

    .line 43
    sget-object v6, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->PHONE_NUMBER:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    sget v7, Lcom/truecaller/editprofile/R$id;->phoneNumberTextInputLayout:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 44
    new-instance v8, Ls1/k;

    invoke-direct {v8, v6, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x2

    aput-object v8, v5, v6

    .line 45
    sget-object v6, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->SECONDARY_PHONE_NUMBER:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 46
    new-instance v7, Ls1/k;

    invoke-direct {v7, v6, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x3

    aput-object v7, v5, v4

    .line 47
    sget-object v4, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->EMAIL:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 48
    new-instance v6, Ls1/k;

    invoke-direct {v6, v4, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x4

    aput-object v6, v5, v1

    .line 49
    sget-object v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->BIRTH_DAY:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 50
    new-instance v4, Ls1/k;

    invoke-direct {v4, v1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x5

    aput-object v4, v5, v0

    .line 51
    sget-object v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->GENDER:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    sget v1, Lcom/truecaller/editprofile/R$id;->genderTextInputLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 52
    new-instance v4, Ls1/k;

    invoke-direct {v4, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x6

    aput-object v4, v5, v0

    .line 53
    sget-object v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->ADDRESS_SECTION_TITLE:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    sget v1, Lcom/truecaller/editprofile/R$id;->addressSectionTitle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 54
    new-instance v4, Ls1/k;

    invoke-direct {v4, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x7

    aput-object v4, v5, v0

    .line 55
    sget-object v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->ADDRESS_STREET:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    sget v1, Lcom/truecaller/editprofile/R$id;->streetTextInputLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 56
    new-instance v4, Ls1/k;

    invoke-direct {v4, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x8

    aput-object v4, v5, v0

    .line 57
    sget-object v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->ADDRESS_ZIP_CODE:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    sget v1, Lcom/truecaller/editprofile/R$id;->zipCodeTextInputLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 58
    new-instance v4, Ls1/k;

    invoke-direct {v4, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x9

    aput-object v4, v5, v0

    .line 59
    sget-object v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->ADDRESS_CITY:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    sget v1, Lcom/truecaller/editprofile/R$id;->cityTextInputLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 60
    new-instance v4, Ls1/k;

    invoke-direct {v4, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xa

    aput-object v4, v5, v0

    .line 61
    sget-object v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->ADDRESS_COUNTRY:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    sget v1, Lcom/truecaller/editprofile/R$id;->countryTextInputLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 62
    new-instance v4, Ls1/k;

    invoke-direct {v4, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xb

    aput-object v4, v5, v0

    .line 63
    sget-object v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->ABOUT_SECTION_TITLE:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    sget v1, Lcom/truecaller/editprofile/R$id;->aboutSectionTitle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 64
    new-instance v4, Ls1/k;

    invoke-direct {v4, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xc

    aput-object v4, v5, v0

    .line 65
    sget-object v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->ABOUT_COMPANY:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    sget v1, Lcom/truecaller/editprofile/R$id;->companyTextInputLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 66
    new-instance v4, Ls1/k;

    invoke-direct {v4, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xd

    aput-object v4, v5, v0

    .line 67
    sget-object v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->ABOUT_JOB_TITLE:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    sget v1, Lcom/truecaller/editprofile/R$id;->jobTitleTextInputLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 68
    new-instance v4, Ls1/k;

    invoke-direct {v4, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xe

    aput-object v4, v5, v0

    .line 69
    sget-object v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->ABOUT_WEBSITE:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    sget v1, Lcom/truecaller/editprofile/R$id;->websiteTextInputLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 70
    new-instance v4, Ls1/k;

    invoke-direct {v4, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xf

    aput-object v4, v5, v0

    .line 71
    sget-object v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->ABOUT_ME:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    sget v1, Lcom/truecaller/editprofile/R$id;->bioTextInputLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 72
    new-instance v4, Ls1/k;

    invoke-direct {v4, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x10

    aput-object v4, v5, v0

    .line 73
    sget-object v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->ABOUT_TAG:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    sget v1, Lcom/truecaller/editprofile/R$id;->tagTextInputLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 74
    new-instance v4, Ls1/k;

    invoke-direct {v4, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x11

    aput-object v4, v5, v0

    .line 75
    sget-object v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;->SECTION_BUSINESS:Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;

    sget v1, Lcom/truecaller/editprofile/R$id;->businessSection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 76
    new-instance v4, Ls1/k;

    invoke-direct {v4, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x12

    aput-object v4, v5, v0

    .line 77
    invoke-static {v5}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Le/a/p/a/b;->U:Ljava/util/Map;

    .line 78
    new-instance v0, Le/a/p/a/b$b;

    invoke-direct {v0, v3, p0}, Le/a/p/a/b$b;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Le/a/p/a/b;->V:Ls1/z/b/l;

    .line 79
    new-instance v0, Le/a/p/a/b$b;

    invoke-direct {v0, v2, p0}, Le/a/p/a/b$b;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public A2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "tagName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->lB()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "requireContext().resources"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {p1, v2}, Le/a/p5/s0/g;->y(Landroid/content/res/Resources;F)F

    move-result p1

    float-to-int v7, p1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v0}, Le/a/p5/s0/g;->y(Landroid/content/res/Resources;F)F

    move-result p1

    float-to-int v4, p1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    .line 6
    check-cast p1, Le/a/z3/d;

    .line 7
    new-instance p2, Le/a/p/a/b$f;

    move-object v2, p2

    move-object v3, p0

    move v5, v7

    move v6, v7

    invoke-direct/range {v2 .. v7}, Le/a/p/a/b$f;-><init>(Le/a/p/a/b;IIII)V

    invoke-virtual {p1, p2}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    :cond_0
    return-void
.end method

.method public Ax(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->u:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "googleButton"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public Bb()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->T:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "generalLoading"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void
.end method

.method public Cr(Ljava/lang/String;)V
    .locals 2

    const-string v0, "supportText"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->l:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "contactSupport"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Dn(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "phoneNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondaryPhoneNumber"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "context ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    invoke-static {p2}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-static {p3}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(messag\u2026at(secondaryPhoneNumber))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mainText"

    .line 3
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p2, Le/a/p/a/h;

    invoke-direct {p2}, Le/a/p/a/h;-><init>()V

    .line 5
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "main_text"

    .line 6
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Dt()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "activity ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->d:Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$b;

    const/4 v1, 0x1

    const-string v2, "context"

    .line 3
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    const-string v3, "arg_from_wizard"

    .line 5
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "arg_migrating"

    .line 6
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public Ew()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "activity ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity$a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public Fm()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->lB()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "tagEditText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Le/a/p/a/b;->lB()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public Gr(Ljava/lang/String;)V
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Le/a/n/g0;->v0(Ljava/lang/String;Z)V

    return-void
.end method

.method public Gu()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "context ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/editprofile/R$dimen;->add_photo_icon_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Le/a/p/a/b;->PA()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 5
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 6
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 7
    sget v1, Lcom/truecaller/editprofile/R$drawable;->ic_tcx_add_photo_24dp:I

    .line 8
    sget-object v3, Le/a/b0/q/o;->a:Ln3/k/g/a;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 10
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v3, Lcom/truecaller/editprofile/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {v0, v3}, Le/a/p5/s0/g;->k0(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 12
    sget v1, Lcom/truecaller/editprofile/R$drawable;->background_tcx_oval_add_photo:I

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 14
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    invoke-virtual {p0}, Le/a/p/a/b;->PA()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Le/a/p/a/b$e;

    invoke-direct {v1, p0}, Le/a/p/a/b$e;-><init>(Le/a/p/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public Hf(Ljava/lang/String;)V
    .locals 1

    const-string v0, "lastName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->eB()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Jr()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v0, :cond_3

    check-cast v0, Le/a/p/a/m;

    .line 2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_2

    .line 3
    iget-object v2, v0, Le/a/p/a/m;->K:Le/a/p5/a0;

    const-string v3, "android.permission.CAMERA"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Q0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1, v3}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->k(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 5
    iget-object v0, v0, Le/a/p/a/m;->w:Le/a/p5/c0;

    sget v2, Lcom/truecaller/editprofile/R$string;->PermissionDialog_cameraPermissionDenied:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resourceProvider.getStri\u2026g_cameraPermissionDenied)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->f2(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v1, v3, v4}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->M5(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "presenter"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public Kc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "gender"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Kf()V
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/p/a/b;->ZA()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Le/a/p/a/b;->dB()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Le/a/p/a/b;->XA()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Le/a/p/a/b;->jB()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Le/a/p/a/b;->oB()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {p0}, Le/a/p/a/b;->TA()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {p0}, Le/a/p/a/b;->VA()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {p0}, Le/a/p/a/b;->bB()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual {p0}, Le/a/p/a/b;->mB()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {p0}, Le/a/p/a/b;->QA()Ljava/lang/String;

    move-result-object v11

    .line 12
    move-object v1, v0

    check-cast v1, Le/a/p/a/m;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "firstName"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastName"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streetAddress"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipCode"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "city"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "company"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jobTitle"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "website"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bio"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {v1 .. v11}, Le/a/p/a/m;->bk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 15
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public L6()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "activity ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/a/p/a/b;->c:Le/a/k/h;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->ON_BOARDING:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    sget-object v3, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->PROFILE:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    invoke-interface {v1, v0, v2, v3}, Le/a/k/h;->H(Landroid/content/Context;Lcom/truecaller/videocallerid/ui/preview/PreviewModes;Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;)V

    return-void

    :cond_0
    const-string v0, "videoCallerId"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    return-void
.end method

.method public M5(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "permission"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public Mh()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v0, :cond_1

    check-cast v0, Le/a/p/a/m;

    .line 2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Bb()V

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/a/p/a/m;->p:Z

    .line 4
    iget-object v1, v0, Le/a/p/a/m;->C:Le/a/p/c;

    new-instance v2, Le/a/p/a/o;

    invoke-direct {v2, v0}, Le/a/p/a/o;-><init>(Le/a/p/a/m;)V

    invoke-interface {v1, v2}, Le/a/p/c;->f(Ls1/z/b/l;)Le/a/r2/a;

    move-result-object v1

    iput-object v1, v0, Le/a/p/a/m;->e:Le/a/r2/a;

    return-void

    :cond_1
    const-string v0, "presenter"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public Mv()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->iB()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "saveButton"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/a/p/a/b;->P:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public N0()V
    .locals 2

    .line 1
    invoke-static {}, Le/a/b0/q/s;->c()Landroid/content/Intent;

    move-result-object v0

    sget v1, Lcom/truecaller/editprofile/R$string;->StrAppMultiple:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x5

    .line 2
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public Nn(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->S:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "editAvatar"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public Nx()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Le/a/p/a/m;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v5, Le/a/p/a/q;

    invoke-direct {v5, v2, v1}, Le/a/p/a/q;-><init>(Le/a/p/a/m;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final OA(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1
.end method

.method public Ov()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/social_login/facebook/FacebookLoginActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final PA()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Le/a/p/a/b;->R:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public Pg()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v0, :cond_3

    check-cast v0, Le/a/p/a/m;

    .line 2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_2

    .line 3
    iget-object v2, v0, Le/a/p/a/m;->K:Le/a/p5/a0;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->N0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1, v3}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v0, v0, Le/a/p/a/m;->w:Le/a/p5/c0;

    sget v2, Lcom/truecaller/editprofile/R$string;->PermissionDialog_readStoragePermissionDenied:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resourceProvider.getStri\u2026dStoragePermissionDenied)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->f2(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 6
    invoke-interface {v1, v3, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->M5(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "presenter"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public Pw()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/p/a/b;->n:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public Q0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "context ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Le/a/b0/q/s;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public final QA()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->RA()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "bioEditText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Le/a/p/a/b;->rB(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public Qj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->x:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "lastNameTextInputLayout"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le/a/p/a/b;->qB(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method

.method public final RA()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Le/a/p/a/b;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public Ru(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->i:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "businessSection"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public final SA()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Le/a/p/a/b;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public Sf()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->s:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "firstNameTextInputLayout"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le/a/p/a/b;->qB(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method

.method public Sk()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "activity ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    :cond_0
    return-void
.end method

.method public final TA()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->UA()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "cityEditText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Le/a/p/a/b;->rB(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public Tf(Ljava/lang/String;)V
    .locals 1

    const-string v0, "firstName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->aB()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Tt()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->t()V

    return-void
.end method

.method public final UA()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Le/a/p/a/b;->j:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public Ua(ILjava/lang/String;)V
    .locals 2

    const-string v0, "phoneNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p2}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(message, GUIUt\u2026.bidiFormat(phoneNumber))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mainText"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Le/a/p/a/f;

    invoke-direct {p2}, Le/a/p/a/f;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_text"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final VA()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->WA()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "companyEditText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Le/a/p/a/b;->rB(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final WA()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Le/a/p/a/b;->k:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public Wf(ILjava/lang/String;)V
    .locals 3

    const-string v0, "phoneNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "context ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    invoke-static {p2}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(messag\u2026.bidiFormat(phoneNumber))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mainText"

    .line 3
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p2, Le/a/p/a/h;

    invoke-direct {p2}, Le/a/p/a/h;-><init>()V

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "main_text"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Wq(ILcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;)V
    .locals 4

    const-string v0, "videoCallerIdProfileAction"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->E:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    sget v2, Lcom/truecaller/editprofile/R$string;->video_caller_id:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/p/a/b;->J:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string p2, "videoCallerIdGroupView"

    .line 5
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void
.end method

.method public final XA()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->YA()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "emailEditText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Le/a/p/a/b;->rB(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public Xe(Ljava/lang/String;)V
    .locals 1

    const-string v0, "avatarUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "Uri.parse(avatarUrl)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/p/a/b;->u(Landroid/net/Uri;)V

    return-void
.end method

.method public Xj(Ljava/lang/String;)V
    .locals 2

    const-string v0, "secondaryNumberHint"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->B:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "secondaryPhoneNumberTextInputLayout"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final YA()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Le/a/p/a/b;->o:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public Yf(Ljava/lang/String;)V
    .locals 1

    const-string v0, "email"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->YA()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Yg(Ljava/lang/String;)V
    .locals 1

    const-string v0, "countryName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->m:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ZA()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->aB()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "firstNameEditText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Le/a/p/a/b;->rB(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public Zs(Ljava/util/Date;Ljava/text/DateFormat;)V
    .locals 1

    const-string v0, "dateOfBirthday"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultBirthdayFormat"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->SA()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Le/a/p/a/b;->fB(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a7(Lcom/truecaller/editprofile/ui/Gender;)V
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "gender"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 1
    iget-object v3, v2, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v3, :cond_1

    check-cast v3, Le/a/p/a/m;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v0, v3, Le/a/p/a/m;->h:Lcom/truecaller/editprofile/ui/Gender;

    .line 4
    iget-object v1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_0

    invoke-virtual {v3, v0}, Le/a/p/a/m;->Nj(Lcom/truecaller/editprofile/ui/Gender;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Kc(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {v3}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x17ff

    invoke-static/range {v5 .. v19}, Le/a/p/a/m$a;->a(Le/a/p/a/m$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Le/a/p/a/m$a;

    move-result-object v0

    invoke-virtual {v3, v0}, Le/a/p/a/m;->Uj(Le/a/p/a/m$a;)V

    return-void

    :cond_1
    const-string v0, "presenter"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final aB()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Le/a/p/a/b;->r:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public ah(Ljava/lang/String;)V
    .locals 1

    const-string v0, "website"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->nB()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public ao()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/p/a/b;->P:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 4
    :cond_0
    sget v0, Lcom/truecaller/editprofile/R$string;->ProfileEditMenuSave:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.ProfileEditMenuSave)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/p/a/b;->V:Ls1/z/b/l;

    invoke-virtual {p0, v0, v1}, Le/a/p/a/b;->sB(Ljava/lang/String;Ls1/z/b/l;)V

    :cond_1
    return-void
.end method

.method public ap()V
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/p/a/b;->ZA()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Le/a/p/a/b;->dB()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Le/a/p/a/b;->XA()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Le/a/p/a/b;->jB()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Le/a/p/a/b;->oB()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {p0}, Le/a/p/a/b;->TA()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {p0}, Le/a/p/a/b;->VA()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {p0}, Le/a/p/a/b;->bB()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual {p0}, Le/a/p/a/b;->mB()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {p0}, Le/a/p/a/b;->QA()Ljava/lang/String;

    move-result-object v11

    .line 12
    move-object v1, v0

    check-cast v1, Le/a/p/a/m;

    invoke-virtual/range {v1 .. v11}, Le/a/p/a/m;->Yj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final bB()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->cB()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "jobTitleEditText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Le/a/p/a/b;->rB(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public bb()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v0, :cond_1

    check-cast v0, Le/a/p/a/m;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->ey()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bg()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v0, :cond_1

    check-cast v0, Le/a/p/a/m;

    .line 2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_0

    iget-object v0, v0, Le/a/p/a/m;->C:Le/a/p/c;

    invoke-interface {v0}, Le/a/p/c;->c()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->r9(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final cB()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Le/a/p/a/b;->v:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public ca()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->SA()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "birthdayEditText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_0
    return-void
.end method

.method public ch(Ljava/lang/String;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->x:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "lastNameTextInputLayout"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final dB()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->eB()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "lastNameEditText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Le/a/p/a/b;->rB(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public dv(Ljava/lang/String;)V
    .locals 1

    const-string v0, "street"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->kB()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public dw()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->c:Le/a/k/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/truecaller/videocallerid/ui/recording/RecordingScreenModes;->PLAYBACK:Lcom/truecaller/videocallerid/ui/recording/RecordingScreenModes;

    sget-object v3, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->PROFILE:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    invoke-interface {v0, v1, v2, v3}, Le/a/k/h;->w(Landroid/content/Context;Lcom/truecaller/videocallerid/ui/recording/RecordingScreenModes;Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;)V

    return-void

    :cond_0
    const-string v0, "videoCallerId"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final eB()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Le/a/p/a/b;->w:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public ei(Ljava/lang/String;)V
    .locals 1

    const-string v0, "city"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->UA()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public es(Ljava/lang/String;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->s:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "firstNameTextInputLayout"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public ey()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/p5/s0/g;->O0(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public f2(Ljava/lang/String;)V
    .locals 3

    const-string v0, "mainText"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Le/a/p/a/g;

    invoke-direct {v0}, Le/a/p/a/g;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "main_text"

    .line 4
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final fB(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "context ?: return \"\""

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    .line 3
    :cond_0
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "dateFormat.format(date)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public fh()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/social_login/google/GoogleLoginActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final gB()Le/a/p/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public he(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bio"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->RA()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final iB()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Le/a/p/a/b;->O:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public iv()V
    .locals 3

    .line 1
    new-instance v0, Le/a/p/a/e;

    invoke-direct {v0}, Le/a/p/a/e;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final jB()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->kB()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "streetEditText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Le/a/p/a/b;->rB(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public js(Lcom/truecaller/editprofile/ui/ErrorField;)V
    .locals 3

    const-string v0, "errorField"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/p/a/b;->YA()Landroid/widget/EditText;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Le/a/p/a/b;->eB()Landroid/widget/EditText;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Le/a/p/a/b;->aB()Landroid/widget/EditText;

    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p0}, Le/a/p/a/b;->Pw()V

    .line 6
    iget-object v0, p0, Le/a/p/a/b;->y:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "scrollToView"

    .line 7
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 8
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public jv(Ljava/lang/String;)V
    .locals 1

    const-string v0, "zipCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->pB()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "permission"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result v1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string v4, "$this$isPermissionDeniedPermanently"

    .line 3
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "permissionName"

    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v2, p1}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    sget v4, Ln3/k/a/b;->c:I

    .line 6
    invoke-virtual {v2, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    move v0, v3

    :cond_1
    return v0
.end method

.method public final kB()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Le/a/p/a/b;->C:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public kr()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->J:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "videoCallerIdGroupView"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public final lB()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Le/a/p/a/b;->D:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public lk()V
    .locals 2

    .line 1
    sget v0, Lcom/truecaller/editprofile/R$string;->ProfileEditMenuSave:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.ProfileEditMenuSave)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/p/a/b;->V:Ls1/z/b/l;

    invoke-virtual {p0, v0, v1}, Le/a/p/a/b;->sB(Ljava/lang/String;Ls1/z/b/l;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "context ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final mB()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->nB()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "websiteEditText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Le/a/p/a/b;->rB(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public md(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->B:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "secondaryPhoneNumberTextInputLayout"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public final nB()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Le/a/p/a/b;->K:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public nb(Ljava/lang/Long;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/p/a/b;->b:Le/a/u3/g;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-static {v0, p1, v2, v1}, Le/a/l4/k;->r(Landroid/content/Context;Ljava/lang/Long;ILe/a/u3/g;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string p1, "featuresRegistry"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public o(Ljava/lang/String;)V
    .locals 3

    const-string v0, "toolbarTitle"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ln3/b/a/h;

    .line 2
    iget-object v1, p0, Le/a/p/a/b;->Q:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0, v1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 4
    invoke-virtual {v0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ln3/b/a/a;->n(Z)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ln3/b/a/a;->o(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/p/a/b;->Q:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 7
    new-instance v1, Le/a/p/a/b$g;

    invoke-direct {v1, p0}, Le/a/p/a/b$g;-><init>(Le/a/p/a/b;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Ls1/z/c/a0;

    invoke-direct {v0}, Ls1/z/c/a0;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Ls1/z/c/a0;->a:I

    .line 9
    iget-object v1, p0, Le/a/p/a/b;->M:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 10
    new-instance v2, Le/a/p/a/i;

    invoke-direct {v2, p0, v0, p1}, Le/a/p/a/i;-><init>(Le/a/p/a/b;Ls1/z/c/a0;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->a(Lcom/google/android/material/appbar/AppBarLayout$c;)V

    return-void
.end method

.method public final oB()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->pB()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "zipCodeEditText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Le/a/p/a/b;->rB(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_18

    const-string v5, "context ?: return"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, -0x1

    const-string v6, "presenter"

    const/4 v7, 0x0

    if-ne v2, v5, :cond_12

    if-eqz v1, :cond_10

    const/4 v5, 0x1

    if-eq v1, v5, :cond_b

    const/4 v5, 0x4

    if-eq v1, v5, :cond_9

    const/4 v5, 0x5

    if-eq v1, v5, :cond_4

    const/4 v5, 0x6

    if-eq v1, v5, :cond_2

    const/4 v4, 0x7

    if-eq v1, v4, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v4, v0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v4, :cond_1

    check-cast v4, Le/a/p/a/m;

    .line 4
    invoke-virtual {v4}, Le/a/p/a/m;->Zj()V

    goto/16 :goto_4

    .line 5
    :cond_1
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    .line 6
    :cond_2
    invoke-static {v4}, Le/a/b0/q/s;->f(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v5, v0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v5, :cond_3

    check-cast v5, Le/a/p/a/m;

    invoke-virtual {v5, v4}, Le/a/p/a/m;->Vj(Landroid/net/Uri;)V

    goto/16 :goto_4

    :cond_3
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    :cond_4
    if-eqz v3, :cond_5

    .line 7
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v4}, Le/a/b0/q/s;->g(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "ImageUtils.getTempCaptureUri(context)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4, v8}, Le/a/p5/s0/f;->d(Landroid/net/Uri;Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    :cond_5
    move-object v4, v7

    .line 8
    :goto_0
    iget-object v5, v0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v5, :cond_8

    check-cast v5, Le/a/p/a/m;

    if-eqz v4, :cond_7

    .line 9
    iget-object v8, v5, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v8, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v8, :cond_6

    invoke-interface {v8, v4}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->qf(Landroid/net/Uri;)V

    sget-object v4, Ls1/s;->a:Ls1/s;

    goto :goto_1

    :cond_6
    move-object v4, v7

    :goto_1
    if-eqz v4, :cond_7

    goto/16 :goto_4

    :cond_7
    iget-object v4, v5, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v4, :cond_12

    iget-object v5, v5, Le/a/p/a/m;->w:Le/a/p5/c0;

    sget v8, Lcom/truecaller/editprofile/R$string;->SelectAvatarError:I

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v5, v8, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "resourceProvider.getStri\u2026string.SelectAvatarError)"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->m(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 10
    :cond_8
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    .line 11
    :cond_9
    invoke-static {v4}, Le/a/b0/q/s;->g(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v5, v0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v5, :cond_a

    check-cast v5, Le/a/p/a/m;

    .line 12
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "uri"

    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v5, v5, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v5, :cond_12

    invoke-interface {v5, v4}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->qf(Landroid/net/Uri;)V

    goto :goto_4

    .line 14
    :cond_a
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    .line 15
    :cond_b
    iget-object v4, v0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v4, :cond_f

    const-wide/high16 v8, -0x8000000000000000L

    if-eqz v3, :cond_c

    const-string v5, "tag_id"

    invoke-virtual {v3, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    goto :goto_2

    :cond_c
    move-wide v10, v8

    :goto_2
    check-cast v4, Le/a/p/a/m;

    cmp-long v5, v10, v8

    if-eqz v5, :cond_d

    .line 16
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Le/a/p/a/m;->i:Ljava/lang/Long;

    .line 17
    invoke-virtual {v4, v10, v11}, Le/a/p/a/m;->Ij(J)V

    goto :goto_3

    .line 18
    :cond_d
    iput-object v7, v4, Le/a/p/a/m;->i:Ljava/lang/Long;

    .line 19
    iget-object v5, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v5, :cond_e

    invoke-interface {v5}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Fm()V

    .line 20
    :cond_e
    :goto_3
    invoke-virtual {v4}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const/16 v26, 0xfff

    invoke-static/range {v12 .. v26}, Le/a/p/a/m$a;->a(Le/a/p/a/m$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Le/a/p/a/m$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Le/a/p/a/m;->Uj(Le/a/p/a/m$a;)V

    goto :goto_4

    .line 21
    :cond_f
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    .line 22
    :cond_10
    iget-object v4, v0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v4, :cond_11

    check-cast v4, Le/a/p/a/m;

    .line 23
    iget-object v4, v4, Le/a/p/a/m;->A:Le/a/p/e;

    invoke-interface {v4}, Le/a/p/e;->F0()V

    goto :goto_4

    .line 24
    :cond_11
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    :cond_12
    :goto_4
    const/4 v4, 0x2

    const-string v5, "result"

    if-ne v1, v4, :cond_15

    .line 25
    iget-object v1, v0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v1, :cond_14

    if-eqz v3, :cond_13

    .line 26
    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/truecaller/social_login/SocialAccountProfile;

    .line 27
    :cond_13
    check-cast v1, Le/a/p/a/m;

    const-string v3, "Facebook"

    .line 28
    invoke-virtual {v1, v2, v7, v3}, Le/a/p/a/m;->Xj(ILcom/truecaller/social_login/SocialAccountProfile;Ljava/lang/String;)V

    goto :goto_5

    .line 29
    :cond_14
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    :cond_15
    const/4 v4, 0x3

    if-ne v1, v4, :cond_18

    .line 30
    iget-object v1, v0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v1, :cond_17

    if-eqz v3, :cond_16

    .line 31
    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/truecaller/social_login/SocialAccountProfile;

    .line 32
    :cond_16
    check-cast v1, Le/a/p/a/m;

    const-string v3, "Google"

    .line 33
    invoke-virtual {v1, v2, v7, v3}, Le/a/p/a/m;->Xj(ILcom/truecaller/social_login/SocialAccountProfile;Ljava/lang/String;)V

    goto :goto_5

    .line 34
    :cond_17
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    :cond_18
    :goto_5
    return-void
.end method

.method public final onBackPressed()V
    .locals 27

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v1, :cond_5

    .line 2
    invoke-virtual/range {p0 .. p0}, Le/a/p/a/b;->ZA()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/a/p/a/b;->dB()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Le/a/p/a/b;->XA()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Le/a/p/a/b;->jB()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual/range {p0 .. p0}, Le/a/p/a/b;->oB()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual/range {p0 .. p0}, Le/a/p/a/b;->TA()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual/range {p0 .. p0}, Le/a/p/a/b;->VA()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual/range {p0 .. p0}, Le/a/p/a/b;->bB()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual/range {p0 .. p0}, Le/a/p/a/b;->mB()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual/range {p0 .. p0}, Le/a/p/a/b;->QA()Ljava/lang/String;

    move-result-object v11

    .line 12
    check-cast v1, Le/a/p/a/m;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "firstName"

    invoke-static {v2, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "lastName"

    invoke-static {v3, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "email"

    invoke-static {v4, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "streetAddress"

    invoke-static {v5, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "zipCode"

    invoke-static {v6, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "city"

    invoke-static {v7, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "company"

    invoke-static {v8, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "jobTitle"

    invoke-static {v9, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "website"

    invoke-static {v10, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "bio"

    invoke-static {v11, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-boolean v12, v1, Le/a/p/a/m;->p:Z

    if-eqz v12, :cond_0

    goto/16 :goto_2

    .line 15
    :cond_0
    new-instance v12, Le/a/p/a/m$a;

    .line 16
    invoke-virtual {v1, v2}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 17
    invoke-virtual {v1, v3}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 18
    invoke-virtual {v1, v4}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 19
    invoke-virtual {v1, v5}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 20
    invoke-virtual {v1, v6}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 21
    invoke-virtual {v1, v7}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 22
    invoke-virtual {v1, v8}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 23
    invoke-virtual {v1, v9}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 24
    invoke-virtual {v1, v10}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 25
    invoke-virtual {v1, v11}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 26
    invoke-virtual {v1}, Le/a/p/a/m;->Lj()Ljava/lang/String;

    move-result-object v24

    .line 27
    iget-object v2, v1, Le/a/p/a/m;->h:Lcom/truecaller/editprofile/ui/Gender;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v25

    .line 28
    iget-object v2, v1, Le/a/p/a/m;->i:Ljava/lang/Long;

    move-object v13, v12

    move-object/from16 v26, v2

    .line 29
    invoke-direct/range {v13 .. v26}, Le/a/p/a/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    invoke-virtual {v1}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v2

    invoke-static {v2, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-nez v2, :cond_2

    invoke-virtual {v1}, Le/a/p/a/m;->Rj()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, v1, Le/a/p/a/m;->r:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_3

    .line 31
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->yi()V

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    .line 32
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->t()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    const-string v1, "presenter"

    .line 33
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "context ?: return"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.truecaller.editprofile.EditProfileComponentProvider"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/p/k;

    invoke-interface {p1}, Le/a/p/k;->u()Le/a/p/j;

    move-result-object p1

    .line 4
    invoke-interface {p1, p0}, Le/a/p/j;->a(Le/a/p/a/b;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p3, Lcom/truecaller/editprofile/R$layout;->fragment_edit_profile:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v1, :cond_1

    check-cast v1, Le/a/p/a/m;

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 2
    invoke-virtual {v1, v2, v3, v4}, Le/a/p/a/m;->Mj(III)Ljava/util/Date;

    move-result-object v2

    .line 3
    iput-object v2, v1, Le/a/p/a/m;->j:Ljava/util/Date;

    .line 4
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v3, :cond_0

    iget-object v4, v1, Le/a/p/a/m;->q:Ljava/text/SimpleDateFormat;

    invoke-interface {v3, v2, v4}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Zs(Ljava/util/Date;Ljava/text/DateFormat;)V

    .line 5
    :cond_0
    invoke-virtual {v1}, Le/a/p/a/m;->Pj()Le/a/p/a/m$a;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v1}, Le/a/p/a/m;->Lj()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1bff

    invoke-static/range {v5 .. v19}, Le/a/p/a/m$a;->a(Le/a/p/a/m$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Le/a/p/a/m$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/p/a/m;->Uj(Le/a/p/a/m$a;)V

    return-void

    :cond_1
    const-string v1, "presenter"

    .line 6
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/p/a/m;

    invoke-virtual {v0}, Le/a/p/a/m;->c()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const-string v0, "permissions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "grantResults"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    iget-object v2, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v2, :cond_5

    check-cast v2, Le/a/p/a/m;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, v2, Le/a/p/a/m;->K:Le/a/p5/a0;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, p3, v1}, Le/a/p5/a0;->g([Ljava/lang/String;[I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->N0()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_4

    invoke-interface {p1, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Gr(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, v2, Le/a/p/a/m;->K:Le/a/p5/a0;

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, p3, v1}, Le/a/p5/a0;->g([Ljava/lang/String;[I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Q0()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_4

    invoke-interface {p1, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Gr(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string p1, "presenter"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onResume()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Le/a/p/a/m;

    .line 3
    iget-object v0, v2, Le/a/p/a/m;->C:Le/a/p/c;

    invoke-interface {v0}, Le/a/p/c;->d()V

    .line 4
    new-instance v5, Le/a/p/a/u;

    invoke-direct {v5, v2, v1}, Le/a/p/a/u;-><init>(Le/a/p/a/m;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/a/p/a/b;->d:Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;

    const/4 p2, 0x0

    const-string v0, "presenter"

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz p1, :cond_0

    check-cast p1, Le/a/p/a/m;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p1

    const-string v1, "requireActivity()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v1, :cond_2

    check-cast v1, Le/a/p/a/m;

    .line 4
    iput-object p1, v1, Le/a/p/a/m;->d:Landroid/content/Intent;

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_3
    :goto_1
    iget-object p1, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz p1, :cond_4

    check-cast p1, Le/a/p/a/m;

    invoke-virtual {p1, p0}, Le/a/p/a/m;->Y0(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Le/a/p/a/b;->S:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 8
    new-instance p2, Le/a/p/a/b$a;

    const/16 v0, 0xa

    invoke-direct {p2, v0, p0}, Le/a/p/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Le/a/p/a/b;->aB()Landroid/widget/EditText;

    move-result-object p1

    const-string p2, "firstNameEditText"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/p/a/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Le/a/p/a/b$c;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0}, Le/a/p5/s0/g;->j(Landroid/widget/TextView;Ls1/z/b/l;)V

    .line 10
    invoke-virtual {p0}, Le/a/p/a/b;->aB()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/g;->x(Landroid/widget/EditText;)V

    .line 11
    invoke-virtual {p0}, Le/a/p/a/b;->eB()Landroid/widget/EditText;

    move-result-object p1

    const-string p2, "lastNameEditText"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/p/a/b$c;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0}, Le/a/p/a/b$c;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0}, Le/a/p5/s0/g;->j(Landroid/widget/TextView;Ls1/z/b/l;)V

    .line 12
    invoke-virtual {p0}, Le/a/p/a/b;->eB()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/g;->x(Landroid/widget/EditText;)V

    .line 13
    invoke-virtual {p0}, Le/a/p/a/b;->YA()Landroid/widget/EditText;

    move-result-object p1

    const-string p2, "emailEditText"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Le/a/p/a/b$c;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, Le/a/p/a/b$c;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Le/a/p5/s0/g;->j(Landroid/widget/TextView;Ls1/z/b/l;)V

    .line 14
    invoke-virtual {p0}, Le/a/p/a/b;->kB()Landroid/widget/EditText;

    move-result-object p1

    const-string p2, "streetEditText"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Le/a/p/a/b$d;

    const/4 v3, 0x4

    invoke-direct {p2, v3, p0}, Le/a/p/a/b$d;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Le/a/p5/s0/g;->j(Landroid/widget/TextView;Ls1/z/b/l;)V

    .line 15
    invoke-virtual {p0}, Le/a/p/a/b;->pB()Landroid/widget/EditText;

    move-result-object p1

    const-string p2, "zipCodeEditText"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Le/a/p/a/b$d;

    const/4 v4, 0x5

    invoke-direct {p2, v4, p0}, Le/a/p/a/b$d;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Le/a/p5/s0/g;->j(Landroid/widget/TextView;Ls1/z/b/l;)V

    .line 16
    invoke-virtual {p0}, Le/a/p/a/b;->UA()Landroid/widget/EditText;

    move-result-object p1

    const-string p2, "cityEditText"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Le/a/p/a/b$d;

    const/4 v5, 0x6

    invoke-direct {p2, v5, p0}, Le/a/p/a/b$d;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Le/a/p5/s0/g;->j(Landroid/widget/TextView;Ls1/z/b/l;)V

    .line 17
    invoke-virtual {p0}, Le/a/p/a/b;->WA()Landroid/widget/EditText;

    move-result-object p1

    const-string p2, "companyEditText"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Le/a/p/a/b$d;

    invoke-direct {p2, v1, p0}, Le/a/p/a/b$d;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Le/a/p5/s0/g;->j(Landroid/widget/TextView;Ls1/z/b/l;)V

    .line 18
    invoke-virtual {p0}, Le/a/p/a/b;->cB()Landroid/widget/EditText;

    move-result-object p1

    const-string p2, "jobTitleEditText"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Le/a/p/a/b$d;

    invoke-direct {p2, v2, p0}, Le/a/p/a/b$d;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Le/a/p5/s0/g;->j(Landroid/widget/TextView;Ls1/z/b/l;)V

    .line 19
    invoke-virtual {p0}, Le/a/p/a/b;->nB()Landroid/widget/EditText;

    move-result-object p1

    const-string p2, "websiteEditText"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Le/a/p/a/b$d;

    invoke-direct {p2, v0, p0}, Le/a/p/a/b$d;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Le/a/p5/s0/g;->j(Landroid/widget/TextView;Ls1/z/b/l;)V

    .line 20
    invoke-virtual {p0}, Le/a/p/a/b;->RA()Landroid/widget/EditText;

    move-result-object p1

    const-string p2, "bioEditText"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Le/a/p/a/b$d;

    const/4 v6, 0x3

    invoke-direct {p2, v6, p0}, Le/a/p/a/b$d;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Le/a/p5/s0/g;->j(Landroid/widget/TextView;Ls1/z/b/l;)V

    .line 21
    iget-object p1, p0, Le/a/p/a/b;->z:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 22
    new-instance p2, Le/a/p/a/b$a;

    invoke-direct {p2, v1, p0}, Le/a/p/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p0, Le/a/p/a/b;->A:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 24
    new-instance p2, Le/a/p/a/b$a;

    invoke-direct {p2, v2, p0}, Le/a/p/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {p0}, Le/a/p/a/b;->SA()Landroid/widget/EditText;

    move-result-object p1

    new-instance p2, Le/a/p/a/b$a;

    invoke-direct {p2, v0, p0}, Le/a/p/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object p1, p0, Le/a/p/a/b;->h:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 27
    new-instance p2, Le/a/p/a/b$a;

    invoke-direct {p2, v6, p0}, Le/a/p/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p0, Le/a/p/a/b;->t:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 29
    new-instance p2, Le/a/p/a/b$a;

    invoke-direct {p2, v3, p0}, Le/a/p/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Le/a/p/a/b;->i:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 31
    new-instance p2, Le/a/p/a/b$a;

    invoke-direct {p2, v4, p0}, Le/a/p/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p0}, Le/a/p/a/b;->lB()Landroid/widget/EditText;

    move-result-object p1

    new-instance p2, Le/a/p/a/b$a;

    invoke-direct {p2, v5, p0}, Le/a/p/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p1, p0, Le/a/p/a/b;->E:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 34
    new-instance p2, Le/a/p/a/b$a;

    const/4 v0, 0x7

    invoke-direct {p2, v0, p0}, Le/a/p/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object p1, p0, Le/a/p/a/b;->u:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 36
    new-instance p2, Le/a/p/a/b$a;

    const/16 v0, 0x8

    invoke-direct {p2, v0, p0}, Le/a/p/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p1, p0, Le/a/p/a/b;->q:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 38
    new-instance p2, Le/a/p/a/b$a;

    const/16 v0, 0x9

    invoke-direct {p2, v0, p0}, Le/a/p/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 39
    :cond_4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2
.end method

.method public final pB()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Le/a/p/a/b;->L:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public pz()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->T:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "generalLoading"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public final qB(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-void
.end method

.method public qf(Landroid/net/Uri;)V
    .locals 13

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "context ?: return"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v1}, Le/a/b0/q/s;->g(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Le/a/b0/q/s;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Ls1/u/s;->a:Ls1/u/s;

    .line 4
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    const/4 p1, 0x1

    if-eq v5, p1, :cond_4

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v3, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 7
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 8
    new-instance v7, Ls1/k;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v8, v5}, Le/a/p/a/b;->OA(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_2

    :cond_1
    move-object v5, v6

    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-direct {v7, v8, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 13
    check-cast v4, Ls1/k;

    .line 14
    iget-object v4, v4, Ls1/k;->b:Ljava/lang/Object;

    .line 15
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 16
    :cond_3
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v4, Lcom/truecaller/editprofile/R$layout;->list_item_alert_dialog:I

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 17
    new-instance v2, Ln3/b/a/g$a;

    sget v4, Lcom/truecaller/editprofile/R$style;->StyleX_AlertDialog:I

    invoke-direct {v2, v1, v4}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;I)V

    .line 18
    sget v1, Lcom/truecaller/editprofile/R$string;->StrAppMultiple:I

    invoke-virtual {v2, v1}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    .line 19
    new-instance v1, Le/a/p/a/j;

    invoke-direct {v1, p0, p1, v3}, Le/a/p/a/j;-><init>(Le/a/p/a/b;Ljava/util/List;Ljava/util/List;)V

    .line 20
    iget-object p1, v2, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, p1, Landroidx/appcompat/app/AlertController$b;->r:Landroid/widget/ListAdapter;

    .line 21
    iput-object v1, p1, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 22
    invoke-virtual {v2}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    goto :goto_4

    .line 23
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, v0}, Le/a/p/a/b;->OA(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 24
    :cond_5
    iget-object v1, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    if-eqz v1, :cond_6

    move-object v7, v1

    check-cast v7, Le/a/p/a/m;

    .line 25
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v10, Le/a/p/a/t;

    invoke-direct {v10, v7, p1, v6}, Le/a/p/a/t;-><init>(Le/a/p/a/m;Landroid/net/Uri;Ls1/w/d;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_4

    :cond_6
    const-string p1, "presenter"

    .line 27
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    :cond_7
    :goto_4
    return-void
.end method

.method public qs(Ljava/util/Date;Ljava/text/DateFormat;)V
    .locals 2

    const-string v0, "date"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultDateFormat"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/truecaller/editprofile/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "birthdayPickerDialogTitl\u2026yId<TextView>(R.id.title)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Le/a/p/a/b;->fB(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "birthdayPickerDialogTitleView"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public r6(Ljava/lang/String;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->p:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "emailTextInputLayout"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public r9(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final rB(Landroid/text/Editable;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public final sB(Ljava/lang/String;Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/z/b/l<",
            "-",
            "Landroid/view/View;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->iB()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "saveButton"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Le/a/p/a/b;->iB()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Le/a/p/a/b;->iB()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p2, :cond_0

    new-instance v0, Le/a/p/a/k;

    invoke-direct {v0, p2}, Le/a/p/a/k;-><init>(Ls1/z/b/l;)V

    move-object p2, v0

    :cond_0
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public sc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "secondaryPhoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->A:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2
    invoke-static {p1}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->z:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2
    invoke-static {p1}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "activity ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public ti()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->a:Le/a/p/a/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Le/a/p/a/m;

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v0, Le/a/p/a/m;->n:Z

    .line 3
    iput-object v1, v0, Le/a/p/a/m;->k:Lcom/truecaller/common/profile/ImageSource;

    .line 4
    iput-object v1, v0, Le/a/p/a/m;->l:Landroid/net/Uri;

    .line 5
    iput-object v1, v0, Le/a/p/a/m;->m:Ljava/lang/String;

    .line 6
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Gu()V

    .line 7
    :cond_0
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Nn(Z)V

    .line 8
    :cond_1
    invoke-virtual {v0}, Le/a/p/a/m;->Rj()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->lk()V

    :cond_2
    return-void

    :cond_3
    const-string v0, "presenter"

    .line 9
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public tn(IIIJ)V
    .locals 12

    move-object v8, p0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v0, "context ?: return"

    invoke-static {v7, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/truecaller/editprofile/R$layout;->birthday_picker_title:I

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "LayoutInflater.from(cont\u2026icker_title, null, false)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Le/a/p/a/b;->e:Landroid/view/View;

    .line 3
    new-instance v10, Landroid/app/DatePickerDialog;

    sget v2, Lcom/truecaller/editprofile/R$style;->birthdayPickerDialog:I

    move-object v0, v10

    move-object v1, v7

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 4
    invoke-virtual {v10}, Landroid/app/DatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/truecaller/editprofile/R$drawable;->background_rectangle_default:I

    .line 5
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 6
    invoke-static {v7, v1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_0
    invoke-virtual {v10}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "date_picker_header"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, v8, Le/a/p/a/b;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v10, v0}, Landroid/app/DatePickerDialog;->setCustomTitle(Landroid/view/View;)V

    :goto_0
    const/4 v0, -0x1

    .line 10
    sget v1, Lcom/truecaller/editprofile/R$string;->StrSet:I

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1, v10}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 11
    invoke-virtual {v10}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v9

    .line 12
    new-instance v11, Le/a/p/a/b$h;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v7

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Le/a/p/a/b$h;-><init>(Le/a/p/a/b;Landroid/content/Context;IIIJ)V

    move v0, p1

    move v1, p2

    move v2, p3

    invoke-virtual {v9, p1, p2, p3, v11}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    const-string v0, "this"

    .line 13
    invoke-static {v9, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide/from16 v0, p4

    invoke-virtual {v9, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 14
    invoke-virtual {v10}, Landroid/app/DatePickerDialog;->show()V

    return-void

    :cond_2
    const-string v0, "birthdayPickerDialogTitleView"

    .line 15
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_3
    return-void
.end method

.method public u(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "avatarUri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "context ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Le/a/p/a/b;->PA()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 5
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 6
    invoke-static {v0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v0

    check-cast v0, Le/a/z3/e;

    .line 7
    new-instance v1, Le/f/a/r/h;

    invoke-direct {v1}, Le/f/a/r/h;-><init>()V

    sget-object v2, Le/f/a/n/o/k;->b:Le/f/a/n/o/k;

    invoke-virtual {v1, v2}, Le/f/a/r/a;->i(Le/f/a/n/o/k;)Le/f/a/r/a;

    move-result-object v1

    check-cast v1, Le/f/a/r/h;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Le/f/a/r/a;->A(Z)Le/f/a/r/a;

    move-result-object v1

    check-cast v1, Le/f/a/r/h;

    invoke-virtual {v0, v1}, Le/a/z3/e;->w(Le/f/a/r/h;)Le/a/z3/e;

    const-string v1, "GlideApp.with(context)\n \u2026E).skipMemoryCache(true))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1, v1}, Le/a/m0/a1$k;->O0(Le/f/a/i;Landroid/net/Uri;Ljava/lang/Integer;)Le/f/a/h;

    move-result-object p1

    .line 9
    sget v0, Lcom/truecaller/editprofile/R$drawable;->ic_tcx_default_avatar_48dp:I

    invoke-virtual {p1, v0}, Le/f/a/r/a;->u(I)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    .line 10
    invoke-virtual {p1, v0}, Le/f/a/r/a;->k(I)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    .line 11
    invoke-virtual {p0}, Le/a/p/a/b;->PA()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    :cond_0
    return-void
.end method

.method public vb()V
    .locals 3

    .line 1
    new-instance v0, Le/a/p/a/d;

    invoke-direct {v0}, Le/a/p/a/d;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public vy(Ljava/lang/String;)V
    .locals 1

    const-string v0, "jobTitle"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->cB()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public wd()V
    .locals 3

    .line 1
    new-instance v0, Le/a/p/a/c;

    invoke-direct {v0}, Le/a/p/a/c;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public wp(Ljava/lang/String;)V
    .locals 1

    const-string v0, "company"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/p/a/b;->WA()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public xf()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p/a/b;->p:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "emailTextInputLayout"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le/a/p/a/b;->qB(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method

.method public yi()V
    .locals 3

    .line 1
    new-instance v0, Le/a/p/a/a;

    invoke-direct {v0}, Le/a/p/a/a;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
