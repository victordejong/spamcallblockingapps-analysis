.class public Lw3/c/a/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Z

.field public static final f:Z

.field public static final g:Z

.field public static final h:Z

.field public static final i:Z

.field public static final j:Z

.field public static final k:Z

.field public static final l:Z

.field public static final m:Z

.field public static final n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const-string v0, "awt.toolkit"

    .line 1
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "file.encoding"

    .line 2
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "file.separator"

    .line 3
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.awt.fonts"

    .line 4
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.awt.graphicsenv"

    .line 5
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.awt.headless"

    .line 6
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.awt.printerjob"

    .line 7
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.class.path"

    .line 8
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.class.version"

    .line 9
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.compiler"

    .line 10
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.endorsed.dirs"

    .line 11
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.ext.dirs"

    .line 12
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.home"

    .line 13
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.io.tmpdir"

    .line 14
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.library.path"

    .line 15
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.runtime.name"

    .line 16
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.runtime.version"

    .line 17
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.specification.name"

    .line 18
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.specification.vendor"

    .line 19
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.specification.version"

    .line 20
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw3/c/a/a/a/i;->a:Ljava/lang/String;

    .line 21
    sget-object v1, Lw3/c/a/a/a/c;->b:Lw3/c/a/a/a/c;

    const-string v1, "0.9"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "1.9"

    const-string v4, "1.8"

    const-string v5, "1.7"

    const-string v6, "1.6"

    const-string v7, "1.5"

    const-string v8, "1.4"

    const-string v9, "1.3"

    const-string v10, "1.2"

    const-string v11, "1.1"

    if-eqz v1, :cond_0

    .line 23
    sget-object v0, Lw3/c/a/a/a/c;->b:Lw3/c/a/a/a/c;

    goto/16 :goto_0

    .line 24
    :cond_0
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    sget-object v0, Lw3/c/a/a/a/c;->c:Lw3/c/a/a/a/c;

    goto/16 :goto_0

    .line 26
    :cond_1
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    sget-object v0, Lw3/c/a/a/a/c;->d:Lw3/c/a/a/a/c;

    goto/16 :goto_0

    .line 28
    :cond_2
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    sget-object v0, Lw3/c/a/a/a/c;->e:Lw3/c/a/a/a/c;

    goto/16 :goto_0

    .line 30
    :cond_3
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 31
    sget-object v0, Lw3/c/a/a/a/c;->f:Lw3/c/a/a/a/c;

    goto/16 :goto_0

    .line 32
    :cond_4
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33
    sget-object v0, Lw3/c/a/a/a/c;->g:Lw3/c/a/a/a/c;

    goto :goto_0

    .line 34
    :cond_5
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 35
    sget-object v0, Lw3/c/a/a/a/c;->h:Lw3/c/a/a/a/c;

    goto :goto_0

    .line 36
    :cond_6
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 37
    sget-object v0, Lw3/c/a/a/a/c;->i:Lw3/c/a/a/a/c;

    goto :goto_0

    .line 38
    :cond_7
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 39
    sget-object v0, Lw3/c/a/a/a/c;->j:Lw3/c/a/a/a/c;

    goto :goto_0

    .line 40
    :cond_8
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 41
    sget-object v0, Lw3/c/a/a/a/c;->k:Lw3/c/a/a/a/c;

    goto :goto_0

    :cond_9
    if-nez v0, :cond_a

    goto :goto_0

    .line 42
    :cond_a
    invoke-static {v0}, Lw3/c/a/a/a/c;->c(Ljava/lang/String;)F

    move-result v1

    float-to-double v12, v1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    cmpg-double v1, v12, v14

    if-gez v1, :cond_b

    const/16 v1, 0x2e

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v12, 0x2c

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/2addr v1, v2

    .line 45
    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    .line 46
    sget-object v0, Lw3/c/a/a/a/c;->l:Lw3/c/a/a/a/c;

    :cond_b
    :goto_0
    const-string v0, "java.util.prefs.PreferencesFactory"

    .line 47
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vendor"

    .line 48
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vendor.url"

    .line 49
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.version"

    .line 50
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vm.info"

    .line 51
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vm.name"

    .line 52
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vm.specification.name"

    .line 53
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vm.specification.vendor"

    .line 54
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vm.specification.version"

    .line 55
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vm.vendor"

    .line 56
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.vm.version"

    .line 57
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "line.separator"

    .line 58
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw3/c/a/a/a/i;->b:Ljava/lang/String;

    const-string v0, "os.arch"

    .line 59
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "os.name"

    .line 60
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw3/c/a/a/a/i;->c:Ljava/lang/String;

    const-string v0, "os.version"

    .line 61
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw3/c/a/a/a/i;->d:Ljava/lang/String;

    const-string v0, "path.separator"

    .line 62
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "user.country"

    .line 63
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v0, "user.region"

    :cond_c
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "user.dir"

    .line 64
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "user.home"

    .line 65
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "user.language"

    .line 66
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "user.name"

    .line 67
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "user.timezone"

    .line 68
    invoke-static {v0}, Lw3/c/a/a/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    invoke-static {v11}, Lw3/c/a/a/a/i;->a(Ljava/lang/String;)Z

    .line 70
    invoke-static {v10}, Lw3/c/a/a/a/i;->a(Ljava/lang/String;)Z

    .line 71
    invoke-static {v9}, Lw3/c/a/a/a/i;->a(Ljava/lang/String;)Z

    .line 72
    invoke-static {v8}, Lw3/c/a/a/a/i;->a(Ljava/lang/String;)Z

    .line 73
    invoke-static {v7}, Lw3/c/a/a/a/i;->a(Ljava/lang/String;)Z

    .line 74
    invoke-static {v6}, Lw3/c/a/a/a/i;->a(Ljava/lang/String;)Z

    .line 75
    invoke-static {v5}, Lw3/c/a/a/a/i;->a(Ljava/lang/String;)Z

    .line 76
    invoke-static {v4}, Lw3/c/a/a/a/i;->a(Ljava/lang/String;)Z

    .line 77
    invoke-static {v3}, Lw3/c/a/a/a/i;->a(Ljava/lang/String;)Z

    const-string v0, "AIX"

    .line 78
    invoke-static {v0}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lw3/c/a/a/a/i;->e:Z

    const-string v1, "HP-UX"

    .line 79
    invoke-static {v1}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lw3/c/a/a/a/i;->f:Z

    const-string v3, "OS/400"

    .line 80
    invoke-static {v3}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    const-string v3, "Irix"

    .line 81
    invoke-static {v3}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lw3/c/a/a/a/i;->g:Z

    const-string v4, "Linux"

    .line 82
    invoke-static {v4}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "LINUX"

    invoke-static {v4}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_1

    :cond_d
    const/4 v2, 0x0

    :cond_e
    :goto_1
    sput-boolean v2, Lw3/c/a/a/a/i;->h:Z

    const-string v4, "Mac"

    .line 83
    invoke-static {v4}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    const-string v4, "Mac OS X"

    .line 84
    invoke-static {v4}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lw3/c/a/a/a/i;->i:Z

    const-string v6, "10.0"

    .line 85
    invoke-static {v4, v6}, Lw3/c/a/a/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "10.1"

    .line 86
    invoke-static {v4, v6}, Lw3/c/a/a/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "10.2"

    .line 87
    invoke-static {v4, v6}, Lw3/c/a/a/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "10.3"

    .line 88
    invoke-static {v4, v6}, Lw3/c/a/a/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "10.4"

    .line 89
    invoke-static {v4, v6}, Lw3/c/a/a/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "10.5"

    .line 90
    invoke-static {v4, v6}, Lw3/c/a/a/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "10.6"

    .line 91
    invoke-static {v4, v6}, Lw3/c/a/a/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "10.7"

    .line 92
    invoke-static {v4, v6}, Lw3/c/a/a/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "10.8"

    .line 93
    invoke-static {v4, v6}, Lw3/c/a/a/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "10.9"

    .line 94
    invoke-static {v4, v6}, Lw3/c/a/a/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "10.10"

    .line 95
    invoke-static {v4, v6}, Lw3/c/a/a/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "FreeBSD"

    .line 96
    invoke-static {v4}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lw3/c/a/a/a/i;->j:Z

    const-string v6, "OpenBSD"

    .line 97
    invoke-static {v6}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lw3/c/a/a/a/i;->k:Z

    const-string v7, "NetBSD"

    .line 98
    invoke-static {v7}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lw3/c/a/a/a/i;->l:Z

    const-string v8, "OS/2"

    .line 99
    invoke-static {v8}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    const-string v8, "Solaris"

    .line 100
    invoke-static {v8}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lw3/c/a/a/a/i;->m:Z

    const-string v9, "SunOS"

    .line 101
    invoke-static {v9}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    move-result v9

    sput-boolean v9, Lw3/c/a/a/a/i;->n:Z

    const-string v0, "Windows"

    .line 102
    invoke-static {v0}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    const-string v0, "Windows 2000"

    .line 103
    invoke-static {v0}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    const-string v0, "Windows 2003"

    .line 104
    invoke-static {v0}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    const-string v0, "Windows Server 2008"

    .line 105
    invoke-static {v0}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    const-string v0, "Windows Server 2012"

    .line 106
    invoke-static {v0}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    const-string v0, "Windows 95"

    .line 107
    invoke-static {v0}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    const-string v0, "Windows 98"

    .line 108
    invoke-static {v0}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    const-string v0, "Windows Me"

    .line 109
    invoke-static {v0}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    const-string v0, "Windows NT"

    .line 110
    invoke-static {v0}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    const-string v0, "Windows XP"

    .line 111
    invoke-static {v0}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    const-string v0, "Windows Vista"

    .line 112
    invoke-static {v0}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    const-string v0, "Windows 7"

    .line 113
    invoke-static {v0}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    const-string v0, "Windows 8"

    .line 114
    invoke-static {v0}, Lw3/c/a/a/a/i;->c(Ljava/lang/String;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lw3/c/a/a/a/i;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lw3/c/a/a/a/i;->c:Ljava/lang/String;

    sget-object v1, Lw3/c/a/a/a/i;->d:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 3
    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "\\."

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v0, v3

    .line 6
    :goto_0
    array-length v1, p1

    array-length v4, p0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 7
    aget-object v1, p1, v0

    aget-object v4, p0, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    move p0, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move p0, v2

    :goto_2
    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v3

    :goto_4
    return v2
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lw3/c/a/a/a/i;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught a SecurityException reading the system property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'; the SystemUtils property value will default to null."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
