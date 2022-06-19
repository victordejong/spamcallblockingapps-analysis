.class public abstract Lm/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/f0$a;
    }
.end annotation


# static fields
.field public static final Companion:Lm/f0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm/f0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm/f0$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lm/f0;->Companion:Lm/f0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(Ljava/io/File;Lm/a0;)Lm/f0;
    .locals 1

    sget-object v0, Lm/f0;->Companion:Lm/f0$a;

    invoke-virtual {v0, p0, p1}, Lm/f0$a;->a(Ljava/io/File;Lm/a0;)Lm/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ljava/lang/String;Lm/a0;)Lm/f0;
    .locals 1

    sget-object v0, Lm/f0;->Companion:Lm/f0$a;

    invoke-virtual {v0, p0, p1}, Lm/f0$a;->b(Ljava/lang/String;Lm/a0;)Lm/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lm/a0;Ljava/io/File;)Lm/f0;
    .locals 1

    sget-object v0, Lm/f0;->Companion:Lm/f0$a;

    invoke-virtual {v0, p0, p1}, Lm/f0$a;->c(Lm/a0;Ljava/io/File;)Lm/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lm/a0;Ljava/lang/String;)Lm/f0;
    .locals 1

    sget-object v0, Lm/f0;->Companion:Lm/f0$a;

    invoke-virtual {v0, p0, p1}, Lm/f0$a;->d(Lm/a0;Ljava/lang/String;)Lm/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lm/a0;Ln/i;)Lm/f0;
    .locals 1

    sget-object v0, Lm/f0;->Companion:Lm/f0$a;

    invoke-virtual {v0, p0, p1}, Lm/f0$a;->e(Lm/a0;Ln/i;)Lm/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lm/a0;[B)Lm/f0;
    .locals 7

    sget-object v0, Lm/f0;->Companion:Lm/f0$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lm/f0$a;->i(Lm/f0$a;Lm/a0;[BIIILjava/lang/Object;)Lm/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lm/a0;[BI)Lm/f0;
    .locals 7

    sget-object v0, Lm/f0;->Companion:Lm/f0$a;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Lm/f0$a;->i(Lm/f0$a;Lm/a0;[BIIILjava/lang/Object;)Lm/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lm/a0;[BII)Lm/f0;
    .locals 1

    sget-object v0, Lm/f0;->Companion:Lm/f0$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lm/f0$a;->f(Lm/a0;[BII)Lm/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ln/i;Lm/a0;)Lm/f0;
    .locals 1

    sget-object v0, Lm/f0;->Companion:Lm/f0$a;

    invoke-virtual {v0, p0, p1}, Lm/f0$a;->g(Ln/i;Lm/a0;)Lm/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final create([B)Lm/f0;
    .locals 7

    sget-object v0, Lm/f0;->Companion:Lm/f0$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lm/f0$a;->j(Lm/f0$a;[BLm/a0;IIILjava/lang/Object;)Lm/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLm/a0;)Lm/f0;
    .locals 7

    sget-object v0, Lm/f0;->Companion:Lm/f0$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lm/f0$a;->j(Lm/f0$a;[BLm/a0;IIILjava/lang/Object;)Lm/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLm/a0;I)Lm/f0;
    .locals 7

    sget-object v0, Lm/f0;->Companion:Lm/f0$a;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Lm/f0$a;->j(Lm/f0$a;[BLm/a0;IIILjava/lang/Object;)Lm/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLm/a0;II)Lm/f0;
    .locals 1

    sget-object v0, Lm/f0;->Companion:Lm/f0$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lm/f0$a;->h([BLm/a0;II)Lm/f0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Lm/a0;
.end method

.method public isDuplex()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOneShot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract writeTo(Ln/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
