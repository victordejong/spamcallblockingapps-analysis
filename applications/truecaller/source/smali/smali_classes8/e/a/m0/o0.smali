.class public final Le/a/m0/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uri"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "values"

    invoke-static {p4, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "_id"

    .line 1
    invoke-virtual {p4, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p2, "normalized_destination"

    .line 2
    invoke-virtual {p4, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p2, "raw_destination"

    .line 3
    invoke-virtual {p4, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p2, "type"

    .line 4
    invoke-virtual {p4, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p2, "tc_im_peer_id"

    .line 5
    invoke-virtual {p4, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "msg_participants"

    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-static {}, Le/a/m0/a1$k;->H()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    .line 8
    invoke-static {}, Le/a/m0/a1$k;->I()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    .line 9
    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    :cond_0
    return p2
.end method
