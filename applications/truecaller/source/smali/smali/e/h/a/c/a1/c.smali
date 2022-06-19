.class public final Le/h/a/c/a1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/h/a/c/a1/c$a;,
        Le/h/a/c/a1/c$b;
    }
.end annotation


# static fields
.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "."

    const-string v1, ":"

    const-string v2, "$"

    const-string v3, "\'"

    const-string v4, "\""

    const-string v5, "\\"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/h/a/c/a1/c;->b:[Ljava/lang/String;

    const-string v1, "."

    const-string v2, ":"

    const-string v3, "$"

    const-string v4, "\'"

    const-string v5, "\""

    const-string v6, "\\"

    .line 2
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/h/a/c/a1/c;->c:[Ljava/lang/String;

    const-string v0, "\'"

    const-string v1, "\""

    const-string v2, "\\"

    .line 3
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/h/a/c/a1/c;->d:[Ljava/lang/String;

    const-string v1, "Stayed"

    const-string v2, "Notification Clicked"

    const-string v3, "Notification Viewed"

    const-string v4, "UTM Visited"

    const-string v5, "Notification Sent"

    const-string v6, "App Launched"

    const-string v7, "wzrk_d"

    const-string v8, "App Uninstalled"

    const-string v9, "Notification Bounced"

    const-string v10, "Geocluster Entered"

    const-string v11, "Geocluster Exited"

    .line 4
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/h/a/c/a1/c;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/h/a/c/a1/a;
    .locals 7

    .line 1
    new-instance v0, Le/h/a/c/a1/a;

    invoke-direct {v0}, Le/h/a/c/a1/a;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v1, Le/h/a/c/a1/c;->b:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    const-string v6, ""

    .line 4
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x200

    if-le v1, v2, :cond_1

    const/16 v1, 0x1ff

    .line 6
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1fe

    const/16 v2, 0xb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "512"

    aput-object v5, v4, v3

    invoke-static {v1, v2, v4}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v1

    .line 8
    iget-object v2, v1, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 9
    iput-object v2, v0, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 10
    iget v1, v1, Le/h/a/c/a1/a;->a:I

    .line 11
    iput v1, v0, Le/h/a/c/a1/a;->a:I

    .line 12
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 13
    iput-object p1, v0, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Le/h/a/c/a1/a;
    .locals 7

    .line 1
    new-instance v0, Le/h/a/c/a1/a;

    invoke-direct {v0}, Le/h/a/c/a1/a;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v1, Le/h/a/c/a1/c;->d:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    const-string v6, ""

    .line 4
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x200

    if-le v1, v2, :cond_1

    const/16 v1, 0x1ff

    .line 6
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x209

    const/16 v2, 0xb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v3

    const-string v3, "512"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 7
    invoke-static {v1, v2, v4}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v1

    .line 8
    iget-object v2, v1, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 9
    iput-object v2, v0, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 10
    iget v1, v1, Le/h/a/c/a1/a;->a:I

    .line 11
    iput v1, v0, Le/h/a/c/a1/a;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    :cond_1
    iput-object p1, v0, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Le/h/a/c/a1/a;
    .locals 7

    .line 1
    new-instance v0, Le/h/a/c/a1/a;

    invoke-direct {v0}, Le/h/a/c/a1/a;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v1, Le/h/a/c/a1/c;->c:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    const-string v6, ""

    .line 4
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x78

    if-le v1, v2, :cond_1

    const/16 v1, 0x77

    .line 6
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x208

    const/16 v2, 0xb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "120"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v1

    .line 8
    iget-object v2, v1, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 9
    iput-object v2, v0, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 10
    iget v1, v1, Le/h/a/c/a1/a;->a:I

    .line 11
    iput v1, v0, Le/h/a/c/a1/a;->a:I

    .line 12
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 13
    iput-object p1, v0, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/lang/Object;Le/h/a/c/a1/c$b;)Le/h/a/c/a1/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/h/a/c/a1/a;

    invoke-direct {v0}, Le/h/a/c/a1/a;-><init>()V

    .line 2
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_f

    instance-of v1, p1, Ljava/lang/Float;

    if-nez v1, :cond_f

    instance-of v1, p1, Ljava/lang/Boolean;

    if-nez v1, :cond_f

    instance-of v1, p1, Ljava/lang/Double;

    if-nez v1, :cond_f

    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 3
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    const/4 v2, 0x2

    const/16 v3, 0x209

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_b

    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_1

    goto/16 :goto_5

    .line 4
    :cond_1
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_2

    const-string p2, "$D_"

    .line 5
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    iput-object p1, v0, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    return-object v0

    .line 7
    :cond_2
    instance-of v1, p1, [Ljava/lang/String;

    if-nez v1, :cond_3

    instance-of v7, p1, Ljava/util/ArrayList;

    if-eqz v7, :cond_a

    :cond_3
    sget-object v7, Le/h/a/c/a1/c$b;->a:Le/h/a/c/a1/c$b;

    .line 8
    invoke-virtual {p2, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 9
    instance-of p2, p1, Ljava/util/ArrayList;

    const/4 v7, 0x0

    if-eqz p2, :cond_4

    .line 10
    move-object p2, p1

    check-cast p2, Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    move-object p2, v7

    :goto_0
    if-eqz v1, :cond_5

    .line 11
    move-object v7, p1

    check-cast v7, [Ljava/lang/String;

    .line 12
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_6

    .line 13
    array-length p2, v7

    move v1, v5

    :goto_1
    if-ge v1, p2, :cond_7

    aget-object v8, v7, v1

    .line 14
    :try_start_0
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :catch_1
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 16
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :cond_7
    new-array p2, v5, [Ljava/lang/String;

    .line 17
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 18
    array-length p2, p1

    if-lez p2, :cond_9

    array-length p2, p1

    const/16 v1, 0x64

    if-gt p2, v1, :cond_9

    .line 19
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 20
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 21
    array-length v2, p1

    :goto_3
    if-ge v5, v2, :cond_8

    aget-object v3, p1, v5

    .line 22
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    :try_start_2
    const-string p1, "$set"

    .line 23
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 24
    :catch_2
    iput-object v1, v0, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    goto :goto_4

    :cond_9
    const/16 p2, 0xd

    new-array v1, v2, [Ljava/lang/String;

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length p1, p1

    invoke-static {v2, p1, v4}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "100"

    aput-object p1, v1, v6

    .line 26
    invoke-static {v3, p2, v1}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object p1

    .line 27
    iget-object p2, p1, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 28
    iput-object p2, v0, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 29
    iget p1, p1, Le/h/a/c/a1/a;->a:I

    .line 30
    iput p1, v0, Le/h/a/c/a1/a;->a:I

    :goto_4
    return-object v0

    .line 31
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a String, Boolean, Long, Integer, Float, Double, or Date"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_b
    :goto_5
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_c

    .line 33
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 34
    :cond_c
    check-cast p1, Ljava/lang/String;

    .line 35
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 36
    sget-object p2, Le/h/a/c/a1/c;->d:[Ljava/lang/String;

    array-length v1, p2

    move v7, v5

    :goto_7
    if-ge v7, v1, :cond_d

    aget-object v8, p2, v7

    .line 37
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 38
    :cond_d
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0x200

    if-le p2, v1, :cond_e

    const/16 p2, 0x1ff

    .line 39
    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xb

    new-array v1, v2, [Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "512"

    aput-object v2, v1, v6

    invoke-static {v3, p2, v1}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object p2

    .line 41
    iget-object v1, p2, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 42
    iput-object v1, v0, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 43
    iget p2, p2, Le/h/a/c/a1/a;->a:I

    .line 44
    iput p2, v0, Le/h/a/c/a1/a;->a:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 45
    :catch_3
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 46
    iput-object p1, v0, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    return-object v0

    .line 47
    :cond_f
    :goto_8
    iput-object p1, v0, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public e(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Le/h/a/c/a1/a;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    new-instance v3, Le/h/a/c/a1/a;

    invoke-direct {v3}, Le/h/a/c/a1/a;-><init>()V

    const-string v4, "multiValuePropertyRemoveValues"

    move-object/from16 v5, p3

    .line 2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x64

    .line 3
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 4
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-nez v4, :cond_0

    .line 6
    new-instance v10, Ljava/util/BitSet;

    add-int v11, v8, v9

    invoke-direct {v10, v11}, Ljava/util/BitSet;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0, v2, v7, v10, v8}, Le/h/a/c/a1/c;->f(Lorg/json/JSONArray;Ljava/util/Set;Ljava/util/BitSet;I)I

    move-result v11

    const/4 v12, 0x0

    if-nez v4, :cond_1

    .line 8
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v13

    if-ge v13, v5, :cond_1

    .line 9
    invoke-virtual {v0, v1, v7, v10, v12}, Le/h/a/c/a1/c;->f(Lorg/json/JSONArray;Ljava/util/Set;Ljava/util/BitSet;I)I

    move-result v13

    goto :goto_1

    :cond_1
    move v13, v12

    :goto_1
    move v14, v13

    :goto_2
    if-ge v14, v8, :cond_4

    if-eqz v4, :cond_2

    .line 10
    :try_start_0
    invoke-virtual {v1, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 11
    invoke-virtual {v7, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 12
    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 13
    :cond_2
    invoke-virtual {v10, v14}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-nez v15, :cond_3

    .line 14
    invoke-virtual {v1, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    if-nez v4, :cond_6

    .line 15
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v1, v5, :cond_6

    move v1, v11

    :goto_4
    if-ge v1, v9, :cond_6

    add-int v4, v1, v8

    .line 16
    :try_start_1
    invoke-virtual {v10, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 17
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    if-gtz v11, :cond_7

    if-lez v13, :cond_8

    :cond_7
    const/16 v1, 0x209

    const/16 v2, 0xc

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p4, v4, v12

    const-string v5, "100"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 18
    invoke-static {v1, v2, v4}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v1

    .line 19
    iget v2, v1, Le/h/a/c/a1/a;->a:I

    .line 20
    iput v2, v3, Le/h/a/c/a1/a;->a:I

    .line 21
    iget-object v1, v1, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 22
    iput-object v1, v3, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 23
    :cond_8
    iput-object v6, v3, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    return-object v3
.end method

.method public final f(Lorg/json/JSONArray;Ljava/util/Set;Ljava/util/BitSet;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/BitSet;",
            "I)I"
        }
    .end annotation

    const/16 v0, 0x64

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_5

    .line 2
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez p3, :cond_1

    if-eqz v3, :cond_4

    .line 4
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    if-eqz v3, :cond_3

    .line 5
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v0, :cond_4

    return v1

    :cond_3
    :goto_2
    add-int v3, v1, p4

    .line 8
    invoke-virtual {p3, v3, v2}, Ljava/util/BitSet;->set(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
