.class public final Le/a/a/c/t5;
.super Le/a/b0/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/c/t5$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 #2\u00020\u0001:\u0001$B\u0007\u00a2\u0006\u0004\u0008\"\u0010\u0014J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\tJ\u0011\u0010\u000c\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\tJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006%"
    }
    d2 = {
        "Le/a/a/c/t5;",
        "Le/a/b0/a/a/a;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "ZA",
        "()Ljava/lang/String;",
        "YA",
        "XA",
        "WA",
        "",
        "QA",
        "()Ljava/lang/Integer;",
        "",
        "OA",
        "()Z",
        "aB",
        "()V",
        "bB",
        "Le/a/a/g1/b;",
        "l",
        "Le/a/a/g1/b;",
        "translateManager",
        "Le/a/a/c/s5;",
        "j",
        "Le/a/a/c/s5;",
        "messageCallback",
        "Le/a/a/i0;",
        "k",
        "Le/a/a/i0;",
        "settings",
        "<init>",
        "m",
        "a",
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
.field public static final m:Le/a/a/c/t5$a;


# instance fields
.field public j:Le/a/a/c/s5;

.field public k:Le/a/a/i0;

.field public l:Le/a/a/g1/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/a/c/t5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/a/c/t5$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/a/c/t5;->m:Le/a/a/c/t5$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/b0/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public OA()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public QA()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public WA()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120852

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public XA()Ljava/lang/String;
    .locals 2

    const v0, 0x7f120d2c

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.menu_download)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public YA()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "languageCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 2
    iget-object v2, p0, Le/a/a/c/t5;->l:Le/a/a/g1/b;

    if-eqz v2, :cond_5

    invoke-interface {v2, v0}, Le/a/a/g1/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/Message;

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    const v2, 0x7f1201c9

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v4

    .line 5
    invoke-virtual {p0, v2, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const v2, 0x7f1201cb

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v4

    .line 6
    invoke-virtual {p0, v2, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_2
    iget-object v0, p0, Le/a/a/c/t5;->k:Le/a/a/i0;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Le/a/a/i0;->j2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_3

    const-string v0, "\n"

    .line 8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1201c8

    .line 9
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_4
    const-string v0, "settings"

    .line 11
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "translateManager"

    .line 12
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public ZA()Ljava/lang/String;
    .locals 2

    const v0, 0x7f1201ca

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.Conve\u2026ownloadTranslationsTitle)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public aB()V
    .locals 0

    return-void
.end method

.method public bB()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "languageCode"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "message"

    if-eqz v3, :cond_1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 3
    :goto_1
    iget-object v5, p0, Le/a/a/c/t5;->k:Le/a/a/i0;

    const-string v6, "settings"

    if-eqz v5, :cond_8

    invoke-interface {v5}, Le/a/a/i0;->o0()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Le/a/a/c/t5;->k:Le/a/a/i0;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Le/a/a/i0;->j2()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ask"

    invoke-static {v5, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    iget-object v1, p0, Le/a/a/c/t5;->k:Le/a/a/i0;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Le/a/a/i0;->j2()Ljava/lang/String;

    move-result-object v1

    const-string v4, "wifiOrMobile"

    invoke-static {v1, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 5
    iget-object v4, p0, Le/a/a/c/t5;->j:Le/a/a/c/s5;

    if-eqz v4, :cond_3

    invoke-interface {v4, v0, v1, v3}, Le/a/a/c/s5;->Wn(Ljava/lang/String;ZLcom/truecaller/messaging/data/types/Message;)V

    goto :goto_3

    :cond_3
    const-string v0, "messageCallback"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_4
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_5
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    if-eqz v5, :cond_7

    sget-object v6, Le/a/a/c/h;->e:Le/a/a/c/h$c;

    const-string v7, "it"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "fragmentManager"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v6, Le/a/a/c/h;

    invoke-direct {v6}, Le/a/a/c/h;-><init>()V

    .line 11
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 12
    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v7, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 14
    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {v6, v5, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void

    .line 16
    :cond_8
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Le/a/b0/a/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    const-string v0, "(context?.applicationCon\u2026GraphHolder).objectsGraph"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    const-string v1, "graph.settings()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/a/c/t5;->k:Le/a/a/i0;

    .line 4
    invoke-interface {p1}, Le/a/j2;->B6()Le/a/a/g1/b;

    move-result-object p1

    const-string v0, "graph.translatorModel()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/a/c/t5;->l:Le/a/a/g1/b;

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Le/a/a/c/s5;

    iput-object p1, p0, Le/a/a/c/t5;->j:Le/a/a/c/s5;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.truecaller.messaging.conversation.DownloadTranslationsDialogCallback"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Parent fragment should implement this interface"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
