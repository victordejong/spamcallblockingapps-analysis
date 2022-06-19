.class public final Le/a/o5/n1$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o5/n1;->a(Landroid/content/Context;Le/a/o5/n1$a;Ls1/w/d;)Ljava/lang/Object;
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
        "Landroid/net/Uri;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.util.RingtoneUtils$copyRingtone$ringtoneUri$1$1"
    f = "RingtoneUtils.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Landroid/content/ContentValues;

.field public final synthetic f:Le/a/o5/n1$a;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ls1/w/d;

.field public final synthetic j:Landroid/content/Context;

.field public final synthetic k:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;Ls1/w/d;Le/a/o5/n1$a;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Le/a/o5/n1$b;->e:Landroid/content/ContentValues;

    iput-object p3, p0, Le/a/o5/n1$b;->f:Le/a/o5/n1$a;

    iput-object p4, p0, Le/a/o5/n1$b;->g:Ljava/lang/String;

    iput-object p5, p0, Le/a/o5/n1$b;->h:Ljava/lang/String;

    iput-object p6, p0, Le/a/o5/n1$b;->i:Ls1/w/d;

    iput-object p7, p0, Le/a/o5/n1$b;->j:Landroid/content/Context;

    iput-object p8, p0, Le/a/o5/n1$b;->k:Landroid/net/Uri;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 9
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

    new-instance p1, Le/a/o5/n1$b;

    iget-object v1, p0, Le/a/o5/n1$b;->e:Landroid/content/ContentValues;

    iget-object v3, p0, Le/a/o5/n1$b;->f:Le/a/o5/n1$a;

    iget-object v4, p0, Le/a/o5/n1$b;->g:Ljava/lang/String;

    iget-object v5, p0, Le/a/o5/n1$b;->h:Ljava/lang/String;

    iget-object v6, p0, Le/a/o5/n1$b;->i:Ls1/w/d;

    iget-object v7, p0, Le/a/o5/n1$b;->j:Landroid/content/Context;

    iget-object v8, p0, Le/a/o5/n1$b;->k:Landroid/net/Uri;

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Le/a/o5/n1$b;-><init>(Landroid/content/ContentValues;Ls1/w/d;Le/a/o5/n1$a;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;Landroid/content/Context;Landroid/net/Uri;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/o5/n1$b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/o5/n1$b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o5/n1$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/o5/n1$b;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Le/a/o5/n1$b;->f:Le/a/o5/n1$a;

    .line 3
    iget v0, v0, Le/a/o5/n1$a;->a:I

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 5
    :try_start_0
    iget-object v0, p0, Le/a/o5/n1$b;->j:Landroid/content/Context;

    const-string v1, "inputStream"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/o5/n1$b;->k:Landroid/net/Uri;

    const-string v2, "uri"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/a/o5/n1$b;->e:Landroid/content/ContentValues;

    const-string v3, "context"

    .line 6
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "source"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "destinationUri"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "values"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "context.applicationContext"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    :try_start_1
    const-string v3, "outputStream"

    .line 10
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Le/a/p5/s0/g;->X1(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-static {v0, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    move-object v1, v2

    .line 12
    :goto_0
    invoke-static {p1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
