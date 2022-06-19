.class public final Lp3/a/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/f0$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Lcom/google/common/io/BaseEncoding;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lp3/a/f0;->a:Ljava/nio/charset/Charset;

    .line 2
    sget-object v0, Lp3/a/o0;->d:Lcom/google/common/io/BaseEncoding;

    sput-object v0, Lp3/a/f0;->b:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method public static a(Ljava/lang/String;Lp3/a/f0$a;)Lp3/a/o0$f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lp3/a/f0$a<",
            "TT;>;)",
            "Lp3/a/o0$f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 2
    :cond_0
    invoke-static {p0, v1, p1}, Lp3/a/o0$f;->b(Ljava/lang/String;ZLp3/a/o0$i;)Lp3/a/o0$f;

    move-result-object p0

    return-object p0
.end method
