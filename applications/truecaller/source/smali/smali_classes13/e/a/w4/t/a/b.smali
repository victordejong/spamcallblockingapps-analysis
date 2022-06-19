.class public Le/a/w4/t/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 28

    const-string v0, "g"

    const-string v1, "gg"

    const-string v2, "n"

    const-string v3, "d"

    const-string v4, "dd"

    const-string v5, "r"

    const-string v6, "m"

    const-string v7, "b"

    const-string v8, "bb"

    const-string v9, "s"

    const-string v10, "ss"

    const-string v11, ""

    const-string v12, "j"

    const-string v13, "jj"

    const-string v14, "c"

    const-string v15, "k"

    const-string v16, "t"

    const-string v17, "p"

    const-string v18, "h"

    .line 1
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/w4/t/a/b;->a:[Ljava/lang/String;

    const-string v1, "a"

    const-string v2, "ae"

    const-string v3, "ya"

    const-string v4, "yae"

    const-string v5, "eo"

    const-string v6, "e"

    const-string v7, "yeo"

    const-string v8, "ye"

    const-string v9, "o"

    const-string v10, "wa"

    const-string v11, "wae"

    const-string v12, "oe"

    const-string v13, "yo"

    const-string v14, "u"

    const-string v15, "weo"

    const-string v16, "we"

    const-string v17, "wi"

    const-string v18, "yu"

    const-string v19, "eu"

    const-string v20, "yi"

    const-string v21, "i"

    .line 2
    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/w4/t/a/b;->b:[Ljava/lang/String;

    const-string v1, "g"

    const-string v2, "gg"

    const-string v3, "gs"

    const-string v4, "n"

    const-string v5, "nj"

    const-string v6, "nh"

    const-string v7, "d"

    const-string v8, "l"

    const-string v9, "lg"

    const-string v10, "lm"

    const-string v11, "lb"

    const-string v12, "ls"

    const-string v13, "lt"

    const-string v14, "lp"

    const-string v15, "lh"

    const-string v16, "m"

    const-string v17, "b"

    const-string v18, "bs"

    const-string v19, "s"

    const-string v20, "ss"

    const-string v21, "ng"

    const-string v22, "j"

    const-string v23, "c"

    const-string v24, "k"

    const-string v25, "t"

    const-string v26, "p"

    const-string v27, "h"

    .line 3
    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/w4/t/a/b;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(CZ)[Ljava/lang/String;
    .locals 12

    .line 1
    sget-object v0, Le/a/w4/t/a/b;->b:[Ljava/lang/String;

    sget-object v1, Le/a/w4/t/a/b;->a:[Ljava/lang/String;

    invoke-static {p0}, Le/a/w4/t/a/b;->b(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const v2, 0xac00

    sub-int/2addr p0, v2

    .line 2
    rem-int/lit8 v2, p0, 0x1c

    sub-int v3, p0, v2

    .line 3
    rem-int/lit16 v3, v3, 0x24c

    div-int/lit8 v3, v3, 0x1c

    .line 4
    div-int/lit16 p0, p0, 0x24c

    const-string v4, "\u314f\u3150\u3151\u3152\u3153\u3154\u3155\u3156\u3157\u3158\u3159\u315a\u315b\u315c\u315d\u315e\u315f\u3160\u3161\u3162\u3163"

    const-string v5, "\u3131\u3132\u3134\u3137\u3138\u3139\u3141\u3142\u3143\u3145\u3146\u3147\u3148\u3149\u314a\u314b\u314c\u314d\u314e"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    new-array p1, v6, [Ljava/lang/String;

    .line 5
    new-instance v2, Ljava/lang/String;

    new-array v6, v6, [C

    invoke-virtual {v5, p0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v6, v7

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v6, v8

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([C)V

    aput-object v2, p1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, v1, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v0, v3

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v8

    return-object p1

    :cond_1
    new-array p1, v8, [Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/String;

    new-array v1, v6, [C

    invoke-virtual {v5, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v1, v7

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v1, v8

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    aput-object v0, p1, v7

    return-object p1

    :cond_2
    const-string v9, "\u3131\u3132\u3133\u3134\u3135\u3136\u3137\u3139\u313a\u313b\u313c\u313d\u313e\u313f\u3140\u3141\u3142\u3144\u3145\u3146\u3147\u3148\u314a\u314b\u314c\u314d\u314e"

    const/4 v10, 0x3

    if-eqz p1, :cond_3

    new-array p1, v6, [Ljava/lang/String;

    .line 7
    new-instance v11, Ljava/lang/String;

    new-array v10, v10, [C

    invoke-virtual {v5, p0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v10, v7

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v10, v8

    sub-int/2addr v2, v8

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v10, v6

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([C)V

    aput-object v11, p1, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, v1, p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Le/a/w4/t/a/b;->c:[Ljava/lang/String;

    aget-object p0, p0, v2

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v8

    return-object p1

    :cond_3
    new-array p1, v8, [Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/String;

    new-array v1, v10, [C

    invoke-virtual {v5, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v1, v7

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v1, v8

    sub-int/2addr v2, v8

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v1, v6

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    aput-object v0, p1, v7

    return-object p1
.end method

.method public static b(C)Z
    .locals 1

    const v0, 0xac00

    if-lt p0, v0, :cond_0

    const v0, 0xd7a3

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
