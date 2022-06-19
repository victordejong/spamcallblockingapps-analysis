.class public final Le/m/a/c/p1/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/p1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Le/m/a/c/q1/f;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Le/m/a/c/p1/p$a;->a:Landroid/content/Context;

    .line 3
    sget v0, Le/m/a/c/q1/d0;->a:I

    if-eqz p1, :cond_1

    const-string v0, "phone"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {p1}, Le/m/a/c/q1/d0;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/m/a/c/q1/d0;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_1
    sget-object v0, Le/m/a/c/p1/p;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v0, 0x4

    if-nez p1, :cond_2

    new-array p1, v0, [I

    .line 10
    fill-array-data p1, :array_0

    .line 11
    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    const-wide/32 v2, 0xf4240

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 13
    sget-object v2, Le/m/a/c/p1/p;->o:[J

    aget v4, p1, v3

    aget-wide v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 14
    sget-object v4, Le/m/a/c/p1/p;->p:[J

    const/4 v6, 0x1

    aget v7, p1, v6

    aget-wide v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v7, 0x3

    invoke-virtual {v1, v7, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 15
    sget-object v4, Le/m/a/c/p1/p;->q:[J

    aget v5, p1, v5

    aget-wide v8, v4, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v0, 0x5

    .line 16
    sget-object v4, Le/m/a/c/p1/p;->r:[J

    aget v5, p1, v7

    aget-wide v7, v4, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v0, 0x7

    .line 17
    aget v4, p1, v3

    aget-wide v4, v2, v4

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 19
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0x9

    .line 20
    aget p1, p1, v3

    aget-wide v3, v2, p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 21
    iput-object v1, p0, Le/m/a/c/p1/p$a;->b:Landroid/util/SparseArray;

    const/16 p1, 0x7d0

    .line 22
    iput p1, p0, Le/m/a/c/p1/p$a;->c:I

    .line 23
    sget-object p1, Le/m/a/c/q1/f;->a:Le/m/a/c/q1/f;

    iput-object p1, p0, Le/m/a/c/p1/p$a;->d:Le/m/a/c/q1/f;

    .line 24
    iput-boolean v6, p0, Le/m/a/c/p1/p$a;->e:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method


# virtual methods
.method public a()Le/m/a/c/p1/p;
    .locals 7

    .line 1
    new-instance v6, Le/m/a/c/p1/p;

    iget-object v1, p0, Le/m/a/c/p1/p$a;->a:Landroid/content/Context;

    iget-object v2, p0, Le/m/a/c/p1/p$a;->b:Landroid/util/SparseArray;

    iget v3, p0, Le/m/a/c/p1/p$a;->c:I

    iget-object v4, p0, Le/m/a/c/p1/p$a;->d:Le/m/a/c/q1/f;

    iget-boolean v5, p0, Le/m/a/c/p1/p$a;->e:Z

    move-object v0, v6

    .line 2
    invoke-direct/range {v0 .. v5}, Le/m/a/c/p1/p;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILe/m/a/c/q1/f;Z)V

    return-object v6
.end method
