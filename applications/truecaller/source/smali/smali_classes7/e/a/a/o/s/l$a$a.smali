.class public final Le/a/a/o/s/l$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/o/s/l$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/a/g/j0/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.storagemanager.media.MediaStorageManagerPresenter$loadMediaByConversation$1$1"
    f = "MediaStorageManagerPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/o/s/l$a;


# direct methods
.method public constructor <init>(Le/a/a/o/s/l$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/o/s/l$a$a;->e:Le/a/a/o/s/l$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/o/s/l$a$a;

    iget-object v0, p0, Le/a/a/o/s/l$a$a;->e:Le/a/a/o/s/l$a;

    invoke-direct {p1, v0, p2}, Le/a/a/o/s/l$a$a;-><init>(Le/a/a/o/s/l$a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/a/o/s/l$a$a;->e:Le/a/a/o/s/l$a;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/a/o/s/l$a;->g:Le/a/a/o/s/l;

    .line 6
    iget-object v0, p2, Le/a/a/o/s/l;->g:Landroid/content/ContentResolver;

    .line 7
    iget-object p2, p2, Le/a/a/o/s/l;->e:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 8
    :goto_0
    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 9
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "media_size_by_conversation"

    .line 10
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "filter"

    .line 11
    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 13
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 14
    iget-object p1, p1, Le/a/a/o/s/l$a;->g:Le/a/a/o/s/l;

    .line 15
    iget-object p1, p1, Le/a/a/o/s/l;->h:Le/a/a/g/g;

    .line 16
    invoke-interface {p1, p2}, Le/a/a/g/g;->l(Landroid/database/Cursor;)Le/a/a/g/j0/m;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/o/s/l$a$a;->e:Le/a/a/o/s/l$a;

    iget-object p1, p1, Le/a/a/o/s/l$a;->g:Le/a/a/o/s/l;

    .line 3
    iget-object v0, p1, Le/a/a/o/s/l;->g:Landroid/content/ContentResolver;

    .line 4
    iget-object p1, p1, Le/a/a/o/s/l;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 5
    :goto_0
    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 6
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "media_size_by_conversation"

    .line 7
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "filter"

    .line 8
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    iget-object v0, p0, Le/a/a/o/s/l$a$a;->e:Le/a/a/o/s/l$a;

    iget-object v0, v0, Le/a/a/o/s/l$a;->g:Le/a/a/o/s/l;

    .line 12
    iget-object v0, v0, Le/a/a/o/s/l;->h:Le/a/a/g/g;

    .line 13
    invoke-interface {v0, p1}, Le/a/a/g/g;->l(Landroid/database/Cursor;)Le/a/a/g/j0/m;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
