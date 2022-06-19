.class public final Le/m/a/h/a/a/z2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Le/m/a/h/a/d/g;


# instance fields
.field public final a:Le/m/a/h/a/a/e0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/m/a/h/a/d/g;

    const-string v1, "VerifySliceTaskHandler"

    .line 1
    invoke-direct {v0, v1}, Le/m/a/h/a/d/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/m/a/h/a/a/z2;->b:Le/m/a/h/a/d/g;

    return-void
.end method

.method public constructor <init>(Le/m/a/h/a/a/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/z2;->a:Le/m/a/h/a/a/e0;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/h/a/a/y2;)V
    .locals 12

    iget-object v0, p0, Le/m/a/h/a/a/z2;->a:Le/m/a/h/a/a/e0;

    iget-object v1, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    iget v2, p1, Le/m/a/h/a/a/y2;->c:I

    iget-wide v3, p1, Le/m/a/h/a/a/y2;->d:J

    iget-object v5, p1, Le/m/a/h/a/a/y2;->e:Ljava/lang/String;

    .line 1
    invoke-virtual/range {v0 .. v5}, Le/m/a/h/a/a/e0;->s(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 3
    :try_start_0
    iget-object v4, p0, Le/m/a/h/a/a/z2;->a:Le/m/a/h/a/a/e0;

    iget-object v5, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    iget v6, p1, Le/m/a/h/a/a/y2;->c:I

    iget-wide v7, p1, Le/m/a/h/a/a/y2;->d:J

    iget-object v9, p1, Le/m/a/h/a/a/y2;->e:Ljava/lang/String;

    .line 4
    invoke-virtual/range {v4 .. v9}, Le/m/a/h/a/a/e0;->r(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    invoke-static {v0, v1}, Le/m/a/h/a/a/x2;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 7
    :try_start_1
    invoke-static {v1}, Ln3/g0/y;->t2(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, p1, Le/m/a/h/a/a/y2;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    sget-object v1, Le/m/a/h/a/a/z2;->b:Le/m/a/h/a/d/g;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Le/m/a/h/a/a/y2;->e:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Verification of slice %s of pack %s successful."

    .line 10
    invoke-virtual {v1, v5, v4}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 11
    iget-object v6, p0, Le/m/a/h/a/a/z2;->a:Le/m/a/h/a/a/e0;

    iget-object v7, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    iget v8, p1, Le/m/a/h/a/a/y2;->c:I

    iget-wide v9, p1, Le/m/a/h/a/a/y2;->d:J

    iget-object v11, p1, Le/m/a/h/a/a/y2;->e:Ljava/lang/String;

    .line 12
    invoke-virtual/range {v6 .. v11}, Le/m/a/h/a/a/e0;->t(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 15
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Le/m/a/h/a/a/x0;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Le/m/a/h/a/a/y2;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Failed to move slice %s after verification."

    .line 16
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Le/m/a/h/a/a/r1;->a:I

    invoke-direct {v0, v1, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 17
    :cond_2
    new-instance v0, Le/m/a/h/a/a/x0;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Le/m/a/h/a/a/y2;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Verification failed for slice %s."

    .line 18
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Le/m/a/h/a/a/r1;->a:I

    invoke-direct {v0, v1, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Le/m/a/h/a/a/x0;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Le/m/a/h/a/a/y2;->e:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v2, "Could not digest file during verification for slice %s."

    .line 19
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Le/m/a/h/a/a/r1;->a:I

    invoke-direct {v1, v2, v0, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    :catch_1
    move-exception v0

    .line 20
    new-instance v1, Le/m/a/h/a/a/x0;

    iget p1, p1, Le/m/a/h/a/a/r1;->a:I

    const-string v2, "SHA256 algorithm not supported."

    .line 21
    invoke-direct {v1, v2, v0, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    .line 22
    :cond_3
    :try_start_2
    new-instance v0, Le/m/a/h/a/a/x0;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p1, Le/m/a/h/a/a/y2;->e:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v4, "Cannot find metadata files for slice %s."

    .line 23
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v4, p1, Le/m/a/h/a/a/r1;->a:I

    invoke-direct {v0, v1, v4}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    .line 24
    new-instance v1, Le/m/a/h/a/a/x0;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Le/m/a/h/a/a/y2;->e:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v2, "Could not reconstruct slice archive during verification for slice %s."

    .line 25
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Le/m/a/h/a/a/r1;->a:I

    invoke-direct {v1, v2, v0, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    .line 26
    :cond_4
    new-instance v0, Le/m/a/h/a/a/x0;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Le/m/a/h/a/a/y2;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Cannot find unverified files for slice %s."

    .line 27
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Le/m/a/h/a/a/r1;->a:I

    invoke-direct {v0, v1, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
