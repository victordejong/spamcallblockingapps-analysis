.class public final Lcom/truecaller/flashsdk/db/FlashProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004JM\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00052\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u00082\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J#\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J1\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u00082\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J;\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\n\u001a\u0004\u0018\u00010\u00082\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/truecaller/flashsdk/db/FlashProvider;",
        "Landroid/content/ContentProvider;",
        "",
        "onCreate",
        "()Z",
        "Landroid/net/Uri;",
        "uri",
        "",
        "",
        "projection",
        "selection",
        "selectionArgs",
        "sortOrder",
        "Landroid/database/Cursor;",
        "query",
        "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;",
        "getType",
        "(Landroid/net/Uri;)Ljava/lang/String;",
        "Landroid/content/ContentValues;",
        "values",
        "insert",
        "(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;",
        "",
        "delete",
        "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I",
        "update",
        "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I",
        "Landroid/content/UriMatcher;",
        "a",
        "Landroid/content/UriMatcher;",
        "sURIMatcher",
        "Le/a/y/d/d;",
        "b",
        "Le/a/y/d/d;",
        "flashDaoManager",
        "<init>",
        "()V",
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
.field public final a:Landroid/content/UriMatcher;

.field public b:Le/a/y/d/d;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->a:Landroid/content/UriMatcher;

    .line 3
    sget-object v1, Le/a/y/d/l;->a:Landroid/net/Uri;

    const-string v1, "com.truecaller.flashsdk.provider"

    const-string v2, "flash_state"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "flash_cache"

    const/16 v3, 0xc8

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "flash_state/*"

    const/16 v3, 0x65

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "currentFlashes"

    const/16 v3, 0x66

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "cacheNumbers"

    const/16 v3, 0xc9

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const-string p2, "uri"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/16 v0, 0x64

    const/4 v1, 0x0

    const-string v2, "flashDaoManager"

    const/4 v3, 0x0

    if-eq p2, v0, :cond_5

    const/16 v0, 0x65

    if-eq p2, v0, :cond_2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    .line 2
    iget-object p2, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->b:Le/a/y/d/d;

    if-eqz p2, :cond_0

    invoke-interface {p2, p3}, Le/a/y/d/d;->c([Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string p3, "uri.lastPathSegment ?: return 0"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p3, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->b:Le/a/y/d/d;

    if-eqz p3, :cond_3

    invoke-interface {p3, p2}, Le/a/y/d/d;->b(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_4
    return v1

    .line 6
    :cond_5
    iget-object p2, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->b:Le/a/y/d/d;

    if-eqz p2, :cond_8

    if-eqz p3, :cond_7

    aget-object p3, p3, v1

    if-eqz p3, :cond_7

    invoke-interface {p2, p3}, Le/a/y/d/d;->b(Ljava/lang/String;)I

    move-result p2

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_6
    return p2

    :cond_7
    return v1

    .line 8
    :cond_8
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x64

    const-string v2, "flashDaoManager"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->b:Le/a/y/d/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Le/a/y/d/d;->d(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3
    sget-object p2, Le/a/y/d/l;->a:Landroid/net/Uri;

    const-string p2, "flash_cache"

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->b:Le/a/y/d/d;

    if-eqz v0, :cond_4

    invoke-interface {v0, p2}, Le/a/y/d/d;->h(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 7
    sget-object p2, Le/a/y/d/l;->a:Landroid/net/Uri;

    const-string p2, "flash_state"

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreate()Z
    .locals 3

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    .line 2
    const-class v1, Lcom/truecaller/flashsdk/db/FlashDatabase;

    const-string v2, "flashSdkDb"

    .line 3
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ln3/c0/q$a;->d()Ln3/c0/q$a;

    .line 5
    invoke-virtual {v0}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v0

    const-string v1, "Room.databaseBuilder(\n  \u2026on()\n            .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    check-cast v0, Lcom/truecaller/flashsdk/db/FlashDatabase;

    .line 7
    new-instance v1, Le/a/y/d/e;

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/db/FlashDatabase;->a()Le/a/y/d/c;

    move-result-object v0

    invoke-direct {v1, v0}, Le/a/y/d/e;-><init>(Le/a/y/d/c;)V

    iput-object v1, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->b:Le/a/y/d/d;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const-string p2, "uri"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/16 p3, 0xc8

    const-string p5, "flashDaoManager"

    const/4 v0, 0x0

    if-eq p2, p3, :cond_7

    const/16 p3, 0xc9

    if-eq p2, p3, :cond_5

    packed-switch p2, :pswitch_data_0

    .line 2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Unknown URI"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    move-object p2, v0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object p2, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->b:Le/a/y/d/d;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Le/a/y/d/d;->f()Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 5
    :pswitch_1
    iget-object p2, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->b:Le/a/y/d/d;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string p4, "uri.lastPathSegment ?: return null"

    invoke-static {p3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Le/a/y/d/d;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    invoke-static {p5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 6
    :pswitch_2
    iget-object p2, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->b:Le/a/y/d/d;

    if-eqz p2, :cond_4

    if-eqz p4, :cond_3

    const/4 p3, 0x0

    aget-object p3, p4, p3

    if-eqz p3, :cond_3

    invoke-interface {p2, p3}, Le/a/y/d/d;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    invoke-static {p5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_5
    iget-object p2, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->b:Le/a/y/d/d;

    if-eqz p2, :cond_6

    invoke-interface {p2, p4}, Le/a/y/d/d;->j([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    :cond_6
    invoke-static {p5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_7
    iget-object p2, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->b:Le/a/y/d/d;

    if-eqz p2, :cond_a

    invoke-interface {p2}, Le/a/y/d/d;->e()Landroid/database/Cursor;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_9

    .line 9
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :cond_8
    invoke-interface {p2, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_9
    return-object p2

    .line 10
    :cond_a
    invoke-static {p5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const-string p3, "uri"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const/16 v0, 0x64

    const-string v1, "flashDaoManager"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p3, v0, :cond_6

    const/16 v0, 0x65

    if-eq p3, v0, :cond_3

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_2

    .line 2
    iget-object p3, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->b:Le/a/y/d/d;

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    aget-object p4, p4, v3

    if-eqz p4, :cond_0

    invoke-interface {p3, p4, p2}, Le/a/y/d/d;->i(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    const-string p4, "uri.lastPathSegment ?: return 0"

    invoke-static {p3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p4, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->b:Le/a/y/d/d;

    if-eqz p4, :cond_4

    invoke-interface {p4, p3, p2}, Le/a/y/d/d;->g(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_0

    :cond_4
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_5
    return v3

    .line 6
    :cond_6
    iget-object p3, p0, Lcom/truecaller/flashsdk/db/FlashProvider;->b:Le/a/y/d/d;

    if-eqz p3, :cond_9

    if-eqz p4, :cond_8

    aget-object p4, p4, v3

    if-eqz p4, :cond_8

    invoke-interface {p3, p4, p2}, Le/a/y/d/d;->g(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p2

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p3, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_7
    return p2

    :cond_8
    return v3

    .line 8
    :cond_9
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
