.class public final Lcom/truecaller/sdk/utils/TcInfoContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/sdk/utils/TcInfoContentProvider$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0018\u00002\u00020\u0001:\u0001+B\u0007\u00a2\u0006\u0004\u00081\u00102J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J#\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ;\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J1\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015JM\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ=\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001fR\u0016\u0010\"\u001a\u00020\u00058\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010$\u001a\u00020\u00058\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008#\u0010!R\u0016\u0010&\u001a\u00020\u00058\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010!R\u0016\u0010(\u001a\u00020\u00058\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\'\u0010!R\u0016\u0010*\u001a\u00020\u00058\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008)\u0010!R\"\u00100\u001a\u00020\u00058\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008+\u0010!\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/\u00a8\u00063"
    }
    d2 = {
        "Lcom/truecaller/sdk/utils/TcInfoContentProvider;",
        "Landroid/content/ContentProvider;",
        "",
        "onCreate",
        "()Z",
        "Landroid/net/Uri;",
        "uri",
        "Landroid/content/ContentValues;",
        "values",
        "insert",
        "(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;",
        "",
        "selection",
        "",
        "selectionArgs",
        "",
        "update",
        "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I",
        "delete",
        "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I",
        "getType",
        "(Landroid/net/Uri;)Ljava/lang/String;",
        "projection",
        "sortOrder",
        "Landroid/database/Cursor;",
        "query",
        "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;",
        "Landroid/os/Bundle;",
        "queryArgs",
        "Landroid/os/CancellationSignal;",
        "cancellationSignal",
        "(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;",
        "f",
        "Landroid/net/Uri;",
        "oAuthBlacklistedDevicesUri",
        "b",
        "accountStateLegacyUri",
        "d",
        "oAuthUri",
        "c",
        "bottomSheetUri",
        "e",
        "oneTapUri",
        "a",
        "getAccountStateUri",
        "()Landroid/net/Uri;",
        "setAccountStateUri",
        "(Landroid/net/Uri;)V",
        "accountStateUri",
        "<init>",
        "()V",
        "sdk-internal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Landroid/net/Uri;

.field public c:Landroid/net/Uri;

.field public d:Landroid/net/Uri;

.field public e:Landroid/net/Uri;

.field public f:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p2, "uri"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "vnd.android.cursor.item/"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const-string p2, "uri"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 8

    const-string v0, "content://"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/truecaller/sdk/utils/TcInfoContentProvider;

    invoke-static {v2, v3}, Le/a/b0/i/f/b;->f(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProviderUtil.getAuthorit\u2026(context, this.javaClass)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ";"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-static {v2, v5, v6, v6, v7}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v5, Lcom/truecaller/sdk/utils/TcInfoContentProvider;

    invoke-static {v2, v5}, Le/a/b0/i/f/b;->f(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6, v6, v7}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "tcAccountState"

    .line 3
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v4, "Uri.withAppendedPath(leg\u2026eUri, ACCOUNT_STATE_PATH)"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/sdk/utils/TcInfoContentProvider;->b:Landroid/net/Uri;

    .line 4
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Uri.withAppendedPath(baseUri, ACCOUNT_STATE_PATH)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/sdk/utils/TcInfoContentProvider;->a:Landroid/net/Uri;

    const-string v1, "tcBottomSheet"

    .line 5
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Uri.withAppendedPath(baseUri, BOTTOM_SHEET_PATH)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/sdk/utils/TcInfoContentProvider;->c:Landroid/net/Uri;

    const-string v1, "tcOAuth"

    .line 6
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Uri.withAppendedPath(baseUri, OAUTH_PATH)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/sdk/utils/TcInfoContentProvider;->d:Landroid/net/Uri;

    const-string v1, "tc1Tap"

    .line 7
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Uri.withAppendedPath(baseUri, ONE_TAP_PATH)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/sdk/utils/TcInfoContentProvider;->e:Landroid/net/Uri;

    const-string v1, "tcOAuthBlacklistedDevice"

    .line 8
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.withAppendedPath(bas\u2026BLACKLISTED_DEVICES_PATH)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/sdk/utils/TcInfoContentProvider;->f:Landroid/net/Uri;

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6

    const-string p3, "uri"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/truecaller/sdk/utils/TcInfoContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    const-string p2, "uri"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    instance-of p4, p2, Le/a/b0/g/a;

    if-nez p4, :cond_1

    move-object p2, p3

    :cond_1
    check-cast p2, Le/a/b0/g/a;

    if-eqz p2, :cond_15

    .line 2
    const-class p4, Lcom/truecaller/sdk/utils/TcInfoContentProvider$a;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Le/q/f/a/d/a;->F0(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p5

    invoke-static {p5, p4}, Le/q/f/a/d/a;->z0(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    const-string p5, "EntryPointAccessors.from\u2026e, Injection::class.java)"

    .line 4
    invoke-static {p4, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lcom/truecaller/sdk/utils/TcInfoContentProvider$a;

    .line 5
    invoke-interface {p4}, Lcom/truecaller/sdk/utils/TcInfoContentProvider$a;->x()Le/a/u3/g;

    move-result-object p5

    .line 6
    iget-object v0, p0, Lcom/truecaller/sdk/utils/TcInfoContentProvider;->b:Landroid/net/Uri;

    if-eqz v0, :cond_14

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "accountState"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/truecaller/sdk/utils/TcInfoContentProvider;->a:Landroid/net/Uri;

    if-eqz v0, :cond_13

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    :goto_1
    iget-object p1, p5, Le/a/u3/g;->F1:Le/a/u3/g$a;

    sget-object p4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v0, 0x87

    aget-object p4, p4, v0

    invoke-virtual {p1, p5, p4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 10
    new-instance p3, Landroid/database/MatrixCursor;

    .line 11
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p3, p1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    new-array p1, v3, [Ljava/lang/Integer;

    .line 13
    invoke-virtual {p2}, Le/a/b0/g/a;->W()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {p3, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 14
    :cond_3
    iget-object p2, p0, Lcom/truecaller/sdk/utils/TcInfoContentProvider;->c:Landroid/net/Uri;

    if-eqz p2, :cond_12

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 15
    new-instance p3, Landroid/database/MatrixCursor;

    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-direct {p3, p1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    new-array p1, v3, [Ljava/lang/Integer;

    .line 18
    iget-object p2, p5, Le/a/u3/g;->E2:Le/a/u3/g$a;

    sget-object p4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v0, 0xba

    aget-object p4, p4, v0

    invoke-virtual {p2, p5, p4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p2

    .line 19
    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {p3, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 20
    :cond_4
    iget-object p2, p0, Lcom/truecaller/sdk/utils/TcInfoContentProvider;->d:Landroid/net/Uri;

    if-eqz p2, :cond_11

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 21
    new-instance p3, Landroid/database/MatrixCursor;

    .line 22
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-direct {p3, p1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    new-array p1, v3, [Ljava/lang/Integer;

    .line 24
    iget-object p2, p5, Le/a/u3/g;->g4:Le/a/u3/g$a;

    sget-object p4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v0, 0x10e

    aget-object p4, p4, v0

    invoke-virtual {p2, p5, p4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p2

    .line 25
    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {p3, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 26
    :cond_5
    iget-object p2, p0, Lcom/truecaller/sdk/utils/TcInfoContentProvider;->e:Landroid/net/Uri;

    if-eqz p2, :cond_10

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 27
    new-instance p3, Landroid/database/MatrixCursor;

    .line 28
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-direct {p3, p1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    new-array p1, v3, [Ljava/lang/Integer;

    .line 30
    iget-object p2, p5, Le/a/u3/g;->j4:Le/a/u3/g$a;

    sget-object p4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v0, 0x111

    aget-object p4, p4, v0

    invoke-virtual {p2, p5, p4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p2

    .line 31
    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {p3, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 32
    :cond_6
    iget-object p2, p0, Lcom/truecaller/sdk/utils/TcInfoContentProvider;->f:Landroid/net/Uri;

    if-eqz p2, :cond_f

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 33
    invoke-interface {p4}, Lcom/truecaller/sdk/utils/TcInfoContentProvider$a;->n2()Le/a/p5/g;

    move-result-object p1

    .line 34
    new-instance p2, Landroid/database/MatrixCursor;

    .line 35
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p4

    .line 36
    invoke-direct {p2, p4, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    new-array p4, v3, [Ljava/lang/Integer;

    .line 37
    iget-object v0, p5, Le/a/u3/g;->a6:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x172

    aget-object v1, v1, v4

    invoke-virtual {v0, p5, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p5

    check-cast p5, Le/a/u3/i;

    .line 38
    invoke-interface {p5}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object p5

    .line 39
    invoke-static {p5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    move-object p5, p3

    :goto_2
    if-eqz p5, :cond_d

    const-string v0, ","

    .line 40
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p5, v0, v2, v2, v1}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p5

    .line 41
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move-object p5, p3

    :goto_3
    if-eqz p5, :cond_d

    .line 42
    invoke-interface {p1}, Le/a/p5/g;->e()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    move-object p1, p3

    :goto_4
    if-eqz p1, :cond_d

    .line 44
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_a
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object p3, v0

    :cond_b
    if-nez p3, :cond_c

    goto :goto_5

    :cond_c
    move v3, v2

    .line 45
    :cond_d
    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v2

    invoke-virtual {p2, p4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object p3, p2

    :cond_e
    :goto_6
    return-object p3

    :cond_f
    const-string p1, "oAuthBlacklistedDevicesUri"

    .line 46
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p3

    :cond_10
    const-string p1, "oneTapUri"

    .line 47
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p3

    :cond_11
    const-string p1, "oAuthUri"

    .line 48
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p3

    :cond_12
    const-string p1, "bottomSheetUri"

    .line 49
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p3

    :cond_13
    const-string p1, "accountStateUri"

    .line 50
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p3

    :cond_14
    const-string p1, "accountStateLegacyUri"

    .line 51
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p3

    :cond_15
    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p2, "uri"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
