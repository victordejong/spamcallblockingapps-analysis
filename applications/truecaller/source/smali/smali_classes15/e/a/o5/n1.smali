.class public final Le/a/o5/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/o5/n1$a;
    }
.end annotation


# static fields
.field public static final a:Le/a/o5/n1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/o5/n1;

    invoke-direct {v0}, Le/a/o5/n1;-><init>()V

    sput-object v0, Le/a/o5/n1;->a:Le/a/o5/n1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Le/a/o5/n1$a;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/o5/n1$a;",
            "Ls1/w/d<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/o5/n1$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/o5/n1$c;

    iget v1, v0, Le/a/o5/n1$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/o5/n1$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/o5/n1$c;

    invoke-direct {v0, p0, p3}, Le/a/o5/n1$c;-><init>(Le/a/o5/n1;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/o5/n1$c;->d:Ljava/lang/Object;

    sget-object v10, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v0, Le/a/o5/n1$c;->e:I

    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/o5/n1$c;->l:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Le/a/o5/n1$c;->k:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v1, v0, Le/a/o5/n1$c;->j:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iget-object v4, v0, Le/a/o5/n1$c;->i:Ljava/lang/Object;

    check-cast v4, Le/a/o5/n1$a;

    iget-object v5, v0, Le/a/o5/n1$c;->h:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    iget-object v6, v0, Le/a/o5/n1$c;->g:Ljava/lang/Object;

    check-cast v6, Le/a/o5/n1;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v6, p2

    move-object v9, v1

    move-object v8, v5

    move-object v5, p1

    goto/16 :goto_5

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget p3, p2, Le/a/o5/n1$a;->a:I

    const/4 v1, -0x1

    if-eq p3, v1, :cond_7

    iget-object p3, p2, Le/a/o5/n1$a;->b:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_4

    move p3, v2

    goto :goto_1

    :cond_4
    move p3, v4

    :goto_1
    if-nez p3, :cond_7

    iget-object p3, p2, Le/a/o5/n1$a;->c:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_5

    move p3, v2

    goto :goto_2

    :cond_5
    move p3, v4

    :goto_2
    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    move p3, v4

    goto :goto_4

    :cond_7
    :goto_3
    move p3, v2

    :goto_4
    if-nez p3, :cond_13

    .line 5
    sget-object p3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "audio/ogg"

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-object v6, p2, Le/a/o5/n1$a;->b:Ljava/lang/String;

    const-string v7, ".ogg"

    .line 8
    invoke-static {v5, v6, v7}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object v7, p2, Le/a/o5/n1$a;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".mp3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "uri"

    .line 12
    invoke-static {p3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v3, [Ljava/lang/String;

    aput-object v6, v7, v4

    aput-object v5, v7, v2

    iput-object p0, v0, Le/a/o5/n1$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/o5/n1$c;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/o5/n1$c;->i:Ljava/lang/Object;

    iput-object p3, v0, Le/a/o5/n1$c;->j:Ljava/lang/Object;

    iput-object v1, v0, Le/a/o5/n1$c;->k:Ljava/lang/Object;

    iput-object v5, v0, Le/a/o5/n1$c;->l:Ljava/lang/Object;

    iput v2, v0, Le/a/o5/n1$c;->e:I

    .line 13
    sget-object v4, Lq3/a/t0;->d:Lq3/a/g0;

    .line 14
    new-instance v6, Le/a/p5/r;

    invoke-direct {v6, v7, p1, p3, v11}, Le/a/p5/r;-><init>([Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ls1/w/d;)V

    invoke-static {v4, v6, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_8

    return-object v10

    :cond_8
    move-object v8, p1

    move-object v9, p3

    move-object v6, v1

    move-object p3, v4

    move-object v4, p2

    .line 15
    :goto_5
    check-cast p3, Ljava/util/List;

    invoke-static {p3}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_9

    goto/16 :goto_d

    .line 16
    :cond_9
    iget p1, v4, Le/a/o5/n1$a;->d:I

    const-string p2, "Environment.DIRECTORY_RINGTONES"

    const/4 p3, 0x4

    if-eq p1, v2, :cond_c

    if-eq p1, v3, :cond_b

    if-eq p1, p3, :cond_a

    .line 17
    sget-object p1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 18
    :cond_a
    sget-object p1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    const-string p2, "Environment.DIRECTORY_ALARMS"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 19
    :cond_b
    sget-object p1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    const-string p2, "Environment.DIRECTORY_NOTIFICATIONS"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 20
    :cond_c
    sget-object p1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    :goto_6
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v1, v7, :cond_d

    const-string v1, "relative_path"

    .line 23
    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 24
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_e
    move-object p1, v11

    :goto_7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_data"

    .line 25
    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :goto_8
    iget-object p1, v4, Le/a/o5/n1$a;->c:Ljava/lang/String;

    const-string v1, "title"

    .line 27
    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_display_name"

    .line 28
    invoke-virtual {p2, p1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mime_type"

    .line 29
    invoke-virtual {p2, p1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget p1, v4, Le/a/o5/n1$a;->d:I

    if-ne p1, p3, :cond_f

    move p1, v2

    goto :goto_9

    :cond_f
    const/4 p1, 0x0

    .line 31
    :goto_9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "is_alarm"

    .line 32
    invoke-virtual {p2, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 33
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p3, "is_music"

    .line 34
    invoke-virtual {p2, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p3, "is_podcast"

    .line 35
    invoke-virtual {p2, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 36
    iget p1, v4, Le/a/o5/n1$a;->d:I

    if-ne p1, v3, :cond_10

    move p1, v2

    goto :goto_a

    :cond_10
    const/4 p1, 0x0

    .line 37
    :goto_a
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "is_notification"

    .line 38
    invoke-virtual {p2, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 39
    iget p1, v4, Le/a/o5/n1$a;->d:I

    if-ne p1, v2, :cond_11

    goto :goto_b

    :cond_11
    const/4 v2, 0x0

    .line 40
    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "is_ringtone"

    .line 41
    invoke-virtual {p2, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 42
    sget-object p1, Lq3/a/t0;->d:Lq3/a/g0;

    .line 43
    new-instance p3, Le/a/o5/n1$b;

    const/4 v3, 0x0

    move-object v1, p3

    move-object v2, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v9}, Le/a/o5/n1$b;-><init>(Landroid/content/ContentValues;Ls1/w/d;Le/a/o5/n1$a;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v11, v0, Le/a/o5/n1$c;->g:Ljava/lang/Object;

    iput-object v11, v0, Le/a/o5/n1$c;->h:Ljava/lang/Object;

    iput-object v11, v0, Le/a/o5/n1$c;->i:Ljava/lang/Object;

    iput-object v11, v0, Le/a/o5/n1$c;->j:Ljava/lang/Object;

    iput-object v11, v0, Le/a/o5/n1$c;->k:Ljava/lang/Object;

    iput-object v11, v0, Le/a/o5/n1$c;->l:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Le/a/o5/n1$c;->e:I

    invoke-static {p1, p3, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v10, :cond_12

    return-object v10

    :cond_12
    :goto_c
    move-object p1, p3

    check-cast p1, Landroid/net/Uri;

    :goto_d
    return-object p1

    .line 44
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ringtone attributes are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
