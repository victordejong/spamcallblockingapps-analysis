.class public final Lw3/b/a/g0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:Lw3/b/a/g0/d;


# instance fields
.field public a:Lw3/b/a/g0/e;

.field public b:Lw3/b/a/g0/e;

.field public c:Lw3/b/a/g0/e;

.field public d:Lw3/b/a/g0/e;

.field public e:Lw3/b/a/g0/e;


# direct methods
.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Lw3/b/a/g0/e;

    const/4 v2, 0x6

    new-array v3, v2, [Lw3/b/a/g0/c;

    sget-object v4, Lw3/b/a/g0/m;->a:Lw3/b/a/g0/m;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v6, Lw3/b/a/g0/q;->a:Lw3/b/a/g0/q;

    const/4 v7, 0x1

    aput-object v6, v3, v7

    sget-object v8, Lw3/b/a/g0/b;->a:Lw3/b/a/g0/b;

    const/4 v9, 0x2

    aput-object v8, v3, v9

    sget-object v10, Lw3/b/a/g0/f;->a:Lw3/b/a/g0/f;

    const/4 v11, 0x3

    aput-object v10, v3, v11

    sget-object v12, Lw3/b/a/g0/h;->a:Lw3/b/a/g0/h;

    const/4 v13, 0x4

    aput-object v12, v3, v13

    sget-object v14, Lw3/b/a/g0/i;->a:Lw3/b/a/g0/i;

    const/4 v15, 0x5

    aput-object v14, v3, v15

    invoke-direct {v1, v3}, Lw3/b/a/g0/e;-><init>([Lw3/b/a/g0/c;)V

    iput-object v1, v0, Lw3/b/a/g0/d;->a:Lw3/b/a/g0/e;

    .line 3
    new-instance v1, Lw3/b/a/g0/e;

    const/4 v3, 0x7

    new-array v3, v3, [Lw3/b/a/g0/c;

    sget-object v16, Lw3/b/a/g0/o;->a:Lw3/b/a/g0/o;

    aput-object v16, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    aput-object v8, v3, v11

    aput-object v10, v3, v13

    aput-object v12, v3, v15

    aput-object v14, v3, v2

    invoke-direct {v1, v3}, Lw3/b/a/g0/e;-><init>([Lw3/b/a/g0/c;)V

    iput-object v1, v0, Lw3/b/a/g0/d;->b:Lw3/b/a/g0/e;

    .line 4
    new-instance v1, Lw3/b/a/g0/e;

    new-array v2, v15, [Lw3/b/a/g0/c;

    sget-object v3, Lw3/b/a/g0/l;->a:Lw3/b/a/g0/l;

    aput-object v3, v2, v5

    sget-object v4, Lw3/b/a/g0/n;->a:Lw3/b/a/g0/n;

    aput-object v4, v2, v7

    aput-object v6, v2, v9

    aput-object v12, v2, v11

    aput-object v14, v2, v13

    invoke-direct {v1, v2}, Lw3/b/a/g0/e;-><init>([Lw3/b/a/g0/c;)V

    iput-object v1, v0, Lw3/b/a/g0/d;->c:Lw3/b/a/g0/e;

    .line 5
    new-instance v1, Lw3/b/a/g0/e;

    new-array v2, v15, [Lw3/b/a/g0/c;

    aput-object v3, v2, v5

    sget-object v3, Lw3/b/a/g0/p;->a:Lw3/b/a/g0/p;

    aput-object v3, v2, v7

    aput-object v4, v2, v9

    aput-object v6, v2, v11

    aput-object v14, v2, v13

    invoke-direct {v1, v2}, Lw3/b/a/g0/e;-><init>([Lw3/b/a/g0/c;)V

    iput-object v1, v0, Lw3/b/a/g0/d;->d:Lw3/b/a/g0/e;

    .line 6
    new-instance v1, Lw3/b/a/g0/e;

    new-array v2, v11, [Lw3/b/a/g0/c;

    aput-object v4, v2, v5

    aput-object v6, v2, v7

    aput-object v14, v2, v9

    invoke-direct {v1, v2}, Lw3/b/a/g0/e;-><init>([Lw3/b/a/g0/c;)V

    iput-object v1, v0, Lw3/b/a/g0/d;->e:Lw3/b/a/g0/e;

    return-void
.end method

.method public static a()Lw3/b/a/g0/d;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/g0/d;->f:Lw3/b/a/g0/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lw3/b/a/g0/d;

    invoke-direct {v0}, Lw3/b/a/g0/d;-><init>()V

    sput-object v0, Lw3/b/a/g0/d;->f:Lw3/b/a/g0/d;

    .line 3
    :cond_0
    sget-object v0, Lw3/b/a/g0/d;->f:Lw3/b/a/g0/d;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ConverterManager["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lw3/b/a/g0/d;->a:Lw3/b/a/g0/e;

    .line 2
    iget-object v1, v1, Lw3/b/a/g0/e;->a:[Lw3/b/a/g0/c;

    array-length v1, v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " instant,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw3/b/a/g0/d;->b:Lw3/b/a/g0/e;

    .line 4
    iget-object v1, v1, Lw3/b/a/g0/e;->a:[Lw3/b/a/g0/c;

    array-length v1, v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " partial,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw3/b/a/g0/d;->c:Lw3/b/a/g0/e;

    .line 6
    iget-object v1, v1, Lw3/b/a/g0/e;->a:[Lw3/b/a/g0/c;

    array-length v1, v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " duration,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw3/b/a/g0/d;->d:Lw3/b/a/g0/e;

    .line 8
    iget-object v1, v1, Lw3/b/a/g0/e;->a:[Lw3/b/a/g0/c;

    array-length v1, v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " period,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw3/b/a/g0/d;->e:Lw3/b/a/g0/e;

    .line 10
    iget-object v1, v1, Lw3/b/a/g0/e;->a:[Lw3/b/a/g0/c;

    array-length v1, v1

    const-string v2, " interval]"

    .line 11
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
