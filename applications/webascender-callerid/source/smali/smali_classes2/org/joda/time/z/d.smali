.class public final Lorg/joda/time/z/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lorg/joda/time/z/d;


# instance fields
.field private a:Lorg/joda/time/z/e;

.field private b:Lorg/joda/time/z/e;

.field private c:Lorg/joda/time/z/e;

.field private d:Lorg/joda/time/z/e;

.field private e:Lorg/joda/time/z/e;


# direct methods
.method protected constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Lorg/joda/time/z/e;

    const/4 v2, 0x6

    new-array v3, v2, [Lorg/joda/time/z/c;

    sget-object v4, Lorg/joda/time/z/k;->a:Lorg/joda/time/z/k;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v6, Lorg/joda/time/z/o;->a:Lorg/joda/time/z/o;

    const/4 v7, 0x1

    aput-object v6, v3, v7

    sget-object v8, Lorg/joda/time/z/b;->a:Lorg/joda/time/z/b;

    const/4 v9, 0x2

    aput-object v8, v3, v9

    sget-object v10, Lorg/joda/time/z/f;->a:Lorg/joda/time/z/f;

    const/4 v11, 0x3

    aput-object v10, v3, v11

    sget-object v12, Lorg/joda/time/z/g;->a:Lorg/joda/time/z/g;

    const/4 v13, 0x4

    aput-object v12, v3, v13

    sget-object v14, Lorg/joda/time/z/h;->a:Lorg/joda/time/z/h;

    const/4 v15, 0x5

    aput-object v14, v3, v15

    invoke-direct {v1, v3}, Lorg/joda/time/z/e;-><init>([Lorg/joda/time/z/c;)V

    iput-object v1, v0, Lorg/joda/time/z/d;->a:Lorg/joda/time/z/e;

    .line 3
    new-instance v1, Lorg/joda/time/z/e;

    const/4 v3, 0x7

    new-array v3, v3, [Lorg/joda/time/z/c;

    sget-object v16, Lorg/joda/time/z/m;->a:Lorg/joda/time/z/m;

    aput-object v16, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    aput-object v8, v3, v11

    aput-object v10, v3, v13

    aput-object v12, v3, v15

    aput-object v14, v3, v2

    invoke-direct {v1, v3}, Lorg/joda/time/z/e;-><init>([Lorg/joda/time/z/c;)V

    iput-object v1, v0, Lorg/joda/time/z/d;->b:Lorg/joda/time/z/e;

    .line 4
    new-instance v1, Lorg/joda/time/z/e;

    new-array v2, v15, [Lorg/joda/time/z/c;

    sget-object v3, Lorg/joda/time/z/j;->a:Lorg/joda/time/z/j;

    aput-object v3, v2, v5

    sget-object v4, Lorg/joda/time/z/l;->a:Lorg/joda/time/z/l;

    aput-object v4, v2, v7

    aput-object v6, v2, v9

    aput-object v12, v2, v11

    aput-object v14, v2, v13

    invoke-direct {v1, v2}, Lorg/joda/time/z/e;-><init>([Lorg/joda/time/z/c;)V

    iput-object v1, v0, Lorg/joda/time/z/d;->c:Lorg/joda/time/z/e;

    .line 5
    new-instance v1, Lorg/joda/time/z/e;

    new-array v2, v15, [Lorg/joda/time/z/c;

    aput-object v3, v2, v5

    sget-object v3, Lorg/joda/time/z/n;->a:Lorg/joda/time/z/n;

    aput-object v3, v2, v7

    aput-object v4, v2, v9

    aput-object v6, v2, v11

    aput-object v14, v2, v13

    invoke-direct {v1, v2}, Lorg/joda/time/z/e;-><init>([Lorg/joda/time/z/c;)V

    iput-object v1, v0, Lorg/joda/time/z/d;->d:Lorg/joda/time/z/e;

    .line 6
    new-instance v1, Lorg/joda/time/z/e;

    new-array v2, v11, [Lorg/joda/time/z/c;

    aput-object v4, v2, v5

    aput-object v6, v2, v7

    aput-object v14, v2, v9

    invoke-direct {v1, v2}, Lorg/joda/time/z/e;-><init>([Lorg/joda/time/z/c;)V

    iput-object v1, v0, Lorg/joda/time/z/d;->e:Lorg/joda/time/z/e;

    return-void
.end method

.method public static a()Lorg/joda/time/z/d;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/z/d;->f:Lorg/joda/time/z/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/joda/time/z/d;

    invoke-direct {v0}, Lorg/joda/time/z/d;-><init>()V

    sput-object v0, Lorg/joda/time/z/d;->f:Lorg/joda/time/z/d;

    .line 3
    :cond_0
    sget-object v0, Lorg/joda/time/z/d;->f:Lorg/joda/time/z/d;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Lorg/joda/time/z/i;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/joda/time/z/d;->b:Lorg/joda/time/z/e;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/joda/time/z/e;->b(Ljava/lang/Class;)Lorg/joda/time/z/c;

    move-result-object v0

    check-cast v0, Lorg/joda/time/z/i;

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No partial converter found for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    const-string p1, "null"

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConverterManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/joda/time/z/d;->a:Lorg/joda/time/z/e;

    invoke-virtual {v1}, Lorg/joda/time/z/e;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " instant,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/joda/time/z/d;->b:Lorg/joda/time/z/e;

    invoke-virtual {v1}, Lorg/joda/time/z/e;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " partial,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/joda/time/z/d;->c:Lorg/joda/time/z/e;

    invoke-virtual {v1}, Lorg/joda/time/z/e;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " duration,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/joda/time/z/d;->d:Lorg/joda/time/z/e;

    invoke-virtual {v1}, Lorg/joda/time/z/e;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " period,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/joda/time/z/d;->e:Lorg/joda/time/z/e;

    invoke-virtual {v1}, Lorg/joda/time/z/e;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " interval]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
