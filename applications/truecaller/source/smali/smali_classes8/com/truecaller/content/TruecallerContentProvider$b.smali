.class public Lcom/truecaller/content/TruecallerContentProvider$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/content/TruecallerContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/content/TruecallerContentProvider;


# direct methods
.method public constructor <init>(Lcom/truecaller/content/TruecallerContentProvider;Lcom/truecaller/content/TruecallerContentProvider$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/content/TruecallerContentProvider$b;->a:Lcom/truecaller/content/TruecallerContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/content/TruecallerContentProvider$b;->a:Lcom/truecaller/content/TruecallerContentProvider;

    invoke-virtual {v0}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/truecaller/content/TruecallerContentProvider$b;->a:Lcom/truecaller/content/TruecallerContentProvider;

    .line 5
    iget-object v2, p1, Lcom/truecaller/content/TruecallerContentProvider;->i:Le/a/m0/r0;

    .line 6
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {v2, p1}, Le/a/m0/r0;->j(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/truecaller/content/TruecallerContentProvider$b;->a:Lcom/truecaller/content/TruecallerContentProvider;

    .line 9
    iget-object v2, p1, Lcom/truecaller/content/TruecallerContentProvider;->i:Le/a/m0/r0;

    .line 10
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {v2, p1}, Le/a/m0/r0;->l(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 12
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/truecaller/content/TruecallerContentProvider$b;->a:Lcom/truecaller/content/TruecallerContentProvider;

    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 14
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 15
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2

    .line 16
    :catchall_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    :goto_2
    return v1
.end method
