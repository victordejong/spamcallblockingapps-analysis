.class public Le/f/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/c$a;
    }
.end annotation


# static fields
.field public static volatile j:Le/f/a/c;

.field public static volatile k:Z


# instance fields
.field public final a:Le/f/a/n/o/l;

.field public final b:Le/f/a/n/o/b0/d;

.field public final c:Le/f/a/n/o/c0/i;

.field public final d:Le/f/a/e;

.field public final e:Le/f/a/g;

.field public final f:Le/f/a/n/o/b0/b;

.field public final g:Le/f/a/o/l;

.field public final h:Le/f/a/o/d;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/f/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/f/a/n/o/l;Le/f/a/n/o/c0/i;Le/f/a/n/o/b0/d;Le/f/a/n/o/b0/b;Le/f/a/o/l;Le/f/a/o/d;ILe/f/a/c$a;Ljava/util/Map;Ljava/util/List;ZZ)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/f/a/n/o/l;",
            "Le/f/a/n/o/c0/i;",
            "Le/f/a/n/o/b0/d;",
            "Le/f/a/n/o/b0/b;",
            "Le/f/a/o/l;",
            "Le/f/a/o/d;",
            "I",
            "Le/f/a/c$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/f/a/j<",
            "**>;>;",
            "Ljava/util/List<",
            "Le/f/a/r/g<",
            "Ljava/lang/Object;",
            ">;>;ZZII)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    .line 1
    const-class v3, Le/f/a/l/a;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/Integer;

    const-class v7, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Le/f/a/c;->i:Ljava/util/List;

    move-object/from16 v10, p2

    .line 3
    iput-object v10, v1, Le/f/a/c;->a:Le/f/a/n/o/l;

    .line 4
    iput-object v2, v1, Le/f/a/c;->b:Le/f/a/n/o/b0/d;

    .line 5
    iput-object v4, v1, Le/f/a/c;->f:Le/f/a/n/o/b0/b;

    move-object/from16 v8, p3

    .line 6
    iput-object v8, v1, Le/f/a/c;->c:Le/f/a/n/o/c0/i;

    move-object/from16 v8, p6

    .line 7
    iput-object v8, v1, Le/f/a/c;->g:Le/f/a/o/l;

    move-object/from16 v8, p7

    .line 8
    iput-object v8, v1, Le/f/a/c;->h:Le/f/a/o/d;

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 10
    new-instance v9, Le/f/a/g;

    invoke-direct {v9}, Le/f/a/g;-><init>()V

    iput-object v9, v1, Le/f/a/c;->e:Le/f/a/g;

    .line 11
    new-instance v11, Le/f/a/n/q/d/l;

    invoke-direct {v11}, Le/f/a/n/q/d/l;-><init>()V

    .line 12
    iget-object v12, v9, Le/f/a/g;->g:Le/f/a/q/b;

    .line 13
    monitor-enter v12

    .line 14
    :try_start_0
    iget-object v13, v12, Le/f/a/q/b;->a:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    monitor-exit v12

    .line 16
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1b

    if-lt v11, v12, :cond_0

    .line 17
    new-instance v12, Le/f/a/n/q/d/q;

    invoke-direct {v12}, Le/f/a/n/q/d/q;-><init>()V

    .line 18
    iget-object v13, v9, Le/f/a/g;->g:Le/f/a/q/b;

    .line 19
    monitor-enter v13

    .line 20
    :try_start_1
    iget-object v14, v13, Le/f/a/q/b;->a:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    .line 22
    :cond_0
    :goto_0
    invoke-virtual {v9}, Le/f/a/g;->e()Ljava/util/List;

    move-result-object v12

    .line 23
    new-instance v13, Le/f/a/n/q/h/a;

    invoke-direct {v13, v0, v12, v2, v4}, Le/f/a/n/q/h/a;-><init>(Landroid/content/Context;Ljava/util/List;Le/f/a/n/o/b0/d;Le/f/a/n/o/b0/b;)V

    .line 24
    new-instance v14, Le/f/a/n/q/d/e0;

    new-instance v15, Le/f/a/n/q/d/e0$f;

    invoke-direct {v15}, Le/f/a/n/q/d/e0$f;-><init>()V

    invoke-direct {v14, v2, v15}, Le/f/a/n/q/d/e0;-><init>(Le/f/a/n/o/b0/d;Le/f/a/n/q/d/e0$e;)V

    if-eqz p13, :cond_1

    const/16 v15, 0x1c

    if-lt v11, v15, :cond_1

    .line 25
    new-instance v11, Le/f/a/n/q/d/u;

    invoke-direct {v11}, Le/f/a/n/q/d/u;-><init>()V

    .line 26
    new-instance v15, Le/f/a/n/q/d/h;

    invoke-direct {v15}, Le/f/a/n/q/d/h;-><init>()V

    goto :goto_1

    .line 27
    :cond_1
    new-instance v11, Le/f/a/n/q/d/n;

    .line 28
    invoke-virtual {v9}, Le/f/a/g;->e()Ljava/util/List;

    move-result-object v15

    .line 29
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-direct {v11, v15, v10, v2, v4}, Le/f/a/n/q/d/n;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Le/f/a/n/o/b0/d;Le/f/a/n/o/b0/b;)V

    .line 30
    new-instance v15, Le/f/a/n/q/d/g;

    invoke-direct {v15, v11}, Le/f/a/n/q/d/g;-><init>(Le/f/a/n/q/d/n;)V

    .line 31
    new-instance v10, Le/f/a/n/q/d/z;

    invoke-direct {v10, v11, v4}, Le/f/a/n/q/d/z;-><init>(Le/f/a/n/q/d/n;Le/f/a/n/o/b0/b;)V

    move-object v11, v10

    .line 32
    :goto_1
    new-instance v10, Le/f/a/n/q/f/e;

    invoke-direct {v10, v0}, Le/f/a/n/q/f/e;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v1, Le/f/a/n/p/s$c;

    invoke-direct {v1, v8}, Le/f/a/n/p/s$c;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v16, v7

    .line 34
    new-instance v7, Le/f/a/n/p/s$d;

    invoke-direct {v7, v8}, Le/f/a/n/p/s$d;-><init>(Landroid/content/res/Resources;)V

    .line 35
    new-instance v0, Le/f/a/n/p/s$b;

    invoke-direct {v0, v8}, Le/f/a/n/p/s$b;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v17, v5

    .line 36
    new-instance v5, Le/f/a/n/p/s$a;

    invoke-direct {v5, v8}, Le/f/a/n/p/s$a;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p3, v5

    .line 37
    new-instance v5, Le/f/a/n/q/d/c;

    invoke-direct {v5, v4}, Le/f/a/n/q/d/c;-><init>(Le/f/a/n/o/b0/b;)V

    move-object/from16 p6, v7

    .line 38
    new-instance v7, Le/f/a/n/q/i/a;

    invoke-direct {v7}, Le/f/a/n/q/i/a;-><init>()V

    move-object/from16 p7, v7

    .line 39
    new-instance v7, Le/f/a/n/q/i/d;

    invoke-direct {v7}, Le/f/a/n/q/i/d;-><init>()V

    move-object/from16 p13, v7

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v18, v7

    .line 41
    const-class v7, Ljava/nio/ByteBuffer;

    move-object/from16 v19, v6

    new-instance v6, Le/f/a/n/p/c;

    invoke-direct {v6}, Le/f/a/n/p/c;-><init>()V

    .line 42
    invoke-virtual {v9, v7, v6}, Le/f/a/g;->a(Ljava/lang/Class;Le/f/a/n/d;)Le/f/a/g;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Le/f/a/n/p/t;

    invoke-direct {v7, v4}, Le/f/a/n/p/t;-><init>(Le/f/a/n/o/b0/b;)V

    .line 43
    invoke-virtual {v9, v6, v7}, Le/f/a/g;->a(Ljava/lang/Class;Le/f/a/n/d;)Le/f/a/g;

    const-string v6, "Bitmap"

    const-class v7, Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    const-class v0, Landroid/graphics/Bitmap;

    .line 44
    invoke-virtual {v9, v6, v7, v0, v15}, Le/f/a/g;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)Le/f/a/g;

    const-string v0, "Bitmap"

    const-class v6, Ljava/io/InputStream;

    const-class v7, Landroid/graphics/Bitmap;

    .line 45
    invoke-virtual {v9, v0, v6, v7, v11}, Le/f/a/g;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)Le/f/a/g;

    const-string v0, "Bitmap"

    const-class v6, Landroid/os/ParcelFileDescriptor;

    const-class v7, Landroid/graphics/Bitmap;

    .line 46
    invoke-virtual {v9, v0, v6, v7, v14}, Le/f/a/g;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)Le/f/a/g;

    const-string v0, "Bitmap"

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    const-class v7, Landroid/graphics/Bitmap;

    move-object/from16 v21, v1

    .line 47
    new-instance v1, Le/f/a/n/q/d/e0;

    move-object/from16 v22, v10

    new-instance v10, Le/f/a/n/q/d/e0$c;

    move-object/from16 v23, v3

    const/4 v3, 0x0

    invoke-direct {v10, v3}, Le/f/a/n/q/d/e0$c;-><init>(Le/f/a/n/q/d/e0$a;)V

    invoke-direct {v1, v2, v10}, Le/f/a/n/q/d/e0;-><init>(Le/f/a/n/o/b0/d;Le/f/a/n/q/d/e0$e;)V

    .line 48
    invoke-virtual {v9, v0, v6, v7, v1}, Le/f/a/g;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)Le/f/a/g;

    const-class v0, Landroid/graphics/Bitmap;

    const-class v1, Landroid/graphics/Bitmap;

    .line 49
    sget-object v3, Le/f/a/n/p/v$a;->a:Le/f/a/n/p/v$a;

    invoke-virtual {v9, v0, v1, v3}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-string v0, "Bitmap"

    const-class v1, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Le/f/a/n/q/d/d0;

    invoke-direct {v7}, Le/f/a/n/q/d/d0;-><init>()V

    .line 50
    invoke-virtual {v9, v0, v1, v6, v7}, Le/f/a/g;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)Le/f/a/g;

    const-class v0, Landroid/graphics/Bitmap;

    .line 51
    invoke-virtual {v9, v0, v5}, Le/f/a/g;->b(Ljava/lang/Class;Le/f/a/n/l;)Le/f/a/g;

    const-string v0, "BitmapDrawable"

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Le/f/a/n/q/d/a;

    invoke-direct {v7, v8, v15}, Le/f/a/n/q/d/a;-><init>(Landroid/content/res/Resources;Le/f/a/n/k;)V

    .line 52
    invoke-virtual {v9, v0, v1, v6, v7}, Le/f/a/g;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)Le/f/a/g;

    const-string v0, "BitmapDrawable"

    const-class v1, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Le/f/a/n/q/d/a;

    invoke-direct {v7, v8, v11}, Le/f/a/n/q/d/a;-><init>(Landroid/content/res/Resources;Le/f/a/n/k;)V

    .line 53
    invoke-virtual {v9, v0, v1, v6, v7}, Le/f/a/g;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)Le/f/a/g;

    const-string v0, "BitmapDrawable"

    const-class v1, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Le/f/a/n/q/d/a;

    invoke-direct {v7, v8, v14}, Le/f/a/n/q/d/a;-><init>(Landroid/content/res/Resources;Le/f/a/n/k;)V

    .line 54
    invoke-virtual {v9, v0, v1, v6, v7}, Le/f/a/g;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)Le/f/a/g;

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v1, Le/f/a/n/q/d/b;

    invoke-direct {v1, v2, v5}, Le/f/a/n/q/d/b;-><init>(Le/f/a/n/o/b0/d;Le/f/a/n/l;)V

    .line 55
    invoke-virtual {v9, v0, v1}, Le/f/a/g;->b(Ljava/lang/Class;Le/f/a/n/l;)Le/f/a/g;

    const-string v0, "Gif"

    const-class v1, Ljava/io/InputStream;

    const-class v5, Le/f/a/n/q/h/c;

    new-instance v6, Le/f/a/n/q/h/j;

    invoke-direct {v6, v12, v13, v4}, Le/f/a/n/q/h/j;-><init>(Ljava/util/List;Le/f/a/n/k;Le/f/a/n/o/b0/b;)V

    .line 56
    invoke-virtual {v9, v0, v1, v5, v6}, Le/f/a/g;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)Le/f/a/g;

    const-string v0, "Gif"

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v5, Le/f/a/n/q/h/c;

    .line 57
    invoke-virtual {v9, v0, v1, v5, v13}, Le/f/a/g;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)Le/f/a/g;

    const-class v0, Le/f/a/n/q/h/c;

    new-instance v1, Le/f/a/n/q/h/d;

    invoke-direct {v1}, Le/f/a/n/q/h/d;-><init>()V

    .line 58
    invoke-virtual {v9, v0, v1}, Le/f/a/g;->b(Ljava/lang/Class;Le/f/a/n/l;)Le/f/a/g;

    move-object/from16 v0, v23

    .line 59
    invoke-virtual {v9, v0, v0, v3}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-string v1, "Bitmap"

    const-class v5, Landroid/graphics/Bitmap;

    new-instance v6, Le/f/a/n/q/h/h;

    invoke-direct {v6, v2}, Le/f/a/n/q/h/h;-><init>(Le/f/a/n/o/b0/d;)V

    .line 60
    invoke-virtual {v9, v1, v0, v5, v6}, Le/f/a/g;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)Le/f/a/g;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/graphics/drawable/Drawable;

    const-string v5, "legacy_append"

    move-object/from16 v6, v22

    .line 61
    invoke-virtual {v9, v5, v0, v1, v6}, Le/f/a/g;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)Le/f/a/g;

    .line 62
    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/graphics/Bitmap;

    new-instance v5, Le/f/a/n/q/d/x;

    invoke-direct {v5, v6, v2}, Le/f/a/n/q/d/x;-><init>(Le/f/a/n/q/f/e;Le/f/a/n/o/b0/d;)V

    const-string v6, "legacy_append"

    .line 63
    invoke-virtual {v9, v6, v0, v1, v5}, Le/f/a/g;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)Le/f/a/g;

    .line 64
    new-instance v0, Le/f/a/n/q/e/a$a;

    invoke-direct {v0}, Le/f/a/n/q/e/a$a;-><init>()V

    .line 65
    invoke-virtual {v9, v0}, Le/f/a/g;->h(Le/f/a/n/n/e$a;)Le/f/a/g;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/nio/ByteBuffer;

    new-instance v5, Le/f/a/n/p/d$b;

    invoke-direct {v5}, Le/f/a/n/p/d$b;-><init>()V

    .line 66
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/InputStream;

    new-instance v5, Le/f/a/n/p/f$e;

    invoke-direct {v5}, Le/f/a/n/p/f$e;-><init>()V

    .line 67
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/File;

    new-instance v5, Le/f/a/n/q/g/a;

    invoke-direct {v5}, Le/f/a/n/q/g/a;-><init>()V

    const-string v6, "legacy_append"

    .line 68
    invoke-virtual {v9, v6, v0, v1, v5}, Le/f/a/g;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)Le/f/a/g;

    .line 69
    const-class v0, Ljava/io/File;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Le/f/a/n/p/f$b;

    invoke-direct {v5}, Le/f/a/n/p/f$b;-><init>()V

    .line 70
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/File;

    .line 71
    invoke-virtual {v9, v0, v1, v3}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    new-instance v0, Le/f/a/n/n/k$a;

    invoke-direct {v0, v4}, Le/f/a/n/n/k$a;-><init>(Le/f/a/n/o/b0/b;)V

    .line 72
    invoke-virtual {v9, v0}, Le/f/a/g;->h(Le/f/a/n/n/e$a;)Le/f/a/g;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    move-object/from16 v5, v21

    .line 73
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v6, v20

    .line 74
    invoke-virtual {v9, v0, v1, v6}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v1, Ljava/io/InputStream;

    move-object/from16 v7, v19

    .line 75
    invoke-virtual {v9, v7, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    .line 76
    invoke-virtual {v9, v7, v1, v6}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v1, Landroid/net/Uri;

    move-object/from16 v5, p6

    .line 77
    invoke-virtual {v9, v7, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v1, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v6, p3

    .line 78
    invoke-virtual {v9, v0, v1, v6}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v1, Landroid/content/res/AssetFileDescriptor;

    .line 79
    invoke-virtual {v9, v7, v1, v6}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v1, Landroid/net/Uri;

    .line 80
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Le/f/a/n/p/e$c;

    invoke-direct {v1}, Le/f/a/n/p/e$c;-><init>()V

    move-object/from16 v5, v17

    .line 81
    invoke-virtual {v9, v5, v0, v1}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v6, Le/f/a/n/p/e$c;

    invoke-direct {v6}, Le/f/a/n/p/e$c;-><init>()V

    .line 82
    invoke-virtual {v9, v0, v1, v6}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Le/f/a/n/p/u$c;

    invoke-direct {v1}, Le/f/a/n/p/u$c;-><init>()V

    .line 83
    invoke-virtual {v9, v5, v0, v1}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    new-instance v1, Le/f/a/n/p/u$b;

    invoke-direct {v1}, Le/f/a/n/p/u$b;-><init>()V

    .line 84
    invoke-virtual {v9, v5, v0, v1}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/content/res/AssetFileDescriptor;

    new-instance v1, Le/f/a/n/p/u$a;

    invoke-direct {v1}, Le/f/a/n/p/u$a;-><init>()V

    .line 85
    invoke-virtual {v9, v5, v0, v1}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v5, Le/f/a/n/p/y/b$a;

    invoke-direct {v5}, Le/f/a/n/p/y/b$a;-><init>()V

    .line 86
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v5, Le/f/a/n/p/a$c;

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6}, Le/f/a/n/p/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Le/f/a/n/p/a$b;

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6}, Le/f/a/n/p/a$b;-><init>(Landroid/content/res/AssetManager;)V

    .line 89
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v5, Le/f/a/n/p/y/c$a;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Le/f/a/n/p/y/c$a;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v5, Le/f/a/n/p/y/d$a;

    invoke-direct {v5, v6}, Le/f/a/n/p/y/d$a;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v5, Le/f/a/n/p/w$d;

    move-object/from16 v7, v18

    invoke-direct {v5, v7}, Le/f/a/n/p/w$d;-><init>(Landroid/content/ContentResolver;)V

    .line 92
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Le/f/a/n/p/w$b;

    invoke-direct {v5, v7}, Le/f/a/n/p/w$b;-><init>(Landroid/content/ContentResolver;)V

    .line 93
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/content/res/AssetFileDescriptor;

    new-instance v5, Le/f/a/n/p/w$a;

    invoke-direct {v5, v7}, Le/f/a/n/p/w$a;-><init>(Landroid/content/ContentResolver;)V

    .line 94
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v5, Le/f/a/n/p/x$a;

    invoke-direct {v5}, Le/f/a/n/p/x$a;-><init>()V

    .line 95
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Ljava/net/URL;

    const-class v1, Ljava/io/InputStream;

    new-instance v5, Le/f/a/n/p/y/e$a;

    invoke-direct {v5}, Le/f/a/n/p/y/e$a;-><init>()V

    .line 96
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/File;

    new-instance v5, Le/f/a/n/p/k$a;

    invoke-direct {v5, v6}, Le/f/a/n/p/k$a;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Le/f/a/n/p/g;

    const-class v1, Ljava/io/InputStream;

    new-instance v5, Le/f/a/n/p/y/a$a;

    invoke-direct {v5}, Le/f/a/n/p/y/a$a;-><init>()V

    .line 98
    invoke-virtual {v9, v0, v1, v5}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Ljava/nio/ByteBuffer;

    new-instance v1, Le/f/a/n/p/b$a;

    invoke-direct {v1}, Le/f/a/n/p/b$a;-><init>()V

    move-object/from16 v5, v16

    .line 99
    invoke-virtual {v9, v5, v0, v1}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Le/f/a/n/p/b$d;

    invoke-direct {v1}, Le/f/a/n/p/b$d;-><init>()V

    .line 100
    invoke-virtual {v9, v5, v0, v1}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/net/Uri;

    .line 101
    invoke-virtual {v9, v0, v1, v3}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-virtual {v9, v0, v1, v3}, Le/f/a/g;->c(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v1, Landroid/graphics/drawable/Drawable;

    new-instance v3, Le/f/a/n/q/f/f;

    invoke-direct {v3}, Le/f/a/n/q/f/f;-><init>()V

    const-string v7, "legacy_append"

    .line 103
    invoke-virtual {v9, v7, v0, v1, v3}, Le/f/a/g;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)Le/f/a/g;

    .line 104
    const-class v0, Landroid/graphics/Bitmap;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v3, Le/f/a/n/q/i/b;

    invoke-direct {v3, v8}, Le/f/a/n/q/i/b;-><init>(Landroid/content/res/Resources;)V

    .line 105
    invoke-virtual {v9, v0, v1, v3}, Le/f/a/g;->i(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/q/i/e;)Le/f/a/g;

    const-class v0, Landroid/graphics/Bitmap;

    move-object/from16 v1, p7

    .line 106
    invoke-virtual {v9, v0, v5, v1}, Le/f/a/g;->i(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/q/i/e;)Le/f/a/g;

    const-class v0, Landroid/graphics/drawable/Drawable;

    new-instance v3, Le/f/a/n/q/i/c;

    move-object/from16 v7, p13

    invoke-direct {v3, v2, v1, v7}, Le/f/a/n/q/i/c;-><init>(Le/f/a/n/o/b0/d;Le/f/a/n/q/i/e;Le/f/a/n/q/i/e;)V

    .line 107
    invoke-virtual {v9, v0, v5, v3}, Le/f/a/g;->i(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/q/i/e;)Le/f/a/g;

    const-class v0, Le/f/a/n/q/h/c;

    .line 108
    invoke-virtual {v9, v0, v5, v7}, Le/f/a/g;->i(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/q/i/e;)Le/f/a/g;

    .line 109
    new-instance v0, Le/f/a/r/k/g;

    invoke-direct {v0}, Le/f/a/r/k/g;-><init>()V

    .line 110
    new-instance v1, Le/f/a/e;

    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object v5, v9

    move-object v6, v0

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p2

    move/from16 v11, p12

    move/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Le/f/a/e;-><init>(Landroid/content/Context;Le/f/a/n/o/b0/b;Le/f/a/g;Le/f/a/r/k/g;Le/f/a/c$a;Ljava/util/Map;Ljava/util/List;Le/f/a/n/o/l;ZI)V

    move-object/from16 v2, p0

    iput-object v1, v2, Le/f/a/c;->d:Le/f/a/e;

    return-void

    :catchall_1
    move-exception v0

    move-object v2, v1

    .line 111
    monitor-exit v12

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 26

    move-object/from16 v0, p1

    .line 1
    sget-boolean v1, Le/f/a/c;->k:Z

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    .line 2
    sput-boolean v1, Le/f/a/c;->k:Z

    .line 3
    new-instance v2, Le/f/a/d;

    invoke-direct {v2}, Le/f/a/d;-><init>()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual/range {p1 .. p1}, Le/f/a/p/a;->c()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v17, v3

    goto :goto_3

    :cond_1
    :goto_0
    const-string v3, "ManifestParser"

    .line 7
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 10
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 11
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v8, :cond_2

    .line 12
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got app info metadata: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    :cond_3
    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "GlideModule"

    .line 16
    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v10, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 17
    invoke-static {v8}, Le/f/a/p/e;->a(Ljava/lang/String;)Le/f/a/p/c;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 19
    :cond_5
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :goto_2
    move-object/from16 v17, v6

    :goto_3
    const-string v3, "Glide"

    if-eqz v0, :cond_8

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d()Ljava/util/Set;

    move-result-object v5

    .line 22
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 23
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 24
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/f/a/p/c;

    .line 25
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_4

    .line 26
    :cond_6
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 29
    :cond_8
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 30
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/f/a/p/c;

    const-string v5, "Discovered GlideModule from manifest: "

    .line 31
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_5

    :cond_9
    if-eqz v0, :cond_a

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->e()Le/f/a/o/l$b;

    move-result-object v3

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    .line 33
    :goto_6
    iput-object v3, v2, Le/f/a/d;->m:Le/f/a/o/l$b;

    .line 34
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/f/a/p/c;

    .line 35
    invoke-interface {v4, v15, v2}, Le/f/a/p/b;->a(Landroid/content/Context;Le/f/a/d;)V

    goto :goto_7

    :cond_b
    if-eqz v0, :cond_c

    .line 36
    invoke-virtual {v0, v15, v2}, Le/f/a/p/a;->a(Landroid/content/Context;Le/f/a/d;)V

    .line 37
    :cond_c
    sget-object v3, Le/f/a/n/o/d0/a$b;->b:Le/f/a/n/o/d0/a$b;

    iget-object v4, v2, Le/f/a/d;->f:Le/f/a/n/o/d0/a;

    const/4 v14, 0x0

    if-nez v4, :cond_d

    .line 38
    invoke-static {}, Le/f/a/n/o/d0/a;->a()I

    move-result v7

    .line 39
    new-instance v4, Le/f/a/n/o/d0/a;

    new-instance v13, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v12, Le/f/a/n/o/d0/a$a;

    const-string v5, "source"

    invoke-direct {v12, v5, v3, v14}, Le/f/a/n/o/d0/a$a;-><init>(Ljava/lang/String;Le/f/a/n/o/d0/a$b;Z)V

    const-wide/16 v8, 0x0

    move-object v5, v13

    move v6, v7

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v4, v13}, Le/f/a/n/o/d0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 40
    iput-object v4, v2, Le/f/a/d;->f:Le/f/a/n/o/d0/a;

    .line 41
    :cond_d
    iget-object v4, v2, Le/f/a/d;->g:Le/f/a/n/o/d0/a;

    if-nez v4, :cond_e

    .line 42
    new-instance v4, Le/f/a/n/o/d0/a;

    new-instance v13, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v12, Le/f/a/n/o/d0/a$a;

    const-string v5, "disk-cache"

    invoke-direct {v12, v5, v3, v1}, Le/f/a/n/o/d0/a$a;-><init>(Ljava/lang/String;Le/f/a/n/o/d0/a$b;Z)V

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    move-object v5, v13

    move v6, v7

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v4, v13}, Le/f/a/n/o/d0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 43
    iput-object v4, v2, Le/f/a/d;->g:Le/f/a/n/o/d0/a;

    .line 44
    :cond_e
    iget-object v4, v2, Le/f/a/d;->n:Le/f/a/n/o/d0/a;

    if-nez v4, :cond_10

    .line 45
    invoke-static {}, Le/f/a/n/o/d0/a;->a()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_f

    const/4 v4, 0x2

    move v7, v4

    goto :goto_8

    :cond_f
    move v7, v1

    .line 46
    :goto_8
    new-instance v4, Le/f/a/n/o/d0/a;

    new-instance v13, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v12, Le/f/a/n/o/d0/a$a;

    const-string v5, "animation"

    invoke-direct {v12, v5, v3, v1}, Le/f/a/n/o/d0/a$a;-><init>(Ljava/lang/String;Le/f/a/n/o/d0/a$b;Z)V

    const-wide/16 v8, 0x0

    move-object v5, v13

    move v6, v7

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v4, v13}, Le/f/a/n/o/d0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 47
    iput-object v4, v2, Le/f/a/d;->n:Le/f/a/n/o/d0/a;

    .line 48
    :cond_10
    iget-object v1, v2, Le/f/a/d;->i:Le/f/a/n/o/c0/j;

    if-nez v1, :cond_11

    .line 49
    new-instance v1, Le/f/a/n/o/c0/j$a;

    invoke-direct {v1, v15}, Le/f/a/n/o/c0/j$a;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v4, Le/f/a/n/o/c0/j;

    invoke-direct {v4, v1}, Le/f/a/n/o/c0/j;-><init>(Le/f/a/n/o/c0/j$a;)V

    .line 51
    iput-object v4, v2, Le/f/a/d;->i:Le/f/a/n/o/c0/j;

    .line 52
    :cond_11
    iget-object v1, v2, Le/f/a/d;->j:Le/f/a/o/d;

    if-nez v1, :cond_12

    .line 53
    new-instance v1, Le/f/a/o/f;

    invoke-direct {v1}, Le/f/a/o/f;-><init>()V

    iput-object v1, v2, Le/f/a/d;->j:Le/f/a/o/d;

    .line 54
    :cond_12
    iget-object v1, v2, Le/f/a/d;->c:Le/f/a/n/o/b0/d;

    if-nez v1, :cond_14

    .line 55
    iget-object v1, v2, Le/f/a/d;->i:Le/f/a/n/o/c0/j;

    .line 56
    iget v1, v1, Le/f/a/n/o/c0/j;->a:I

    if-lez v1, :cond_13

    .line 57
    new-instance v4, Le/f/a/n/o/b0/j;

    int-to-long v5, v1

    invoke-direct {v4, v5, v6}, Le/f/a/n/o/b0/j;-><init>(J)V

    iput-object v4, v2, Le/f/a/d;->c:Le/f/a/n/o/b0/d;

    goto :goto_9

    .line 58
    :cond_13
    new-instance v1, Le/f/a/n/o/b0/e;

    invoke-direct {v1}, Le/f/a/n/o/b0/e;-><init>()V

    iput-object v1, v2, Le/f/a/d;->c:Le/f/a/n/o/b0/d;

    .line 59
    :cond_14
    :goto_9
    iget-object v1, v2, Le/f/a/d;->d:Le/f/a/n/o/b0/b;

    if-nez v1, :cond_15

    .line 60
    new-instance v1, Le/f/a/n/o/b0/i;

    iget-object v4, v2, Le/f/a/d;->i:Le/f/a/n/o/c0/j;

    .line 61
    iget v4, v4, Le/f/a/n/o/c0/j;->d:I

    .line 62
    invoke-direct {v1, v4}, Le/f/a/n/o/b0/i;-><init>(I)V

    iput-object v1, v2, Le/f/a/d;->d:Le/f/a/n/o/b0/b;

    .line 63
    :cond_15
    iget-object v1, v2, Le/f/a/d;->e:Le/f/a/n/o/c0/i;

    if-nez v1, :cond_16

    .line 64
    new-instance v1, Le/f/a/n/o/c0/h;

    iget-object v4, v2, Le/f/a/d;->i:Le/f/a/n/o/c0/j;

    .line 65
    iget v4, v4, Le/f/a/n/o/c0/j;->b:I

    int-to-long v4, v4

    .line 66
    invoke-direct {v1, v4, v5}, Le/f/a/n/o/c0/h;-><init>(J)V

    iput-object v1, v2, Le/f/a/d;->e:Le/f/a/n/o/c0/i;

    .line 67
    :cond_16
    iget-object v1, v2, Le/f/a/d;->h:Le/f/a/n/o/c0/a$a;

    if-nez v1, :cond_17

    .line 68
    new-instance v1, Le/f/a/n/o/c0/g;

    invoke-direct {v1, v15}, Le/f/a/n/o/c0/g;-><init>(Landroid/content/Context;)V

    iput-object v1, v2, Le/f/a/d;->h:Le/f/a/n/o/c0/a$a;

    .line 69
    :cond_17
    iget-object v1, v2, Le/f/a/d;->b:Le/f/a/n/o/l;

    if-nez v1, :cond_18

    .line 70
    new-instance v1, Le/f/a/n/o/l;

    iget-object v5, v2, Le/f/a/d;->e:Le/f/a/n/o/c0/i;

    iget-object v6, v2, Le/f/a/d;->h:Le/f/a/n/o/c0/a$a;

    iget-object v7, v2, Le/f/a/d;->g:Le/f/a/n/o/d0/a;

    iget-object v8, v2, Le/f/a/d;->f:Le/f/a/n/o/d0/a;

    .line 71
    new-instance v9, Le/f/a/n/o/d0/a;

    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v21, Le/f/a/n/o/d0/a;->b:J

    sget-object v23, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v24, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v24 .. v24}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v10, Le/f/a/n/o/d0/a$a;

    const-string v11, "source-unlimited"

    invoke-direct {v10, v11, v3, v14}, Le/f/a/n/o/d0/a$a;-><init>(Ljava/lang/String;Le/f/a/n/o/d0/a$b;Z)V

    const/16 v19, 0x0

    const v20, 0x7fffffff

    move-object/from16 v18, v4

    move-object/from16 v25, v10

    invoke-direct/range {v18 .. v25}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v9, v4}, Le/f/a/n/o/d0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 72
    iget-object v10, v2, Le/f/a/d;->n:Le/f/a/n/o/d0/a;

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Le/f/a/n/o/l;-><init>(Le/f/a/n/o/c0/i;Le/f/a/n/o/c0/a$a;Le/f/a/n/o/d0/a;Le/f/a/n/o/d0/a;Le/f/a/n/o/d0/a;Le/f/a/n/o/d0/a;Z)V

    iput-object v1, v2, Le/f/a/d;->b:Le/f/a/n/o/l;

    .line 73
    :cond_18
    iget-object v1, v2, Le/f/a/d;->o:Ljava/util/List;

    if-nez v1, :cond_19

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Le/f/a/d;->o:Ljava/util/List;

    goto :goto_a

    .line 75
    :cond_19
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Le/f/a/d;->o:Ljava/util/List;

    .line 76
    :goto_a
    new-instance v9, Le/f/a/o/l;

    iget-object v1, v2, Le/f/a/d;->m:Le/f/a/o/l$b;

    invoke-direct {v9, v1}, Le/f/a/o/l;-><init>(Le/f/a/o/l$b;)V

    .line 77
    new-instance v1, Le/f/a/c;

    iget-object v5, v2, Le/f/a/d;->b:Le/f/a/n/o/l;

    iget-object v6, v2, Le/f/a/d;->e:Le/f/a/n/o/c0/i;

    iget-object v7, v2, Le/f/a/d;->c:Le/f/a/n/o/b0/d;

    iget-object v8, v2, Le/f/a/d;->d:Le/f/a/n/o/b0/b;

    iget-object v10, v2, Le/f/a/d;->j:Le/f/a/o/d;

    iget v11, v2, Le/f/a/d;->k:I

    iget-object v12, v2, Le/f/a/d;->l:Le/f/a/c$a;

    iget-object v13, v2, Le/f/a/d;->a:Ljava/util/Map;

    iget-object v2, v2, Le/f/a/d;->o:Ljava/util/List;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v3, v1

    move-object v4, v15

    move/from16 v19, v14

    move-object v14, v2

    move-object v2, v15

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-direct/range {v3 .. v16}, Le/f/a/c;-><init>(Landroid/content/Context;Le/f/a/n/o/l;Le/f/a/n/o/c0/i;Le/f/a/n/o/b0/d;Le/f/a/n/o/b0/b;Le/f/a/o/l;Le/f/a/o/d;ILe/f/a/c$a;Ljava/util/Map;Ljava/util/List;ZZ)V

    .line 78
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/f/a/p/c;

    .line 79
    :try_start_1
    iget-object v5, v1, Le/f/a/c;->e:Le/f/a/g;

    invoke-interface {v4, v2, v1, v5}, Le/f/a/p/f;->b(Landroid/content/Context;Le/f/a/c;Le/f/a/g;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 81
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1a
    if-eqz v0, :cond_1b

    .line 82
    iget-object v3, v1, Le/f/a/c;->e:Le/f/a/g;

    invoke-virtual {v0, v2, v1, v3}, Le/f/a/p/d;->b(Landroid/content/Context;Le/f/a/c;Le/f/a/g;)V

    .line 83
    :cond_1b
    invoke-virtual {v2, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 84
    sput-object v1, Le/f/a/c;->j:Le/f/a/c;

    .line 85
    sput-boolean v19, Le/f/a/c;->k:Z

    return-void

    :catch_1
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find metadata to parse GlideModules"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 87
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Le/f/a/c;
    .locals 7

    .line 1
    sget-object v0, Le/f/a/c;->j:Le/f/a/c;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 4
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Le/f/a/c;->d(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception p0

    .line 7
    invoke-static {p0}, Le/f/a/c;->d(Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception p0

    .line 8
    invoke-static {p0}, Le/f/a/c;->d(Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception p0

    .line 9
    invoke-static {p0}, Le/f/a/c;->d(Ljava/lang/Exception;)V

    throw v1

    :catch_4
    const/4 v0, 0x5

    const-string v2, "Glide"

    .line 10
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    :goto_0
    const-class v0, Le/f/a/c;

    monitor-enter v0

    .line 12
    :try_start_1
    sget-object v2, Le/f/a/c;->j:Le/f/a/c;

    if-nez v2, :cond_0

    .line 13
    invoke-static {p0, v1}, Le/f/a/c;->a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    .line 14
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 15
    :cond_1
    :goto_1
    sget-object p0, Le/f/a/c;->j:Le/f/a/c;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Le/f/a/o/l;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Le/f/a/c;->b(Landroid/content/Context;)Le/f/a/c;

    move-result-object p0

    .line 3
    iget-object p0, p0, Le/f/a/c;->g:Le/f/a/o/l;

    return-object p0
.end method

.method public static d(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static e(Landroid/content/Context;)Le/f/a/i;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Le/f/a/c;->b(Landroid/content/Context;)Le/f/a/c;

    move-result-object v0

    .line 3
    iget-object v0, v0, Le/f/a/c;->g:Le/f/a/o/l;

    .line 4
    invoke-virtual {v0, p0}, Le/f/a/o/l;->f(Landroid/content/Context;)Le/f/a/i;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/view/View;)Le/f/a/i;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->c(Landroid/content/Context;)Le/f/a/o/l;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Le/f/a/t/j;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Le/f/a/o/l;->f(Landroid/content/Context;)Le/f/a/i;

    move-result-object p0

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Unable to obtain a request manager for a view without a Context"

    .line 6
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/f/a/o/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Le/f/a/o/l;->f(Landroid/content/Context;)Le/f/a/i;

    move-result-object p0

    goto/16 :goto_4

    .line 9
    :cond_1
    instance-of v2, v1, Ln3/r/a/l;

    const/4 v3, 0x0

    const v4, 0x1020002

    if-eqz v2, :cond_5

    .line 10
    check-cast v1, Ln3/r/a/l;

    .line 11
    iget-object v2, v0, Le/f/a/o/l;->f:Ln3/g/a;

    invoke-virtual {v2}, Ln3/g/h;->clear()V

    .line 12
    invoke-virtual {v1}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->Q()Ljava/util/List;

    move-result-object v2

    iget-object v5, v0, Le/f/a/o/l;->f:Ln3/g/a;

    .line 13
    invoke-static {v2, v5}, Le/f/a/o/l;->c(Ljava/util/Collection;Ljava/util/Map;)V

    .line 14
    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v3

    .line 15
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 16
    iget-object v4, v0, Le/f/a/o/l;->f:Ln3/g/a;

    .line 17
    invoke-virtual {v4, p0, v3}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 18
    check-cast v4, Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_3

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    .line 21
    :cond_3
    :goto_1
    iget-object p0, v0, Le/f/a/o/l;->f:Ln3/g/a;

    invoke-virtual {p0}, Ln3/g/h;->clear()V

    if-eqz v4, :cond_4

    .line 22
    invoke-virtual {v0, v4}, Le/f/a/o/l;->g(Landroidx/fragment/app/Fragment;)Le/f/a/i;

    move-result-object p0

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v0, v1}, Le/f/a/o/l;->h(Ln3/r/a/l;)Le/f/a/i;

    move-result-object p0

    goto :goto_4

    .line 23
    :cond_5
    iget-object v2, v0, Le/f/a/o/l;->g:Ln3/g/a;

    invoke-virtual {v2}, Ln3/g/h;->clear()V

    .line 24
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v5, v0, Le/f/a/o/l;->g:Ln3/g/a;

    invoke-virtual {v0, v2, v5}, Le/f/a/o/l;->b(Landroid/app/FragmentManager;Ln3/g/a;)V

    .line 25
    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v3

    .line 26
    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 27
    iget-object v4, v0, Le/f/a/o/l;->g:Ln3/g/a;

    .line 28
    invoke-virtual {v4, p0, v3}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 29
    check-cast v4, Landroid/app/Fragment;

    if-eqz v4, :cond_6

    goto :goto_3

    .line 30
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_7

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_2

    .line 32
    :cond_7
    :goto_3
    iget-object p0, v0, Le/f/a/o/l;->g:Ln3/g/a;

    invoke-virtual {p0}, Ln3/g/h;->clear()V

    if-nez v4, :cond_8

    .line 33
    invoke-virtual {v0, v1}, Le/f/a/o/l;->e(Landroid/app/Activity;)Le/f/a/i;

    move-result-object p0

    goto :goto_4

    .line 34
    :cond_8
    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 35
    invoke-static {}, Le/f/a/t/j;->h()Z

    move-result p0

    if-nez p0, :cond_9

    .line 36
    invoke-virtual {v4}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 37
    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v4}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    invoke-virtual {v0, v1, p0, v4, v2}, Le/f/a/o/l;->d(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Le/f/a/i;

    move-result-object p0

    goto :goto_4

    .line 38
    :cond_9
    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Le/f/a/o/l;->f(Landroid/content/Context;)Le/f/a/i;

    move-result-object p0

    :goto_4
    return-object p0

    .line 39
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a fragment before it is attached"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Landroidx/fragment/app/Fragment;)Le/f/a/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->c(Landroid/content/Context;)Le/f/a/o/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Le/f/a/o/l;->g(Landroidx/fragment/app/Fragment;)Le/f/a/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .line 1
    invoke-static {}, Le/f/a/t/j;->a()V

    .line 2
    iget-object v0, p0, Le/f/a/c;->c:Le/f/a/n/o/c0/i;

    check-cast v0, Le/f/a/t/g;

    const-wide/16 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Le/f/a/t/g;->e(J)V

    .line 4
    iget-object v0, p0, Le/f/a/c;->b:Le/f/a/n/o/b0/d;

    invoke-interface {v0}, Le/f/a/n/o/b0/d;->b()V

    .line 5
    iget-object v0, p0, Le/f/a/c;->f:Le/f/a/n/o/b0/b;

    invoke-interface {v0}, Le/f/a/n/o/b0/b;->b()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 5

    .line 1
    invoke-static {}, Le/f/a/t/j;->a()V

    .line 2
    iget-object v0, p0, Le/f/a/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/a/i;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/f/a/c;->c:Le/f/a/n/o/c0/i;

    check-cast v0, Le/f/a/n/o/c0/h;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x28

    if-lt p1, v1, :cond_1

    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Le/f/a/t/g;->e(J)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x14

    if-ge p1, v1, :cond_2

    const/16 v1, 0xf

    if-ne p1, v1, :cond_3

    .line 7
    :cond_2
    monitor-enter v0

    .line 8
    :try_start_0
    iget-wide v1, v0, Le/f/a/t/g;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v3, 0x2

    .line 9
    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Le/f/a/t/g;->e(J)V

    .line 10
    :cond_3
    :goto_1
    iget-object v0, p0, Le/f/a/c;->b:Le/f/a/n/o/b0/d;

    invoke-interface {v0, p1}, Le/f/a/n/o/b0/d;->a(I)V

    .line 11
    iget-object v0, p0, Le/f/a/c;->f:Le/f/a/n/o/b0/b;

    invoke-interface {v0, p1}, Le/f/a/n/o/b0/b;->a(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0

    throw p1
.end method
