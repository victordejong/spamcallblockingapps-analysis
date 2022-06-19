.class public final Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/b/b/c/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00dc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0006\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \u00ce\u00012\u00020\u00012\u00020\u0002:\u0002\u0082\u0001B\u0008\u00a2\u0006\u0005\u0008\u00cd\u0001\u0010\u0016J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0007J\'\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001d\u0010\u001f\u001a\u00020\u00052\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0016J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0007J\u000f\u0010#\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0016J\u000f\u0010$\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0016J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0007J\u0017\u0010\'\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0007J\u0019\u0010*\u001a\u00020\u00052\u0008\u0010)\u001a\u0004\u0018\u00010(H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010)\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008,\u0010+J1\u00101\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u00032\u0008\u0010.\u001a\u0004\u0018\u00010\u00032\u0006\u0010/\u001a\u00020\u00032\u0006\u00100\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u00081\u00102J\u001f\u00106\u001a\u00020\u00052\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u000203H\u0016\u00a2\u0006\u0004\u00086\u00107J\u000f\u00108\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00088\u0010\u0016J\u000f\u00109\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00089\u0010\u0016J\u000f\u0010:\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008:\u0010\u0016J\u000f\u0010;\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008;\u0010\u0016J\u0017\u0010=\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010?\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0016J)\u0010D\u001a\u00020\u00052\u0006\u0010@\u001a\u00020\u000c2\u0006\u0010A\u001a\u00020\u000c2\u0008\u0010C\u001a\u0004\u0018\u00010BH\u0014\u00a2\u0006\u0004\u0008D\u0010EJ\u0017\u0010F\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008F\u0010\u0007J\u000f\u0010G\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008G\u0010\u0016J\u001f\u0010I\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u000c2\u0006\u0010H\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008I\u0010JJ\u0017\u0010K\u001a\u00020\u00052\u0006\u0010H\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008K\u0010\u0007J\u0017\u0010L\u001a\u00020\u00052\u0006\u0010H\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008L\u0010\u0007J\u0017\u0010M\u001a\u00020\u00052\u0006\u0010H\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008M\u0010\u0007J\u000f\u0010N\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008N\u0010\u0016J\u0017\u0010Q\u001a\u00020\u00052\u0006\u0010P\u001a\u00020OH\u0016\u00a2\u0006\u0004\u0008Q\u0010RJ\u0017\u0010U\u001a\u00020T2\u0006\u0010S\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008U\u0010VJ#\u0010Y\u001a\u00020\u00052\u0008\u0008\u0001\u0010W\u001a\u00020\u000c2\u0008\u0008\u0001\u0010X\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008Y\u0010ZJ#\u0010\\\u001a\u00020\u00052\u0008\u0008\u0001\u0010[\u001a\u00020\u000c2\u0008\u0008\u0001\u0010X\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\\\u0010ZJ\u0017\u0010]\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008]\u0010>J\u0017\u0010^\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008^\u0010>J\u0017\u0010_\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008_\u0010>J\u000f\u0010`\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008`\u0010\u0016J\u000f\u0010a\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008a\u0010\u0016J\u000f\u0010b\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008b\u0010\u0016J\u0017\u0010c\u001a\u00020\u00052\u0006\u0010X\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008c\u0010>J!\u0010e\u001a\u00020\u00052\u0008\u0008\u0001\u0010X\u001a\u00020\u000c2\u0006\u0010d\u001a\u00020TH\u0016\u00a2\u0006\u0004\u0008e\u0010fJ\u001f\u0010g\u001a\u00020\u00052\u0006\u0010X\u001a\u00020\u00032\u0006\u0010d\u001a\u00020TH\u0016\u00a2\u0006\u0004\u0008g\u0010hJ\u000f\u0010i\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008i\u0010\u0016J\u000f\u0010j\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008j\u0010\u0016J\u000f\u0010k\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008k\u0010\u0016J\u000f\u0010l\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008l\u0010\u0016J\u000f\u0010m\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008m\u0010\u0016J\u000f\u0010n\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008n\u0010\u0016R\"\u0010v\u001a\u00020o8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008p\u0010q\u001a\u0004\u0008r\u0010s\"\u0004\u0008t\u0010uR\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u001c\u0010|\u001a\u0008\u0012\u0004\u0012\u00020\u00030y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010{R\u0017\u0010\u0080\u0001\u001a\u00020}8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008~\u0010\u007fR1\u0010\u0089\u0001\u001a\u00030\u0081\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u001f\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001\u0012\u0005\u0008\u0088\u0001\u0010\u0016\u001a\u0006\u0008\u0084\u0001\u0010\u0085\u0001\"\u0006\u0008\u0086\u0001\u0010\u0087\u0001R*\u0010\u0091\u0001\u001a\u00030\u008a\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001\"\u0006\u0008\u008f\u0001\u0010\u0090\u0001R*\u0010\u0099\u0001\u001a\u00030\u0092\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001\u001a\u0006\u0008\u0095\u0001\u0010\u0096\u0001\"\u0006\u0008\u0097\u0001\u0010\u0098\u0001R*\u0010\u00a1\u0001\u001a\u00030\u009a\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u009b\u0001\u0010\u009c\u0001\u001a\u0006\u0008\u009d\u0001\u0010\u009e\u0001\"\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R*\u0010\u00a9\u0001\u001a\u00030\u00a2\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001\u001a\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001\"\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001R\u001c\u0010\u00ad\u0001\u001a\u0005\u0018\u00010\u00aa\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R\u001a\u0010\u00b1\u0001\u001a\u00030\u00ae\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R\u001c\u0010\u00b5\u0001\u001a\u0005\u0018\u00010\u00b2\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001R\u001a\u0010\u00b9\u0001\u001a\u00030\u00b6\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R\u0017\u0010%\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00ba\u0001\u0010xR1\u0010\u00c3\u0001\u001a\u00030\u00bb\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u001f\n\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001\u0012\u0005\u0008\u00c2\u0001\u0010\u0016\u001a\u0006\u0008\u00be\u0001\u0010\u00bf\u0001\"\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001R\u001a\u0010\u00c7\u0001\u001a\u00030\u00c4\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001R1\u0010\u00cc\u0001\u001a\u00030\u00bb\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u001f\n\u0006\u0008\u00c8\u0001\u0010\u00bd\u0001\u0012\u0005\u0008\u00cb\u0001\u0010\u0016\u001a\u0006\u0008\u00c9\u0001\u0010\u00bf\u0001\"\u0006\u0008\u00ca\u0001\u0010\u00c1\u0001\u00a8\u0006\u00cf\u0001"
    }
    d2 = {
        "Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;",
        "Ln3/b/a/h;",
        "Le/a/b/b/c/p;",
        "",
        "backgroundColor",
        "Ls1/s;",
        "va",
        "(Ljava/lang/String;)V",
        "logo",
        "ua",
        "Landroid/view/View;",
        "view",
        "",
        "prevHeight",
        "targetHeight",
        "ta",
        "(Landroid/view/View;II)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "()V",
        "a2",
        "Lcom/truecaller/profile/data/dto/Profile;",
        "profile",
        "D9",
        "(Lcom/truecaller/profile/data/dto/Profile;)V",
        "",
        "Lcom/truecaller/profile/data/dto/OpenHours;",
        "openHours",
        "n7",
        "(Ljava/util/List;)V",
        "ca",
        "M9",
        "E2",
        "P2",
        "color",
        "f6",
        "Z3",
        "Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;",
        "address",
        "F3",
        "(Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;)V",
        "N1",
        "street",
        "zipCode",
        "city",
        "countryName",
        "t8",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "latitude",
        "longitude",
        "t5",
        "(DD)V",
        "I5",
        "B8",
        "x1",
        "w1",
        "position",
        "h9",
        "(I)V",
        "O2",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "l2",
        "I7",
        "picture",
        "s4",
        "(ILjava/lang/String;)V",
        "S",
        "M8",
        "s3",
        "j1",
        "Le/a/b0/p/c;",
        "tag",
        "y1",
        "(Le/a/b0/p/c;)V",
        "email",
        "",
        "k8",
        "(Ljava/lang/String;)Z",
        "textField",
        "errorMessage",
        "I2",
        "(II)V",
        "inputField",
        "K2",
        "l4",
        "e7",
        "m2",
        "i9",
        "a0",
        "i2",
        "A7",
        "recoverable",
        "n8",
        "(IZ)V",
        "C9",
        "(Ljava/lang/String;Z)V",
        "b0",
        "onBackPressed",
        "da",
        "cancel",
        "H3",
        "i1",
        "Le/a/b0/e/l;",
        "e",
        "Le/a/b0/e/l;",
        "getAccountManager",
        "()Le/a/b0/e/l;",
        "setAccountManager",
        "(Le/a/b0/e/l;)V",
        "accountManager",
        "l",
        "Ljava/lang/String;",
        "",
        "n",
        "Ljava/util/Set;",
        "pictures",
        "Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;",
        "k",
        "Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;",
        "openHoursFragment",
        "Le/a/u3/g;",
        "b",
        "Le/a/u3/g;",
        "getFeaturesRegistry",
        "()Le/a/u3/g;",
        "setFeaturesRegistry",
        "(Le/a/u3/g;)V",
        "getFeaturesRegistry$annotations",
        "featuresRegistry",
        "Le/a/b0/o/a;",
        "c",
        "Le/a/b0/o/a;",
        "getCoreSettings",
        "()Le/a/b0/o/a;",
        "setCoreSettings",
        "(Le/a/b0/o/a;)V",
        "coreSettings",
        "Le/a/b0/e/r/a;",
        "d",
        "Le/a/b0/e/r/a;",
        "getAccountSettings",
        "()Le/a/b0/e/r/a;",
        "setAccountSettings",
        "(Le/a/b0/e/r/a;)V",
        "accountSettings",
        "Le/a/b/b/c/q;",
        "a",
        "Le/a/b/b/c/q;",
        "qa",
        "()Le/a/b/b/c/q;",
        "setPresenter",
        "(Le/a/b/b/c/q;)V",
        "presenter",
        "Le/a/q2/a;",
        "f",
        "Le/a/q2/a;",
        "getAnalytics",
        "()Le/a/q2/a;",
        "setAnalytics",
        "(Le/a/q2/a;)V",
        "analytics",
        "",
        "o",
        "Ljava/lang/Long;",
        "tagId",
        "Le/a/b/m/v;",
        "q",
        "Le/a/b/m/v;",
        "binding",
        "Landroid/app/ProgressDialog;",
        "p",
        "Landroid/app/ProgressDialog;",
        "loadingProgressDialog",
        "Le/a/b/b/c/a;",
        "i",
        "Le/a/b/b/c/a;",
        "colorsAdapter",
        "m",
        "Ls1/w/f;",
        "g",
        "Ls1/w/f;",
        "getAsyncCoroutineContext",
        "()Ls1/w/f;",
        "setAsyncCoroutineContext",
        "(Ls1/w/f;)V",
        "getAsyncCoroutineContext$annotations",
        "asyncCoroutineContext",
        "Le/a/b/b/c/c;",
        "j",
        "Le/a/b/b/c/c;",
        "picturesAdapter",
        "h",
        "ra",
        "setUiCoroutineContext",
        "getUiCoroutineContext$annotations",
        "uiCoroutineContext",
        "<init>",
        "r",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final r:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$b;


# instance fields
.field public a:Le/a/b/b/c/q;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/u3/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/b0/o/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/b0/e/r/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/b0/e/l;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Le/a/b/b/c/a;

.field public j:Le/a/b/b/c/c;

.field public k:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/Long;

.field public p:Landroid/app/ProgressDialog;

.field public q:Le/a/b/m/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->r:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->m:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->n:Ljava/util/Set;

    return-void
.end method

.method public static final pa(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->l:Ljava/lang/String;

    const-string v1, "presenter"

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->a:Le/a/b/b/c/q;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p0, Le/a/b/b/c/p;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Le/a/b/b/c/p;->E2()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-eqz p0, :cond_3

    .line 4
    iget-object p0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p0, Le/a/b/b/c/p;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Le/a/b/b/c/p;->ca()V

    :cond_2
    :goto_0
    return-void

    .line 5
    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public static final sa(Landroid/content/Context;ZZ)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "arg_from_wizard"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "arg_editing"

    .line 4
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "arg_migrating"

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public A7(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->b0()V

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public B8()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, v0, Le/a/b/m/v;->d:Landroid/widget/TextView;

    const-string v3, "addressEditText"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, v0, Le/a/b/m/v;->v:Landroidx/cardview/widget/CardView;

    const-string v2, "mapCardView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 4
    iget-object v0, v0, Le/a/b/m/v;->j:Landroid/widget/ImageButton;

    const-string v1, "deleteAddressButton"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public C9(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->b0()V

    .line 2
    new-instance v0, Ln3/b/a/g$a;

    invoke-direct {v0, p0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    .line 4
    sget p1, Lcom/truecaller/bizmon/R$string;->StrRetry:I

    new-instance p2, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$j;

    invoke-direct {p2, p0}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$j;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V

    invoke-virtual {v0, p1, p2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 5
    sget p1, Lcom/truecaller/bizmon/R$string;->StrCancel:I

    sget-object p2, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;->b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;

    invoke-virtual {v0, p1, p2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/truecaller/bizmon/R$string;->StrOK:I

    sget-object p2, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;->c:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;

    invoke-virtual {v0, p1, p2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 7
    :goto_0
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public D9(Lcom/truecaller/profile/data/dto/Profile;)V
    .locals 3

    const-string v0, "profile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v0, :cond_5

    .line 2
    iget-object v1, v0, Le/a/b/m/v;->o:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/Profile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, v0, Le/a/b/m/v;->r:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/Profile;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5
    iget-object v1, v0, Le/a/b/m/v;->y:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Company;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Le/a/b/m/v;->k:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/BusinessData;->getAbout()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, v0, Le/a/b/m/v;->m:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/BusinessData;->getOnlineIds()Lcom/truecaller/profile/data/dto/OnlineIds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/OnlineIds;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/BusinessData;->getJobTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Le/a/b/m/v;->l:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/BusinessData;->getOnlineIds()Lcom/truecaller/profile/data/dto/OnlineIds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/OnlineIds;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Le/a/b/m/v;->L:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/BusinessData;->getOnlineIds()Lcom/truecaller/profile/data/dto/OnlineIds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/OnlineIds;->getFacebookId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v0, Le/a/b/m/v;->n:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/BusinessData;->getOnlineIds()Lcom/truecaller/profile/data/dto/OnlineIds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/OnlineIds;->getTwitterId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v0, Le/a/b/m/v;->K:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/Company;->getSize()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, v0, Le/a/b/m/v;->C:Landroid/widget/Spinner;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Locale.getDefault()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/truecaller/bizmon/ui/profile/BusinessSize;->valueOf(Ljava/lang/String;)Lcom/truecaller/bizmon/ui/profile/BusinessSize;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_4
    return-void

    :cond_5
    const-string p1, "binding"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public E2()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-direct {v0, p0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/truecaller/bizmon/R$string;->BusinessProfile_RemoveLogoWarningMessage:I

    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    .line 3
    sget v1, Lcom/truecaller/bizmon/R$string;->StrOK:I

    new-instance v2, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$p;

    invoke-direct {v2, p0}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$p;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 4
    sget v1, Lcom/truecaller/bizmon/R$string;->StrCancel:I

    sget-object v2, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$q;->a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$q;

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 5
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public F3(Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;)V
    .locals 3

    .line 1
    sget-object v0, Le/a/b/b/a/b;->g:Le/a/b/b/a/b$c;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Le/a/b/b/a/b;

    invoke-direct {v0}, Le/a/b/b/a/b;-><init>()V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_address"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 8
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 9
    sget p1, Lcom/truecaller/bizmon/R$anim;->fast_slide_in_up:I

    .line 10
    sget v2, Lcom/truecaller/bizmon/R$anim;->fast_slide_out_down:I

    .line 11
    invoke-virtual {v1, p1, v2, p1, v2}, Ln3/r/a/f0;->o(IIII)Ln3/r/a/f0;

    .line 12
    check-cast v1, Ln3/r/a/a;

    .line 13
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz p1, :cond_1

    iget-object v2, v1, Ln3/r/a/a;->q:Landroidx/fragment/app/FragmentManager;

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is already attached to a FragmentManager."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    :goto_0
    new-instance p1, Ln3/r/a/f0$a;

    const/16 v2, 0x8

    invoke-direct {p1, v2, v0}, Ln3/r/a/f0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v1, p1}, Ln3/r/a/f0;->d(Ln3/r/a/f0$a;)V

    .line 17
    sget p1, Lcom/truecaller/bizmon/R$id;->businessAddressPlaceholder:I

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, p1, v0, v2}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 19
    const-class p1, Le/a/b/b/a/b;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ln3/r/a/f0;->e(Ljava/lang/String;)Ln3/r/a/f0;

    .line 20
    invoke-virtual {v1}, Ln3/r/a/f0;->g()I

    return-void
.end method

.method public H3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/b/m/v;->J:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "binding.toolbar"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ConvertToPrivate:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$h;

    invoke-direct {v1, p0}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$h;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public I2(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    return-void
.end method

.method public I5()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/b/m/v;->j:Landroid/widget/ImageButton;

    const-string v3, "binding.deleteAddressButton"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/b/m/v;->j:Landroid/widget/ImageButton;

    new-instance v1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$i;

    invoke-direct {v1, p0}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$i;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public I7()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-direct {v0, p0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorCroppingLogoWarningMessage:I

    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    .line 3
    sget v1, Lcom/truecaller/bizmon/R$string;->StrOK:I

    new-instance v2, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$m;

    invoke-direct {v2, p0}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$m;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 4
    sget v1, Lcom/truecaller/bizmon/R$string;->StrCancel:I

    sget-object v2, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$n;->a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$n;

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 5
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public K2(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 2
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public M8(Ljava/lang/String;)V
    .locals 3

    const-string v0, "picture"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-direct {v0, p0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/truecaller/bizmon/R$string;->BusinessProfile_RemovePictureWarningMessage:I

    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    .line 3
    sget v1, Lcom/truecaller/bizmon/R$string;->StrOK:I

    new-instance v2, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$r;

    invoke-direct {v2, p0, p1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$r;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 4
    sget p1, Lcom/truecaller/bizmon/R$string;->StrCancel:I

    sget-object v1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$s;->a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$s;

    invoke-virtual {v0, p1, v1}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 5
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public M9(Ljava/lang/String;)V
    .locals 4

    const-string v0, "logo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->l:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/b/m/v;->s:Landroid/widget/Button;

    const-string v3, "binding.logoButton"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 3
    invoke-static {p0}, Le/a/m0/a1$k;->N1(Ln3/r/a/l;)Le/a/z3/e;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    .line 5
    check-cast v0, Le/a/z3/d;

    .line 6
    invoke-virtual {v0}, Le/a/z3/d;->d0()Le/a/z3/d;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/b/m/v;->u:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public N1(Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->a:Le/a/b/b/c/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/b/b/c/q;->Jj(Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public O2()V
    .locals 2

    .line 1
    invoke-static {}, Le/a/b0/q/s;->c()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {p0, v0}, Le/a/b0/q/t;->k(Landroid/content/Context;Landroid/content/ActivityNotFoundException;)V

    :goto_0
    return-void
.end method

.method public P2()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->l:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    const-string v2, "binding"

    if-eqz v1, :cond_1

    iget-object v1, v1, Le/a/b/m/v;->s:Landroid/widget/Button;

    const-string v3, "binding.logoButton"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v1, :cond_0

    iget-object v1, v1, Le/a/b/m/v;->u:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public S(Ljava/lang/String;)V
    .locals 2

    const-string v0, "picture"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->a:Le/a/b/b/c/q;

    if-eqz v1, :cond_1

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/b/b/c/p;->M8(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public Z3(Ljava/lang/String;)V
    .locals 7

    const-string v0, "color"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->m:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->i:Le/a/b/b/c/a;

    const/4 v2, 0x0

    const-string v3, "colorsAdapter"

    if-eqz v1, :cond_3

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v4, Le/a/b/b/c/b;->a:Ljava/util/List;

    .line 6
    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 7
    :goto_0
    iput v5, v1, Le/a/b/b/c/a;->a:I

    .line 8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 9
    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v1, :cond_2

    iget-object v1, v1, Le/a/b/m/v;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->i:Le/a/b/b/c/a;

    if-eqz v5, :cond_1

    .line 10
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 12
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->va(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Le/a/e/a2;->v(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void

    .line 15
    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_3
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public a0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->p:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public a2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/b/m/v;->p:Landroid/widget/TextView;

    const-string v3, "binding.footnoteTextView"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/b/m/v;->p:Landroid/widget/TextView;

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public b0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->p:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->p:Landroid/app/ProgressDialog;

    return-void
.end method

.method public ca()V
    .locals 2

    .line 1
    invoke-static {}, Le/a/b0/q/s;->c()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {p0, v0}, Le/a/b0/q/t;->k(Landroid/content/Context;Landroid/content/ActivityNotFoundException;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public da()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-direct {v0, p0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/truecaller/bizmon/R$string;->BusinessProfile_CancelWarningTitle:I

    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    .line 3
    sget v1, Lcom/truecaller/bizmon/R$string;->BusinessProfile_CancelWarningMessage:I

    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    .line 4
    sget v1, Lcom/truecaller/bizmon/R$string;->BusinessProfile_CancelWarningPositive:I

    new-instance v2, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$f;

    invoke-direct {v2, p0}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$f;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 5
    sget v1, Lcom/truecaller/bizmon/R$string;->StrCancel:I

    sget-object v2, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$g;->a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$g;

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public e7(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->k:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;->b:Le/a/b/b/b/d;

    if-eqz v0, :cond_0

    .line 3
    iput p1, v0, Le/a/b/b/b/d;->e:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Le/a/b/b/b/d;->c:Z

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    return-void

    :cond_0
    const-string p1, "openHoursAdapter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "openHoursFragment"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public f6(Ljava/lang/String;)V
    .locals 2

    const-string v0, "color"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->a:Le/a/b/b/c/q;

    if-eqz v1, :cond_1

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/b/b/c/p;->Z3(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public h9(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->a:Le/a/b/b/c/q;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Le/a/b/b/c/q;->g:Ljava/lang/Integer;

    .line 3
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/c/p;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/b/b/c/p;->O2()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public i1()V
    .locals 1

    const/16 v0, 0x2711

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public i2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->b0()V

    .line 2
    sget v0, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ProfileCreatedMessage:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public i9()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-direct {v0, p0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/truecaller/bizmon/R$string;->BusinessProfile_SaveEUWarningTitle:I

    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    .line 3
    sget v1, Lcom/truecaller/bizmon/R$string;->BusinessProfile_SaveEuWarningMessage:I

    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    .line 4
    sget v1, Lcom/truecaller/bizmon/R$string;->StrAgree:I

    new-instance v2, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$k;

    invoke-direct {v2, p0}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$k;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 5
    sget v1, Lcom/truecaller/bizmon/R$string;->StrCancel:I

    sget-object v2, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$l;->a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$l;

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    move-result-object v0

    const v1, 0x102000b

    .line 7
    invoke-virtual {v0, v1}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method

.method public j1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->o:Ljava/lang/Long;

    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->b:Le/a/u3/g;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    invoke-static {p0, v0, v2, v1}, Le/a/l4/k;->r(Landroid/content/Context;Ljava/lang/Long;ILe/a/u3/g;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string v0, "featuresRegistry"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public k8(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "email"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public l2(Ljava/lang/String;)V
    .locals 4

    const-string v0, "logo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Le/a/b0/q/s;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const-string v3, "packageManager.queryIntentActivities(intent, 0)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->ua(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "intent"

    .line 5
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/ComponentName;

    .line 6
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 8
    invoke-direct {p1, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p1, 0x3

    .line 9
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 10
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public l4(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->k:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;->b:Le/a/b/b/b/d;

    if-eqz v0, :cond_0

    .line 3
    iput p1, v0, Le/a/b/b/b/d;->e:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Le/a/b/b/b/d;->b:Z

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    return-void

    :cond_0
    const-string p1, "openHoursAdapter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "openHoursFragment"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public m2(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->k:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;->b:Le/a/b/b/b/d;

    if-eqz v0, :cond_0

    .line 3
    iput p1, v0, Le/a/b/b/b/d;->e:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Le/a/b/b/b/d;->d:Z

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    return-void

    :cond_0
    const-string p1, "openHoursAdapter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "openHoursFragment"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public n7(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/OpenHours;",
            ">;)V"
        }
    .end annotation

    const-string v0, "openHours"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->k:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v1, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;->a:Le/a/b/b/b/g;

    if-eqz v1, :cond_5

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, v1, Le/a/b/b/b/g;->b:Le/a/b/l/o;

    invoke-interface {v0}, Le/a/b/l/o;->i3()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->h1(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/u/w;

    .line 8
    iget v2, v2, Ls1/u/w;->a:I

    .line 9
    iget-object v3, v1, Le/a/b/b/b/g;->b:Le/a/b/l/o;

    invoke-interface {v3, v2}, Le/a/b/l/o;->c3(I)V

    .line 10
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/b/b/b/f;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Le/a/b/b/b/f;->c3(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, v1, Le/a/b/b/b/g;->b:Le/a/b/l/o;

    invoke-interface {v0, p1}, Le/a/b/l/o;->j3(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/profile/data/dto/OpenHours;

    .line 13
    iget-object v2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/b/b/b/f;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Le/a/b/b/b/f;->Gq(Lcom/truecaller/profile/data/dto/OpenHours;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/b/f;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/b/b/b/f;->Yy()V

    :cond_4
    return-void

    :cond_5
    const-string p1, "presenter"

    .line 15
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p1, "openHoursFragment"

    .line 16
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public n8(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(errorMessage)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->C9(Ljava/lang/String;Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, -0x1

    if-ne p2, v1, :cond_9

    const-string p2, "asyncCoroutineContext"

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {p0}, Le/a/b0/q/s;->f(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImageUtils.getCroppedImageUri(this).toString()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->ua(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    if-eqz p3, :cond_2

    const-string v0, "tag_id"

    .line 3
    invoke-virtual {p3, v0, p1, p2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v1

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->a:Le/a/b/b/c/q;

    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 5
    :cond_3
    iget-object p3, v0, Le/a/b/b/c/q;->q:Le/a/g5/p;

    invoke-interface {p3, p1, p2}, Le/a/g5/p;->c(J)Le/a/b0/p/c;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 6
    iget-object p2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/b/b/c/p;

    if-eqz p2, :cond_9

    invoke-interface {p2, p1}, Le/a/b/b/c/p;->y1(Le/a/b0/p/c;)V

    goto :goto_1

    :cond_4
    const-string p1, "presenter"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-eqz p3, :cond_9

    .line 8
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 9
    iget-object p3, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->g:Ls1/w/f;

    if-eqz p3, :cond_6

    const/4 v2, 0x0

    new-instance v3, Le/a/b/b/c/i;

    invoke-direct {v3, p0, p1, v1}, Le/a/b/b/c/i;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;Landroid/net/Uri;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_1

    :cond_6
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_7
    if-eqz p3, :cond_9

    .line 10
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 11
    iget-object p3, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->g:Ls1/w/f;

    if-eqz p3, :cond_8

    const/4 v2, 0x0

    new-instance v3, Le/a/b/b/c/h;

    invoke-direct {v3, p0, p1, v1}, Le/a/b/b/c/h;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;Landroid/net/Uri;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_1

    :cond_8
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->M()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->c0()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->a:Le/a/b/b/c/q;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/b/b/c/p;->da()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "presenter"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 60

    move-object/from16 v6, p0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1
    invoke-static {v6, v7, v8}, Le/a/l4/k;->n0(Landroid/app/Activity;ZI)V

    .line 2
    invoke-super/range {p0 .. p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    sget v1, Lcom/truecaller/bizmon/R$layout;->business_profile_activity_create_profile:I

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 5
    sget v1, Lcom/truecaller/bizmon/R$id;->aboutTextView:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_34

    .line 7
    sget v1, Lcom/truecaller/bizmon/R$id;->addMoreInfoLinear:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_34

    .line 9
    sget v1, Lcom/truecaller/bizmon/R$id;->addressEditText:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_34

    .line 11
    sget v1, Lcom/truecaller/bizmon/R$id;->addressInputLayout:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v15, :cond_34

    .line 13
    sget v1, Lcom/truecaller/bizmon/R$id;->backButton:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_34

    .line 15
    sget v1, Lcom/truecaller/bizmon/R$id;->businessAddressPlaceholder:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/FrameLayout;

    if-eqz v17, :cond_34

    .line 17
    sget v1, Lcom/truecaller/bizmon/R$id;->colorsRecyclerView:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v18, :cond_34

    .line 19
    sget v1, Lcom/truecaller/bizmon/R$id;->colorsTextView:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_34

    .line 21
    sget v1, Lcom/truecaller/bizmon/R$id;->contactPersonTextView:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_34

    .line 23
    sget v1, Lcom/truecaller/bizmon/R$id;->continueButton:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/Button;

    if-eqz v21, :cond_34

    .line 25
    sget v1, Lcom/truecaller/bizmon/R$id;->deleteAddressButton:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/ImageButton;

    if-eqz v22, :cond_34

    .line 27
    sget v1, Lcom/truecaller/bizmon/R$id;->descriptionEditText:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v23, :cond_34

    .line 29
    sget v1, Lcom/truecaller/bizmon/R$id;->descriptionInputLayout:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v24, :cond_34

    .line 31
    sget v1, Lcom/truecaller/bizmon/R$id;->designationEditText:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v25, :cond_34

    .line 33
    sget v1, Lcom/truecaller/bizmon/R$id;->designationInputLayout:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v26, :cond_34

    .line 35
    sget v1, Lcom/truecaller/bizmon/R$id;->emailEditText:I

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v27, :cond_34

    .line 37
    sget v1, Lcom/truecaller/bizmon/R$id;->emailInputLayout:I

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v28, :cond_34

    .line 39
    sget v1, Lcom/truecaller/bizmon/R$id;->facebookEditText:I

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v29, :cond_34

    .line 41
    sget v1, Lcom/truecaller/bizmon/R$id;->facebookInputLayout:I

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v30, :cond_34

    .line 43
    sget v1, Lcom/truecaller/bizmon/R$id;->firstNameEditText:I

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v31, :cond_34

    .line 45
    sget v1, Lcom/truecaller/bizmon/R$id;->firstNameInputLayout:I

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v32, :cond_34

    .line 47
    sget v1, Lcom/truecaller/bizmon/R$id;->footnoteTextView:I

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Landroid/widget/TextView;

    if-eqz v33, :cond_34

    .line 49
    sget v1, Lcom/truecaller/bizmon/R$id;->headerView:I

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    if-eqz v34, :cond_34

    .line 51
    sget v1, Lcom/truecaller/bizmon/R$id;->lastNameEditText:I

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v35, :cond_34

    .line 53
    sget v1, Lcom/truecaller/bizmon/R$id;->lastNameInputLayout:I

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v36, v2

    check-cast v36, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v36, :cond_34

    .line 55
    sget v1, Lcom/truecaller/bizmon/R$id;->logoButton:I

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Landroid/widget/Button;

    if-eqz v37, :cond_34

    .line 57
    sget v1, Lcom/truecaller/bizmon/R$id;->logoCardView:I

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, Landroid/widget/FrameLayout;

    if-eqz v38, :cond_34

    .line 59
    sget v1, Lcom/truecaller/bizmon/R$id;->logoImageView:I

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Landroid/widget/ImageView;

    if-eqz v39, :cond_34

    .line 61
    sget v1, Lcom/truecaller/bizmon/R$id;->mapCardView:I

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v40, v2

    check-cast v40, Landroidx/cardview/widget/CardView;

    if-eqz v40, :cond_34

    .line 63
    sget v1, Lcom/truecaller/bizmon/R$id;->mapViewMarker:I

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v41, v2

    check-cast v41, Landroid/widget/ImageView;

    if-eqz v41, :cond_34

    .line 65
    sget v1, Lcom/truecaller/bizmon/R$id;->moreInfoButton:I

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v42, v2

    check-cast v42, Landroid/widget/Button;

    if-eqz v42, :cond_34

    .line 67
    sget v1, Lcom/truecaller/bizmon/R$id;->nameEditText:I

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v43, v2

    check-cast v43, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v43, :cond_34

    .line 69
    sget v1, Lcom/truecaller/bizmon/R$id;->nameInputLayout:I

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v44, v2

    check-cast v44, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v44, :cond_34

    .line 71
    sget v1, Lcom/truecaller/bizmon/R$id;->phoneNumberEditText:I

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v45, v2

    check-cast v45, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v45, :cond_34

    .line 73
    sget v1, Lcom/truecaller/bizmon/R$id;->phoneNumberInputLayout:I

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v46, v2

    check-cast v46, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v46, :cond_34

    .line 75
    sget v1, Lcom/truecaller/bizmon/R$id;->picturesRecyclerView:I

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v47, v2

    check-cast v47, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v47, :cond_34

    .line 77
    sget v1, Lcom/truecaller/bizmon/R$id;->picturesTextView:I

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v48, v2

    check-cast v48, Landroid/widget/TextView;

    if-eqz v48, :cond_34

    .line 79
    sget v1, Lcom/truecaller/bizmon/R$id;->sizeEditText:I

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v49, v2

    check-cast v49, Landroid/widget/TextView;

    if-eqz v49, :cond_34

    .line 81
    sget v1, Lcom/truecaller/bizmon/R$id;->sizeInputLayout:I

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v50, v2

    check-cast v50, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v50, :cond_34

    .line 83
    sget v1, Lcom/truecaller/bizmon/R$id;->sizeSpinner:I

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v51, v2

    check-cast v51, Landroid/widget/Spinner;

    if-eqz v51, :cond_34

    .line 85
    sget v1, Lcom/truecaller/bizmon/R$id;->tagTextView:I

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v52, v2

    check-cast v52, Lcom/truecaller/common/tag/TagView;

    if-eqz v52, :cond_34

    .line 87
    sget v1, Lcom/truecaller/bizmon/R$id;->tagsEditText:I

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v53, v2

    check-cast v53, Landroid/widget/TextView;

    if-eqz v53, :cond_34

    .line 89
    sget v1, Lcom/truecaller/bizmon/R$id;->tagsInputLayout:I

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v54, v2

    check-cast v54, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v54, :cond_34

    .line 91
    sget v1, Lcom/truecaller/bizmon/R$id;->toolbar:I

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v55, v2

    check-cast v55, Landroidx/appcompat/widget/Toolbar;

    if-eqz v55, :cond_34

    .line 93
    sget v1, Lcom/truecaller/bizmon/R$id;->twitterEditText:I

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v56, v2

    check-cast v56, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v56, :cond_34

    .line 95
    sget v1, Lcom/truecaller/bizmon/R$id;->twitterInputLayout:I

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v57, v2

    check-cast v57, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v57, :cond_34

    .line 97
    sget v1, Lcom/truecaller/bizmon/R$id;->websiteEditText:I

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v58, v2

    check-cast v58, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v58, :cond_34

    .line 99
    sget v1, Lcom/truecaller/bizmon/R$id;->websiteInputLayout:I

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v59, v2

    check-cast v59, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v59, :cond_34

    .line 101
    new-instance v1, Le/a/b/m/v;

    move-object v10, v1

    move-object v11, v0

    check-cast v11, Landroid/widget/FrameLayout;

    invoke-direct/range {v10 .. v59}, Le/a/b/m/v;-><init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageButton;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/Button;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/Spinner;Lcom/truecaller/common/tag/TagView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;)V

    const-string v0, "BusinessProfileActivityC\u2026ayoutInflater.from(this))"

    .line 102
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    .line 103
    iget-object v0, v1, Le/a/b/m/v;->a:Landroid/widget/FrameLayout;

    .line 104
    invoke-virtual {v6, v0}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 105
    invoke-static/range {p0 .. p0}, Le/a/n/g0;->m(Landroid/content/Context;)Le/a/b/b/c/u/a;

    move-result-object v0

    check-cast v0, Le/a/b/b/c/u/c;

    .line 106
    new-instance v1, Le/a/b/b/c/q;

    iget-object v2, v0, Le/a/b/b/c/u/c;->p:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/b/l/h;

    iget-object v2, v0, Le/a/b/b/c/u/c;->s:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/a/b/l/a;

    iget-object v2, v0, Le/a/b/b/c/u/c;->u:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Le/a/b/b/c/d;

    iget-object v2, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v2}, Le/a/b0/c;->V()Le/a/b0/e/f;

    move-result-object v14

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 107
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    iget-object v3, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v15

    .line 109
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iget-object v3, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->i5()Le/a/u3/g;

    move-result-object v3

    .line 111
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v4, v0, Le/a/b/b/c/u/c;->d:Le/a/g5/a0;

    invoke-interface {v4}, Le/a/g5/a0;->O()Le/a/g5/p;

    move-result-object v4

    .line 113
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    iget-object v5, v0, Le/a/b/b/c/u/c;->e:Le/a/d3/a;

    invoke-interface {v5}, Le/a/d3/a;->O5()Le/a/d3/h;

    move-result-object v5

    .line 115
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    new-instance v10, Le/a/b0/n/b;

    iget-object v8, v0, Le/a/b/b/c/u/c;->f:Le/a/p5/o0;

    invoke-interface {v8}, Le/a/p5/o0;->i()Le/a/p5/c0;

    move-result-object v8

    .line 117
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    invoke-direct {v10, v8}, Le/a/b0/n/b;-><init>(Le/a/p5/c0;)V

    move-object v8, v10

    move-object v10, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    .line 119
    invoke-direct/range {v10 .. v19}, Le/a/b/b/c/q;-><init>(Le/a/b/l/h;Le/a/b/l/a;Le/a/b/b/c/d;Le/a/b0/e/f;Ls1/w/f;Le/a/u3/g;Le/a/g5/p;Le/a/d3/h;Le/a/b0/n/b;)V

    .line 120
    iput-object v1, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->a:Le/a/b/b/c/q;

    .line 121
    iget-object v1, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v1}, Le/a/b0/c;->i5()Le/a/u3/g;

    move-result-object v1

    .line 122
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    iput-object v1, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->b:Le/a/u3/g;

    .line 124
    iget-object v1, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v1}, Le/a/b0/c;->d()Le/a/b0/o/a;

    move-result-object v1

    .line 125
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    iput-object v1, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->c:Le/a/b0/o/a;

    .line 127
    iget-object v1, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v1}, Le/a/b0/c;->Y()Le/a/b0/e/r/a;

    move-result-object v1

    .line 128
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    iput-object v1, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->d:Le/a/b0/e/r/a;

    .line 130
    iget-object v1, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v1}, Le/a/b0/c;->L()Le/a/b0/e/l;

    move-result-object v1

    .line 131
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iput-object v1, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->e:Le/a/b0/e/l;

    .line 133
    iget-object v1, v0, Le/a/b/b/c/u/c;->b:Le/a/q2/e;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    .line 134
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    iput-object v1, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->f:Le/a/q2/a;

    .line 136
    iget-object v1, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v1}, Le/a/b0/c;->P()Ls1/w/f;

    move-result-object v1

    .line 137
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    iput-object v1, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->g:Ls1/w/f;

    .line 139
    iget-object v0, v0, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v0

    .line 140
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    iput-object v0, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->h:Ls1/w/f;

    .line 142
    iget-object v0, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->c:Le/a/b0/o/a;

    const-string v8, "coreSettings"

    if-eqz v0, :cond_33

    const-string v1, "profileBusiness"

    invoke-interface {v0, v1, v7}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 143
    iget-object v1, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->b:Le/a/u3/g;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Le/a/u3/g;->w()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 145
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v10, "arg_from_wizard"

    invoke-virtual {v0, v10, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->f:Le/a/q2/a;

    if-eqz v0, :cond_1

    .line 147
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Action"

    const-string v3, "BusinessProfile"

    .line 148
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v2, Le/a/q2/g$b$a;

    const-string v3, "WizardAction"

    invoke-direct {v2, v3, v9, v1, v9}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v1, "AnalyticsEvent.Builder(W\u2026                 .build()"

    .line 150
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-interface {v0, v2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    goto :goto_0

    :cond_1
    const-string v0, "analytics"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_2
    :goto_0
    const-string v0, "context"

    .line 152
    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static/range {p0 .. p0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    const-string v1, "WorkManager.getInstance(context)"

    .line 154
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const-string v1, "AvailableTagsDownloadWorkAction"

    move-object/from16 v2, p0

    invoke-static/range {v0 .. v5}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    .line 155
    iget-object v0, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->a:Le/a/b/b/c/q;

    const-string v1, "presenter"

    if-eqz v0, :cond_31

    .line 156
    iput-object v6, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 157
    iget-object v0, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    const-string v2, "binding"

    if-eqz v0, :cond_30

    iget-object v0, v0, Le/a/b/m/v;->t:Landroid/widget/FrameLayout;

    new-instance v3, Le1;

    invoke-direct {v3, v7, v6}, Le1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v0, :cond_2f

    iget-object v0, v0, Le/a/b/m/v;->s:Landroid/widget/Button;

    new-instance v3, Le1;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v6}, Le1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v0, Le/a/b/b/c/a;

    invoke-direct {v0, v6}, Le/a/b/b/c/a;-><init>(Le/a/b/b/c/g;)V

    iput-object v0, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->i:Le/a/b/b/c/a;

    .line 160
    iget-object v0, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v0, :cond_2e

    iget-object v0, v0, Le/a/b/m/v;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 161
    iget-object v0, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v0, :cond_2d

    iget-object v0, v0, Le/a/b/m/v;->g:Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "binding.colorsRecyclerView"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->i:Le/a/b/b/c/a;

    if-eqz v3, :cond_2c

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    const-string v0, "#F2F5F7"

    .line 162
    iput-object v0, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->m:Ljava/lang/String;

    .line 163
    iget-object v3, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v3, :cond_2b

    iget-object v3, v3, Le/a/b/m/v;->d:Landroid/widget/TextView;

    new-instance v4, Le/a/b/b/c/k;

    invoke-direct {v4, v6}, Le/a/b/b/c/k;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    iget-object v3, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v3, :cond_2a

    iget-object v3, v3, Le/a/b/m/v;->w:Landroid/widget/ImageView;

    new-instance v4, Le/a/b/b/c/l;

    invoke-direct {v4, v6}, Le/a/b/b/c/l;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v3, Le/a/b/b/c/c;

    invoke-direct {v3, v6}, Le/a/b/b/c/c;-><init>(Le/a/b/b/c/t;)V

    iput-object v3, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->j:Le/a/b/b/c/c;

    .line 166
    iget-object v3, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v3, :cond_29

    iget-object v3, v3, Le/a/b/m/v;->A:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 167
    iget-object v3, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v3, :cond_28

    iget-object v3, v3, Le/a/b/m/v;->A:Landroidx/recyclerview/widget/RecyclerView;

    const-string v4, "binding.picturesRecyclerView"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->j:Le/a/b/b/c/c;

    const-string v5, "picturesAdapter"

    if-eqz v4, :cond_27

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 168
    iget-object v3, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->j:Le/a/b/b/c/c;

    if-eqz v3, :cond_26

    .line 169
    iget-object v4, v3, Le/a/b/b/c/c;->a:Ljava/util/List;

    const-string v5, ""

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v4, v3, Le/a/b/b/c/c;->a:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v4, v3, Le/a/b/b/c/c;->a:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 173
    iget-object v3, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v3, :cond_25

    iget-object v3, v3, Le/a/b/m/v;->E:Landroid/widget/TextView;

    new-instance v4, Le/a/b/b/c/o;

    invoke-direct {v4, v6}, Le/a/b/b/c/o;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iget-object v3, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v3, :cond_24

    iget-object v3, v3, Le/a/b/m/v;->C:Landroid/widget/Spinner;

    const-string v4, "binding.sizeSpinner"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Le/a/b/b/c/f;

    const v12, 0x1090009

    invoke-direct {v11, v6, v12}, Le/a/b/b/c/f;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 175
    iget-object v3, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v3, :cond_23

    iget-object v3, v3, Le/a/b/m/v;->C:Landroid/widget/Spinner;

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Le/a/b/b/c/m;

    invoke-direct {v4, v6}, Le/a/b/b/c/m;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    sget v4, Lcom/truecaller/bizmon/R$id;->openHoursFragment:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->J(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.truecaller.bizmon.ui.openHours.OpenHoursFragment"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

    iput-object v3, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->k:Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;

    .line 177
    iget-object v3, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v3, :cond_22

    iget-object v3, v3, Le/a/b/m/v;->z:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v4, 0x2

    new-array v11, v4, [Ljava/lang/String;

    .line 178
    iget-object v12, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->c:Le/a/b0/o/a;

    if-eqz v12, :cond_21

    const-string v8, "profileNationalNumber"

    invoke-interface {v12, v8}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v7

    iget-object v8, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->d:Le/a/b0/e/r/a;

    if-eqz v8, :cond_20

    const-string v12, "profileNumber"

    invoke-interface {v8, v12}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-static {v11}, Le/a/p5/g0;->G([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 179
    invoke-static {v8}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v3, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v3, :cond_1f

    .line 181
    iget-object v8, v3, Le/a/b/m/v;->x:Landroid/widget/Button;

    new-instance v11, Le/a/b/b/c/j;

    invoke-direct {v11, v3, v6}, Le/a/b/b/c/j;-><init>(Le/a/b/m/v;Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v3, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v3, :cond_1e

    .line 183
    iget-object v8, v3, Le/a/b/m/v;->d:Landroid/widget/TextView;

    sget v11, Lcom/truecaller/bizmon/R$attr;->theme_textColorSecondary:I

    invoke-static {v8, v11}, Le/a/b0/q/o;->i(Landroid/widget/TextView;I)V

    .line 184
    iget-object v8, v3, Le/a/b/m/v;->b:Landroid/widget/TextView;

    invoke-static {v8, v11}, Le/a/b0/q/o;->i(Landroid/widget/TextView;I)V

    .line 185
    iget-object v8, v3, Le/a/b/m/v;->h:Landroid/widget/TextView;

    invoke-static {v8, v11}, Le/a/b0/q/o;->i(Landroid/widget/TextView;I)V

    .line 186
    iget-object v3, v3, Le/a/b/m/v;->x:Landroid/widget/Button;

    sget v8, Lcom/truecaller/bizmon/R$attr;->theme_accentColor:I

    invoke-static {v3, v8}, Le/a/b0/q/o;->i(Landroid/widget/TextView;I)V

    .line 187
    invoke-virtual {v6, v0}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->va(Ljava/lang/String;)V

    .line 188
    iget-object v0, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v0, :cond_1d

    .line 189
    iget-object v3, v0, Le/a/b/m/v;->i:Landroid/widget/Button;

    new-instance v8, Le/a/b/b/c/n;

    invoke-direct {v8, v0, v6}, Le/a/b/b/c/n;-><init>(Le/a/b/m/v;Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->a:Le/a/b/b/c/q;

    if-eqz v0, :cond_1c

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "arg_editing"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v10, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v10, "arg_migrating"

    invoke-virtual {v8, v10, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 194
    iput-boolean v1, v0, Le/a/b/b/c/q;->f:Z

    if-nez v1, :cond_4

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_b

    .line 195
    :cond_4
    :goto_1
    iget-object v1, v0, Le/a/b/b/c/q;->k:Le/a/b/l/h;

    invoke-interface {v1}, Le/a/b/l/h;->f()Lcom/truecaller/profile/data/dto/Profile;

    move-result-object v1

    .line 196
    sget-object v10, Ls1/u/s;->a:Ls1/u/s;

    iget-object v11, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v11, Le/a/b/b/c/p;

    if-eqz v11, :cond_5

    invoke-interface {v11, v1}, Le/a/b/b/c/p;->D9(Lcom/truecaller/profile/data/dto/Profile;)V

    .line 197
    :cond_5
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/BusinessData;->getAvatarUrl()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_6
    move-object v11, v9

    :goto_2
    if-eqz v11, :cond_8

    .line 198
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_7

    goto :goto_3

    :cond_7
    move v12, v7

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v12, 0x1

    :goto_4
    if-nez v12, :cond_9

    .line 199
    iget-object v12, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v12, Le/a/b/b/c/p;

    if-eqz v12, :cond_9

    invoke-interface {v12, v11}, Le/a/b/b/c/p;->M9(Ljava/lang/String;)V

    .line 200
    :cond_9
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/Company;->getBranding()Lcom/truecaller/profile/data/dto/Branding;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/Branding;->getBackgroundColor()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    iget-object v12, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v12, Le/a/b/b/c/p;

    if-eqz v12, :cond_a

    invoke-interface {v12, v11}, Le/a/b/b/c/p;->Z3(Ljava/lang/String;)V

    .line 201
    :cond_a
    iget-object v11, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v11, Le/a/b/b/c/p;

    if-eqz v11, :cond_d

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Lcom/truecaller/profile/data/dto/Company;->getOpenHours()Ljava/util/List;

    move-result-object v12

    goto :goto_5

    :cond_b
    move-object v12, v9

    :goto_5
    if-eqz v12, :cond_c

    goto :goto_6

    :cond_c
    move-object v12, v10

    :goto_6
    invoke-interface {v11, v12}, Le/a/b/b/c/p;->n7(Ljava/util/List;)V

    .line 202
    :cond_d
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/Company;->getBranding()Lcom/truecaller/profile/data/dto/Branding;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/Branding;->getImageUrls()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_10

    .line 203
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v7

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v12, 0x1

    if-ltz v12, :cond_f

    check-cast v13, Ljava/lang/String;

    .line 204
    iget-object v15, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v15, Le/a/b/b/c/p;

    if-eqz v15, :cond_e

    invoke-interface {v15, v12, v13}, Le/a/b/b/c/p;->s4(ILjava/lang/String;)V

    :cond_e
    move v12, v14

    goto :goto_7

    .line 205
    :cond_f
    invoke-static {}, Ls1/u/i;->N0()V

    throw v9

    .line 206
    :cond_10
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v11

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/BusinessData;->getTags()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_11

    move-object v10, v11

    .line 207
    :cond_11
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    const/4 v12, 0x1

    xor-int/2addr v11, v12

    if-eqz v11, :cond_12

    .line 208
    invoke-static {v10}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-eqz v10, :cond_12

    .line 209
    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    iget-object v13, v0, Le/a/b/b/c/q;->q:Le/a/g5/p;

    invoke-interface {v13, v10, v11}, Le/a/g5/p;->c(J)Le/a/b0/p/c;

    move-result-object v10

    if-eqz v10, :cond_12

    .line 210
    iget-object v11, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v11, Le/a/b/b/c/p;

    if-eqz v11, :cond_12

    invoke-interface {v11, v10}, Le/a/b/b/c/p;->y1(Le/a/b0/p/c;)V

    .line 211
    :cond_12
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Company;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 212
    new-instance v10, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;

    .line 213
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Address;->getStreet()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_13

    move-object v14, v11

    goto :goto_8

    :cond_13
    move-object v14, v5

    .line 214
    :goto_8
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Address;->getZipCode()Ljava/lang/String;

    move-result-object v15

    .line 215
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Address;->getCity()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_14

    move-object/from16 v16, v11

    goto :goto_9

    :cond_14
    move-object/from16 v16, v5

    .line 216
    :goto_9
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Address;->getCountry()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_15

    move-object/from16 v17, v11

    goto :goto_a

    :cond_15
    move-object/from16 v17, v5

    .line 217
    :goto_a
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Address;->getLatitude()Ljava/lang/Double;

    move-result-object v18

    .line 218
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Address;->getLongitude()Ljava/lang/Double;

    move-result-object v19

    move-object v13, v10

    .line 219
    invoke-direct/range {v13 .. v19}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 220
    invoke-virtual {v0, v10}, Le/a/b/b/c/q;->Jj(Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;)V

    :cond_16
    :goto_b
    if-eqz v8, :cond_17

    move v7, v12

    goto :goto_c

    :cond_17
    if-eqz v3, :cond_18

    goto :goto_c

    :cond_18
    move v7, v4

    .line 221
    :goto_c
    iput v7, v0, Le/a/b/b/c/q;->j:I

    .line 222
    iget-object v1, v0, Le/a/b/b/c/q;->n:Le/a/b0/e/f;

    invoke-interface {v1}, Le/a/b0/e/f;->d()Z

    move-result v1

    if-nez v1, :cond_19

    .line 223
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b/b/c/p;

    if-eqz v1, :cond_19

    invoke-interface {v1}, Le/a/b/b/c/p;->a2()V

    .line 224
    :cond_19
    iget v1, v0, Le/a/b/b/c/q;->j:I

    if-ne v1, v4, :cond_1a

    iget-object v1, v0, Le/a/b/b/c/q;->p:Le/a/u3/g;

    .line 225
    iget-object v3, v1, Le/a/u3/g;->g0:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x38

    aget-object v4, v4, v5

    invoke-virtual {v3, v1, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    .line 226
    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 227
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Le/a/b/b/c/p;->H3()V

    .line 228
    :cond_1a
    iget-object v0, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Le/a/b/m/v;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$c;

    invoke-direct {v1, v6}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$c;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->p:Landroid/app/ProgressDialog;

    return-void

    .line 230
    :cond_1b
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 231
    :cond_1c
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 232
    :cond_1d
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 233
    :cond_1e
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 234
    :cond_1f
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_20
    const-string v0, "accountSettings"

    .line 235
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_21
    invoke-static {v8}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 236
    :cond_22
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 237
    :cond_23
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 238
    :cond_24
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 239
    :cond_25
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 240
    :cond_26
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 241
    :cond_27
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_28
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 242
    :cond_29
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 243
    :cond_2a
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 244
    :cond_2b
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_2c
    const-string v0, "colorsAdapter"

    .line 245
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_2d
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 246
    :cond_2e
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 247
    :cond_2f
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 248
    :cond_30
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 249
    :cond_31
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_32
    const-string v0, "featuresRegistry"

    .line 250
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 251
    :cond_33
    invoke-static {v8}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 252
    :cond_34
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->a:Le/a/b/b/c/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/u2/a/a;->c()V

    .line 2
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final qa()Le/a/b/b/c/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->a:Le/a/b/b/c/q;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final ra()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->h:Ls1/w/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "uiCoroutineContext"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public s3(Ljava/lang/String;)V
    .locals 3

    const-string v0, "picture"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->n:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->j:Le/a/b/b/c/c;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v1, Le/a/b/b/c/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 5
    iget-object v0, v1, Le/a/b/b/c/c;->a:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    return-void

    :cond_0
    const-string p1, "picturesAdapter"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public s4(ILjava/lang/String;)V
    .locals 2

    const-string v0, "picture"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->n:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->j:Le/a/b/b/c/c;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v1, Le/a/b/b/c/c;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    return-void

    :cond_0
    const-string p1, "picturesAdapter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public t5(DD)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/truecaller/bizmon/R$id;->mapView:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->J(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.google.android.gms.maps.SupportMapFragment"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 2
    new-instance v7, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$o;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$o;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;DD)V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/maps/SupportMapFragment;->OA(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

.method public t8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "street"

    const-string v3, "city"

    const-string v5, "countryName"

    move-object v0, p1

    move-object v2, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/b/m/v;->d:Landroid/widget/TextView;

    const-string v3, "binding.addressEditText"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object p2, v4, p1

    const/4 p1, 0x2

    aput-object p3, v4, p1

    const/4 p1, 0x3

    aput-object p4, v4, p1

    const-string p1, ", "

    .line 2
    invoke-static {p1, v4}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz p1, :cond_0

    iget-object p1, p1, Le/a/b/m/v;->d:Landroid/widget/TextView;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final ta(Landroid/view/View;II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$d;

    invoke-direct {p3, p1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$d;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final ua(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->g:Ls1/w/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    new-instance v4, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;

    invoke-direct {v4, p0, p1, v2}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;Ljava/lang/String;Ls1/w/d;)V

    const/4 p1, 0x2

    const/4 v5, 0x0

    move-object v2, v3

    move-object v3, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    :cond_0
    const-string p1, "asyncCoroutineContext"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public final va(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-static {p1}, Le/a/e/a2;->x(I)D

    move-result-wide v0

    const-wide v2, 0x4055400000000000L    # 85.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    sget v0, Lcom/truecaller/bizmon/R$color;->business_profile_black:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/truecaller/bizmon/R$color;->business_profile_white:I

    .line 4
    :goto_1
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {p0, v0}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 7
    iget-object v3, v1, Le/a/b/m/v;->q:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    iget-object p1, v1, Le/a/b/m/v;->s:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 9
    iget-object p1, v1, Le/a/b/m/v;->e:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 10
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 11
    iget-object p1, v1, Le/a/b/m/v;->J:Landroidx/appcompat/widget/Toolbar;

    const-string v3, "toolbar"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Le/a/b/m/v;->J:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 13
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 14
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    move-object v2, v1

    .line 15
    :cond_2
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_3
    const-string p1, "binding"

    .line 16
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public w1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->M()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3
    const-class v1, Le/a/b/b/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    new-instance v3, Landroidx/fragment/app/FragmentManager$n;

    const/4 v4, -0x1

    invoke-direct {v3, v0, v1, v4, v2}, Landroidx/fragment/app/FragmentManager$n;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/FragmentManager;->B(Landroidx/fragment/app/FragmentManager$m;Z)V

    :cond_0
    return-void
.end method

.method public x1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->a:Le/a/b/b/c/q;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/b/b/c/p;->w1()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public y1(Le/a/b0/p/c;)V
    .locals 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p1, Le/a/b0/p/c;->a:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->o:Ljava/lang/Long;

    .line 3
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, v0, Le/a/b/m/v;->D:Lcom/truecaller/common/tag/TagView;

    .line 5
    invoke-virtual {v2, p1}, Lcom/truecaller/common/tag/TagView;->setTag(Le/a/b0/p/c;)V

    const-string v3, "this"

    .line 6
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 7
    iget-object v0, v0, Le/a/b/m/v;->E:Landroid/widget/TextView;

    .line 8
    iget-object p1, p1, Le/a/b0/p/c;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "binding"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
