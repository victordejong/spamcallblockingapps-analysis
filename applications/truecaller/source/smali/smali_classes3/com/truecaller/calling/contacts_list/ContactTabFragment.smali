.class public abstract Lcom/truecaller/calling/contacts_list/ContactTabFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Le/a/h/f/z;
.implements Le/a/h/f/l0;
.implements Le/a/h/f/y;
.implements Ln3/v/a0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ee\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0008\u00a2\u0006\u0005\u0008\u00c5\u0001\u0010\u0008J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J-\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J!\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00172\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH&\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001b\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020!0 H&\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0008J\u000f\u0010%\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0008J\u000f\u0010&\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0008J\u000f\u0010\'\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\'\u0010\u001fJ\u000f\u0010(\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008(\u0010\u0008J\u000f\u0010)\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008)\u0010\u0008J\u001f\u0010-\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020+H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00080\u0010\u000cJ\u001f\u00102\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00084\u0010\u0008J\u0017\u00107\u001a\u00020\u00062\u0006\u00106\u001a\u000205H\u0016\u00a2\u0006\u0004\u00087\u00108J\u0017\u00109\u001a\u00020\u00062\u0006\u00106\u001a\u000205H\u0016\u00a2\u0006\u0004\u00089\u00108J\u0017\u0010:\u001a\u00020\u00062\u0006\u00106\u001a\u000205H\u0016\u00a2\u0006\u0004\u0008:\u00108J\u0017\u0010;\u001a\u00020\u00062\u0006\u00106\u001a\u000205H\u0016\u00a2\u0006\u0004\u0008;\u00108J\u000f\u0010<\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008<\u0010\u0008J\r\u0010=\u001a\u00020\u0006\u00a2\u0006\u0004\u0008=\u0010\u0008J\u000f\u0010>\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008>\u0010\u0008R\u0016\u0010B\u001a\u00020?8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\"\u0010J\u001a\u00020C8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\"\u0010R\u001a\u00020K8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR)\u0010V\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020!0 8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010#R\"\u0010^\u001a\u00020W8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008X\u0010Y\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R\u0016\u0010b\u001a\u00020_8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR(\u0010k\u001a\u00020c8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008d\u0010e\u0012\u0004\u0008j\u0010\u0008\u001a\u0004\u0008f\u0010g\"\u0004\u0008h\u0010iR\u0016\u0010o\u001a\u00020l8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR(\u0010x\u001a\u00020p8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008q\u0010r\u0012\u0004\u0008w\u0010\u0008\u001a\u0004\u0008s\u0010t\"\u0004\u0008u\u0010vR#\u0010\u0080\u0001\u001a\u00020y8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008z\u0010{\u001a\u0004\u0008|\u0010}\"\u0004\u0008~\u0010\u007fR*\u0010\u0088\u0001\u001a\u00030\u0081\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001\u001a\u0006\u0008\u0084\u0001\u0010\u0085\u0001\"\u0006\u0008\u0086\u0001\u0010\u0087\u0001R*\u0010\u0090\u0001\u001a\u00030\u0089\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u008a\u0001\u0010\u008b\u0001\u001a\u0006\u0008\u008c\u0001\u0010\u008d\u0001\"\u0006\u0008\u008e\u0001\u0010\u008f\u0001R*\u0010\u0098\u0001\u001a\u00030\u0091\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001\"\u0006\u0008\u0096\u0001\u0010\u0097\u0001R*\u0010\u00a0\u0001\u001a\u00030\u0099\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u009a\u0001\u0010\u009b\u0001\u001a\u0006\u0008\u009c\u0001\u0010\u009d\u0001\"\u0006\u0008\u009e\u0001\u0010\u009f\u0001R*\u0010\u00a8\u0001\u001a\u00030\u00a1\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R(\u0010\u00ac\u0001\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t8\u0002@BX\u0082\u000e\u00a2\u0006\u000f\n\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001\"\u0005\u0008\u00ab\u0001\u0010\u000cR*\u0010\u00b4\u0001\u001a\u00030\u00ad\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u00ae\u0001\u0010\u00af\u0001\u001a\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001\"\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R-\u0010\u00b9\u0001\u001a\u00020c8\u0006@\u0006X\u0087.\u00a2\u0006\u001c\n\u0005\u0008\u00b5\u0001\u0010e\u0012\u0005\u0008\u00b8\u0001\u0010\u0008\u001a\u0005\u0008\u00b6\u0001\u0010g\"\u0005\u0008\u00b7\u0001\u0010iR\u0019\u0010\u00bc\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001R*\u0010\u00c4\u0001\u001a\u00030\u00bd\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u00be\u0001\u0010\u00bf\u0001\u001a\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001\"\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001\u00a8\u0006\u00c6\u0001"
    }
    d2 = {
        "Lcom/truecaller/calling/contacts_list/ContactTabFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Le/a/h/f/z;",
        "Le/a/h/f/l0;",
        "Le/a/h/f/y;",
        "Ln3/v/a0;",
        "Ls1/s;",
        "SA",
        "()V",
        "",
        "value",
        "RA",
        "(Z)V",
        "Landroid/content/Context;",
        "context",
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
        "Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;",
        "PA",
        "()Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;",
        "Ls1/k;",
        "",
        "OA",
        "()Ls1/k;",
        "cn",
        "a0",
        "b0",
        "Zh",
        "onStarted",
        "onStopped",
        "phonebookFilter",
        "",
        "newState",
        "Jf",
        "(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;I)V",
        "scrollDown",
        "fq",
        "isEmpty",
        "Ms",
        "(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Z)V",
        "H2",
        "Lcom/truecaller/data/entity/Contact;",
        "contact",
        "Ii",
        "(Lcom/truecaller/data/entity/Contact;)V",
        "F2",
        "x2",
        "hw",
        "zf",
        "QA",
        "onDestroyView",
        "Le/a/h/f/i0$a;",
        "r",
        "Le/a/h/f/i0$a;",
        "adConfig",
        "Le/a/p5/c;",
        "m",
        "Le/a/p5/c;",
        "getClock",
        "()Le/a/p5/c;",
        "setClock",
        "(Le/a/p5/c;)V",
        "clock",
        "Le/a/z4/a;",
        "j",
        "Le/a/z4/a;",
        "getAdsSettings",
        "()Le/a/z4/a;",
        "setAdsSettings",
        "(Le/a/z4/a;)V",
        "adsSettings",
        "t",
        "Ls1/g;",
        "getEmptyPair",
        "emptyPair",
        "Le/a/y/c/b;",
        "i",
        "Le/a/y/c/b;",
        "getFlashManager",
        "()Le/a/y/c/b;",
        "setFlashManager",
        "(Le/a/y/c/b;)V",
        "flashManager",
        "",
        "s",
        "J",
        "adsInvalidationDelay",
        "Le/a/h/b/n;",
        "b",
        "Le/a/h/b/n;",
        "getContactsSettingsObserver",
        "()Le/a/h/b/n;",
        "setContactsSettingsObserver",
        "(Le/a/h/b/n;)V",
        "getContactsSettingsObserver$annotations",
        "contactsSettingsObserver",
        "Le/a/h/f/q;",
        "q",
        "Le/a/h/f/q;",
        "contactsListView",
        "Le/a/l4/c;",
        "l",
        "Le/a/l4/c;",
        "getAvailabilityManager",
        "()Le/a/l4/c;",
        "setAvailabilityManager",
        "(Le/a/l4/c;)V",
        "getAvailabilityManager$annotations",
        "availabilityManager",
        "Le/a/h/f/x;",
        "g",
        "Le/a/h/f/x;",
        "getPresenter",
        "()Le/a/h/f/x;",
        "setPresenter",
        "(Le/a/h/f/x;)V",
        "presenter",
        "Le/a/u3/g;",
        "k",
        "Le/a/u3/g;",
        "getFeatureRegistry",
        "()Le/a/u3/g;",
        "setFeatureRegistry",
        "(Le/a/u3/g;)V",
        "featureRegistry",
        "Le/a/i/d/b;",
        "n",
        "Le/a/i/d/b;",
        "getAdCounter",
        "()Le/a/i/d/b;",
        "setAdCounter",
        "(Le/a/i/d/b;)V",
        "adCounter",
        "Le/a/h/f/f;",
        "c",
        "Le/a/h/f/f;",
        "getBackupPromoPresenter",
        "()Le/a/h/f/f;",
        "setBackupPromoPresenter",
        "(Le/a/h/f/f;)V",
        "backupPromoPresenter",
        "Le/a/h/f/i0;",
        "f",
        "Le/a/h/f/i0;",
        "getMultiAdsFactory",
        "()Le/a/h/f/i0;",
        "setMultiAdsFactory",
        "(Le/a/h/f/i0;)V",
        "multiAdsFactory",
        "Le/a/d/c0/s1;",
        "h",
        "Le/a/d/c0/s1;",
        "getVoipUtil",
        "()Le/a/d/c0/s1;",
        "setVoipUtil",
        "(Le/a/d/c0/s1;)V",
        "voipUtil",
        "o",
        "Z",
        "setVisible",
        "visible",
        "Le/a/h/f/g0;",
        "d",
        "Le/a/h/f/g0;",
        "getItemPresenterFactory",
        "()Le/a/h/f/g0;",
        "setItemPresenterFactory",
        "(Le/a/h/f/g0;)V",
        "itemPresenterFactory",
        "a",
        "getContactsListObserver",
        "setContactsListObserver",
        "getContactsListObserver$annotations",
        "contactsListObserver",
        "p",
        "Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;",
        "phoneBookFilter",
        "Lcom/truecaller/calling/contacts_list/ContactsHolder;",
        "e",
        "Lcom/truecaller/calling/contacts_list/ContactsHolder;",
        "getContactHolder",
        "()Lcom/truecaller/calling/contacts_list/ContactsHolder;",
        "setContactHolder",
        "(Lcom/truecaller/calling/contacts_list/ContactsHolder;)V",
        "contactHolder",
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
.field public a:Le/a/h/b/n;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/h/b/n;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/h/f/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/h/f/g0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Lcom/truecaller/calling/contacts_list/ContactsHolder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/h/f/i0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/h/f/x;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Le/a/d/c0/s1;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Le/a/y/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Le/a/z4/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public k:Le/a/u3/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public l:Le/a/l4/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public m:Le/a/p5/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public n:Le/a/i/d/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public o:Z

.field public p:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

.field public q:Le/a/h/f/q;

.field public r:Le/a/h/f/i0$a;

.field public s:J

.field public final t:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/calling/contacts_list/ContactTabFragment$a;

    invoke-direct {v0, p0}, Lcom/truecaller/calling/contacts_list/ContactTabFragment$a;-><init>(Lcom/truecaller/calling/contacts_list/ContactTabFragment;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->t:Ls1/g;

    return-void
.end method


# virtual methods
.method public F2(Lcom/truecaller/data/entity/Contact;)V
    .locals 3

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->h:Le/a/d/c0/s1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    const-string v2, "contacts"

    invoke-interface {v0, v1, p1, v2}, Le/a/d/c0/s1;->h(Ln3/r/a/l;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string p1, "voipUtil"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public H2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->q:Le/a/h/f/q;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/h/f/q;->k:Le/a/o2/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void

    :cond_0
    const-string v0, "contactsListView"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public Ii(Lcom/truecaller/data/entity/Contact;)V
    .locals 14

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "activity ?: return"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Le/a/h/s0/c;->f:Le/a/h/s0/c$a;

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v4

    const-string v0, "contact.numbers"

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x5b8

    const-string v11, "contacts"

    move-object v3, p1

    .line 4
    invoke-static/range {v1 .. v13}, Le/a/h/s0/c$a;->a(Le/a/h/s0/c$a;Ln3/r/a/l;Lcom/truecaller/data/entity/Contact;Ljava/util/List;ZZZZZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;Ljava/lang/String;ZI)V

    :cond_0
    return-void
.end method

.method public Jf(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;I)V
    .locals 1

    const-string v0, "phonebookFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->RA(Z)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->RA(Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->RA(Z)V

    :goto_0
    return-void
.end method

.method public Ms(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Z)V
    .locals 2

    const-string v0, "phonebookFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->p:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-ne p1, v0, :cond_2

    .line 2
    iget-object p1, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->q:Le/a/h/f/q;

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/k;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "emptyText"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p1, Le/a/h/f/q;->k:Le/a/o2/f;

    .line 6
    iget-object v1, v1, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {v1, p2}, Le/a/o2/a;->u(Z)V

    .line 7
    iget-object v1, p1, Le/a/h/f/q;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 8
    invoke-static {v1, p2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 9
    iget-object p2, p1, Le/a/h/f/q;->b:Landroid/view/View;

    if-eqz p2, :cond_0

    const v1, 0x7f0a06a4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 10
    iget-object v1, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 11
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_0
    iget-object p1, p1, Le/a/h/f/q;->b:Landroid/view/View;

    if-eqz p1, :cond_2

    const p2, 0x7f0a06a3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 13
    iget-object p2, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 14
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p1, "contactsListView"

    .line 15
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p1, "phoneBookFilter"

    .line 16
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract OA()Ls1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract PA()Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;
.end method

.method public final QA()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->SA()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->q:Le/a/h/f/q;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Le/a/h/f/q;->s:Le/a/i/d/b;

    invoke-interface {v0}, Le/a/i/d/b;->E3()V

    return-void

    :cond_1
    const-string v0, "contactsListView"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final RA(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->r:Le/a/h/f/i0$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/h/f/i0$a;->a:Le/a/i/f0/c;

    .line 3
    invoke-interface {v0, p1}, Le/a/i/f0/c;->b(Z)V

    return-void

    :cond_0
    const-string p1, "adConfig"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final SA()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Ln3/v/u;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ln3/v/c0;

    .line 2
    iget-object v0, v0, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 3
    sget-object v1, Ln3/v/u$b;->d:Ln3/v/u$b;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.truecaller.calling.contacts_list.ContactsTabsContainerFragment"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Le/a/h/f/b;

    if-eqz v0, :cond_1

    .line 6
    iget-boolean v0, v3, Le/a/h/f/b;->f:Z

    if-eqz v0, :cond_1

    const-string v0, "fragment"

    .line 7
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3}, Le/a/h/f/b;->OA()Ls1/a/c;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 9
    :goto_1
    iget-boolean v3, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->o:Z

    if-ne v3, v0, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    iput-boolean v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->o:Z

    const-string v3, "adConfig"

    const-string v4, "presenter"

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->g:Le/a/h/f/x;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/h/f/m0;->I1()V

    .line 12
    invoke-virtual {p0, v2}, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->RA(Z)V

    .line 13
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->r:Le/a/h/f/i0$a;

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, v0, Le/a/h/f/i0$a;->a:Le/a/i/f0/c;

    .line 15
    invoke-interface {v0}, Le/a/i/f0/c;->d()V

    .line 16
    iget-object v1, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->q:Le/a/h/f/q;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Le/a/i/f0/c;->g()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/a/h/f/q;->a(Ljava/util/Set;)V

    goto :goto_2

    :cond_3
    const-string v0, "contactsListView"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 17
    :cond_4
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 18
    :cond_5
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->g:Le/a/h/f/x;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Le/a/h/f/m0;->Y()V

    .line 20
    invoke-virtual {p0, v1}, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->RA(Z)V

    .line 21
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->r:Le/a/h/f/i0$a;

    if-eqz v0, :cond_8

    .line 22
    iget-object v0, v0, Le/a/h/f/i0$a;->a:Le/a/i/f0/c;

    .line 23
    iget-wide v1, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->s:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_7

    .line 24
    invoke-interface {v0}, Le/a/i/f0/c;->f()V

    goto :goto_2

    .line 25
    :cond_7
    invoke-interface {v0, v1, v2}, Le/a/i/f0/c;->c(J)V

    :goto_2
    return-void

    .line 26
    :cond_8
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 27
    :cond_9
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5
.end method

.method public Zh()Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->PA()Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    move-result-object v0

    return-object v0
.end method

.method public a0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->q:Le/a/h/f/q;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/h/f/q;->h:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "loadingView.value"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "contactsListView"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public b0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->q:Le/a/h/f/q;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/h/f/q;->h:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "loadingView.value"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "contactsListView"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public cn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->q:Le/a/h/f/q;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/a/h/f/q;->k:Le/a/o2/f;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 3
    iget-object v0, v0, Le/a/h/f/q;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/calling/contacts_list/FastScroller;

    invoke-virtual {v0}, Lcom/truecaller/calling/contacts_list/FastScroller;->a()V

    return-void

    :cond_0
    const-string v0, "contactsListView"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public fq(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    instance-of v1, v0, Le/a/b0/a/w/c$a;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/b0/a/w/c$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Le/a/b0/a/w/c$a;->v7(Z)V

    :cond_1
    return-void
.end method

.method public hw(Lcom/truecaller/data/entity/Contact;)V
    .locals 14

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Le/a/h/s0/c;->f:Le/a/h/s0/c$a;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v4

    const-string v0, "contact.numbers"

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "contacts"

    const/4 v12, 0x0

    const/16 v13, 0x5e0

    move-object v3, p1

    .line 4
    invoke-static/range {v1 .. v13}, Le/a/h/s0/c$a;->a(Le/a/h/s0/c$a;Ln3/r/a/l;Lcom/truecaller/data/entity/Contact;Ljava/util/List;ZZZZZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;Ljava/lang/String;ZI)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    sget-object p1, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {p1}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Le/a/l2;->b()Le/a/h/f/o;

    move-result-object p1

    .line 4
    check-cast p1, Le/a/t1$k;

    .line 5
    iget-object v0, p1, Le/a/t1$k;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/b/n;

    .line 6
    iput-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->a:Le/a/h/b/n;

    .line 7
    iget-object v0, p1, Le/a/t1$k;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/b/n;

    .line 8
    iput-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->b:Le/a/h/b/n;

    .line 9
    new-instance v0, Le/a/h/f/f;

    iget-object v1, p1, Le/a/t1$k;->m:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/h/f/c;

    iget-object v1, p1, Le/a/t1$k;->m:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Le/a/h/f/e$b;

    iget-object v1, p1, Le/a/t1$k;->a:Le/a/t1;

    .line 10
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 11
    invoke-interface {v1}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v4

    const-string v9, "Cannot return null from a non-@Nullable component method"

    .line 12
    invoke-static {v4, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iget-object v1, p1, Le/a/t1$k;->n:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Le/a/n/m;

    iget-object v1, p1, Le/a/t1$k;->a:Le/a/t1;

    .line 14
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 15
    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v6

    .line 16
    invoke-static {v6, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iget-object v1, p1, Le/a/t1$k;->a:Le/a/t1;

    .line 18
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 19
    invoke-interface {v1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v7

    .line 20
    invoke-static {v7, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iget-object v1, p1, Le/a/t1$k;->a:Le/a/t1;

    .line 22
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 23
    invoke-interface {v1}, Le/a/j2;->z7()Le/a/n/e;

    move-result-object v8

    .line 24
    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v0

    .line 25
    invoke-direct/range {v1 .. v8}, Le/a/h/f/f;-><init>(Le/a/h/f/c;Le/a/h/f/e$b;Lcom/truecaller/settings/CallingSettings;Le/a/n/m;Le/a/q2/a;Le/a/p5/c0;Le/a/n/e;)V

    .line 26
    iput-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->c:Le/a/h/f/f;

    .line 27
    iget-object v0, p1, Le/a/t1$k;->p:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/f/g0;

    .line 28
    iput-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->d:Le/a/h/f/g0;

    .line 29
    iget-object v0, p1, Le/a/t1$k;->m:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/calling/contacts_list/ContactsHolder;

    .line 30
    iput-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->e:Lcom/truecaller/calling/contacts_list/ContactsHolder;

    .line 31
    iget-object v0, p1, Le/a/t1$k;->r:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/f/i0;

    .line 32
    iput-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->f:Le/a/h/f/i0;

    .line 33
    iget-object v0, p1, Le/a/t1$k;->m:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/f/x;

    .line 34
    iput-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->g:Le/a/h/f/x;

    .line 35
    iget-object v0, p1, Le/a/t1$k;->a:Le/a/t1;

    .line 36
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 37
    invoke-interface {v0}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object v0

    .line 38
    invoke-static {v0, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    iput-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->h:Le/a/d/c0/s1;

    .line 40
    iget-object v0, p1, Le/a/t1$k;->a:Le/a/t1;

    .line 41
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 42
    invoke-interface {v0}, Le/a/j2;->A3()Le/a/y/c/b;

    move-result-object v0

    .line 43
    invoke-static {v0, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    iput-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->i:Le/a/y/c/b;

    .line 45
    iget-object v0, p1, Le/a/t1$k;->a:Le/a/t1;

    .line 46
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 47
    invoke-interface {v0}, Le/a/j2;->u5()Le/a/z4/a;

    move-result-object v0

    .line 48
    invoke-static {v0, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iput-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->j:Le/a/z4/a;

    .line 50
    iget-object v0, p1, Le/a/t1$k;->a:Le/a/t1;

    .line 51
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 52
    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    .line 53
    invoke-static {v0, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iput-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->k:Le/a/u3/g;

    .line 55
    iget-object v0, p1, Le/a/t1$k;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l4/c;

    .line 56
    iput-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->l:Le/a/l4/c;

    .line 57
    iget-object v0, p1, Le/a/t1$k;->a:Le/a/t1;

    .line 58
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 59
    invoke-interface {v0}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v0

    .line 60
    invoke-static {v0, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iput-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->m:Le/a/p5/c;

    .line 62
    iget-object p1, p1, Le/a/t1$k;->a:Le/a/t1;

    .line 63
    iget-object p1, p1, Le/a/t1;->b:Le/a/j2;

    .line 64
    invoke-interface {p1}, Le/a/j2;->l2()Le/a/i/d/b;

    move-result-object p1

    .line 65
    invoke-static {p1, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->n:Le/a/i/d/b;

    .line 67
    iget-object p1, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->g:Le/a/h/f/x;

    const-string v0, "presenter"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    .line 68
    iget-object p1, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->g:Le/a/h/f/x;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Le/a/u2/a/f;->F3(Ljava/lang/Object;)V

    .line 69
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->j:Le/a/z4/a;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    const-string v3, "adFeatureRetentionTime"

    invoke-interface {v0, v3, v1, v2}, Le/a/z4/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->s:J

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Ln3/v/u;

    move-result-object p1

    invoke-virtual {p1, p0}, Ln3/v/u;->a(Ln3/v/a0;)V

    return-void

    :cond_0
    const-string p1, "adsSettings"

    .line 71
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_1
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_2
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1
    invoke-static {p1, p3}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d00d2

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->r:Le/a/h/f/i0$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, v0, Le/a/h/f/i0$a;->a:Le/a/i/f0/c;

    .line 4
    invoke-interface {v0}, Le/a/i/f0/c;->a()V

    .line 5
    invoke-interface {v0, v1}, Le/a/i/f0/c;->i(Le/a/i/m;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->g:Le/a/h/f/x;

    const-string v2, "presenter"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    .line 7
    iget-object v0, p0, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->g:Le/a/h/f/x;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/f;->xb()V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "adConfig"

    .line 9
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final onStarted()V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_START:Ln3/v/u$a;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->SA()V

    return-void
.end method

.method public final onStopped()V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_STOP:Ln3/v/u$a;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->SA()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v12, p0

    const-string v0, "view"

    move-object/from16 v4, p1

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->PA()Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    move-result-object v0

    iput-object v0, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->p:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    .line 2
    iget-object v0, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->g:Le/a/h/f/x;

    const-string v13, "presenter"

    if-eqz v0, :cond_10

    .line 3
    iget-object v1, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->a:Le/a/h/b/n;

    if-eqz v1, :cond_f

    .line 4
    new-instance v2, Lcom/truecaller/calling/dialer/LifecycleAwareCondition;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Ln3/v/u;

    move-result-object v3

    const-string v5, "lifecycle"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ln3/v/u$b;->d:Ln3/v/u$b;

    invoke-direct {v2, v3, v6}, Lcom/truecaller/calling/dialer/LifecycleAwareCondition;-><init>(Ln3/v/u;Ln3/v/u$b;)V

    invoke-interface {v1, v2}, Le/a/h/b/n;->a(Le/a/h/b/l;)V

    .line 5
    invoke-interface {v0, v1}, Le/a/h/f/x;->l8(Le/a/h/b/r;)V

    .line 6
    iget-object v0, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->g:Le/a/h/f/x;

    if-eqz v0, :cond_e

    .line 7
    iget-object v1, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->b:Le/a/h/b/n;

    if-eqz v1, :cond_d

    .line 8
    new-instance v2, Lcom/truecaller/calling/dialer/LifecycleAwareCondition;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Ln3/v/u;

    move-result-object v3

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v6}, Lcom/truecaller/calling/dialer/LifecycleAwareCondition;-><init>(Ln3/v/u;Ln3/v/u$b;)V

    invoke-interface {v1, v2}, Le/a/h/b/n;->a(Le/a/h/b/l;)V

    .line 9
    invoke-interface {v0, v1}, Le/a/h/f/x;->of(Le/a/h/b/r;)V

    .line 10
    iget-object v0, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->f:Le/a/h/f/i0;

    if-eqz v0, :cond_c

    iget-object v1, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->p:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    const-string v2, "phoneBookFilter"

    if-eqz v1, :cond_b

    invoke-interface {v0, v1}, Le/a/h/f/i0;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Le/a/h/f/i0$a;

    move-result-object v0

    iput-object v0, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->r:Le/a/h/f/i0$a;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {v12, v0}, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->RA(Z)V

    .line 12
    iget-object v0, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->r:Le/a/h/f/i0$a;

    const-string v15, "adConfig"

    if-eqz v0, :cond_a

    .line 13
    iget-object v9, v0, Le/a/h/f/i0$a;->b:Le/a/i/d/x;

    .line 14
    new-instance v11, Le/a/h/f/q;

    .line 15
    iget-object v5, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->c:Le/a/h/f/f;

    if-eqz v5, :cond_9

    .line 16
    iget-object v6, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->p:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    if-eqz v6, :cond_8

    .line 17
    iget-object v8, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->d:Le/a/h/f/g0;

    if-eqz v8, :cond_7

    .line 18
    iget-object v7, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->e:Lcom/truecaller/calling/contacts_list/ContactsHolder;

    if-eqz v7, :cond_6

    .line 19
    iget-object v1, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->l:Le/a/l4/c;

    if-eqz v1, :cond_5

    .line 20
    iget-object v2, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->m:Le/a/p5/c;

    if-eqz v2, :cond_4

    .line 21
    iget-object v10, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->k:Le/a/u3/g;

    if-eqz v10, :cond_3

    .line 22
    iget-object v3, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->n:Le/a/i/d/b;

    if-eqz v3, :cond_2

    move-object v0, v11

    move-object/from16 v16, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v14, v11

    move-object/from16 v11, v16

    .line 23
    invoke-direct/range {v0 .. v11}, Le/a/h/f/q;-><init>(Le/a/l4/c;Le/a/p5/c;Le/a/h/f/l0;Landroid/view/View;Le/a/h/f/d;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder;Le/a/h/f/g0;Le/a/i/d/x;Le/a/u3/g;Le/a/i/d/b;)V

    iput-object v14, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->q:Le/a/h/f/q;

    .line 24
    iget-object v0, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->r:Le/a/h/f/i0$a;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, v0, Le/a/h/f/i0$a;->a:Le/a/i/f0/c;

    .line 26
    new-instance v1, Le/a/h/f/m;

    invoke-direct {v1, v14, v0}, Le/a/h/f/m;-><init>(Le/a/h/f/q;Le/a/i/f0/c;)V

    .line 27
    invoke-interface {v0, v1}, Le/a/i/f0/c;->i(Le/a/i/m;)V

    .line 28
    iget-object v0, v12, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->g:Le/a/h/f/x;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h/f/x;->Ob()V

    return-void

    :cond_0
    invoke-static {v13}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 29
    invoke-static {v15}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    const-string v1, "adCounter"

    .line 30
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    const-string v1, "featureRegistry"

    .line 31
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    const-string v1, "clock"

    .line 32
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x0

    const-string v1, "availabilityManager"

    .line 33
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    const-string v1, "contactHolder"

    .line 34
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v0, 0x0

    const-string v1, "itemPresenterFactory"

    .line 35
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v0, 0x0

    .line 36
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v0, 0x0

    const-string v1, "backupPromoPresenter"

    .line 37
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x0

    .line 38
    invoke-static {v15}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v0, 0x0

    .line 39
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    const-string v1, "multiAdsFactory"

    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v0, 0x0

    const-string v1, "contactsSettingsObserver"

    .line 40
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x0

    .line 41
    invoke-static {v13}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/4 v0, 0x0

    const-string v1, "contactsListObserver"

    .line 42
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/4 v0, 0x0

    .line 43
    invoke-static {v13}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public x2(Lcom/truecaller/data/entity/Contact;)V
    .locals 11

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/v/p/n;->a:Le/a/v/p/n;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v10, "requireContext()"

    invoke-static {v2, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/truecaller/details_view/analytics/SourceType;->Contacts:Lcom/truecaller/details_view/analytics/SourceType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x60

    move-object v1, v0

    move-object v3, p1

    .line 3
    invoke-static/range {v1 .. v9}, Le/a/v/p/n;->c(Le/a/v/p/n;Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;ZZLjava/lang/Boolean;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Le/a/v/p/n;->e(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public zf()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Le/a/n/c;

    invoke-direct {v0}, Le/a/n/c;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Le/a/n/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
