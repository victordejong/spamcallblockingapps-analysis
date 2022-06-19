.class public Lw3/b/a/i0/n$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/i0/p;
.implements Lw3/b/a/i0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/i0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final b:Lw3/b/a/i0/n$e;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lw3/b/a/i0/n$e;

    const-string v1, ""

    invoke-direct {v0, v1}, Lw3/b/a/i0/n$e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw3/b/a/i0/n$e;->b:Lw3/b/a/i0/n$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/n$e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lw3/b/a/c0;ILjava/util/Locale;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/StringBuffer;Lw3/b/a/c0;Ljava/util/Locale;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lw3/b/a/i0/n$e;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public c(Lw3/b/a/w;Ljava/lang/String;ILjava/util/Locale;)I
    .locals 6

    .line 1
    iget-object v3, p0, Lw3/b/a/i0/n$e;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lw3/b/a/i0/n$e;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p3

    return p1

    :cond_0
    not-int p1, p3

    return p1
.end method

.method public d(Lw3/b/a/c0;Ljava/util/Locale;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lw3/b/a/i0/n$e;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method
