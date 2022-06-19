.class public final Le/a/m0/b1/n/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/b1/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "db"

    const-string v1, "ALTER TABLE msg_entities ADD COLUMN vcard_name TEXT NOT NULL DEFAULT(\'\')"

    const-string v2, "ALTER TABLE msg_entities ADD COLUMN vcard_contacts_count INTEGER NOT NULL DEFAULT -1"

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->s0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
