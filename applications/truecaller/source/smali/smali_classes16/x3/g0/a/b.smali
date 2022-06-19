.class public final Lx3/g0/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx3/j<",
        "TT;",
        "Lu3/j0;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lu3/c0;

.field public static final d:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lu3/c0;->f:Lu3/c0$a;

    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Lu3/c0$a;->a(Ljava/lang/String;)Lu3/c0;

    move-result-object v0

    .line 2
    sput-object v0, Lx3/g0/a/b;->c:Lu3/c0;

    const-string v0, "UTF-8"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lx3/g0/a/b;->d:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Le/m/e/k;Le/m/e/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/k;",
            "Le/m/e/b0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/g0/a/b;->a:Le/m/e/k;

    .line 3
    iput-object p2, p0, Lx3/g0/a/b;->b:Le/m/e/b0;

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lv3/f;

    invoke-direct {v0}, Lv3/f;-><init>()V

    .line 2
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 3
    new-instance v2, Lv3/f$b;

    invoke-direct {v2, v0}, Lv3/f$b;-><init>(Lv3/f;)V

    .line 4
    sget-object v3, Lx3/g0/a/b;->d:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 5
    iget-object v2, p0, Lx3/g0/a/b;->a:Le/m/e/k;

    invoke-virtual {v2, v1}, Le/m/e/k;->l(Ljava/io/Writer;)Le/m/e/g0/c;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lx3/g0/a/b;->b:Le/m/e/b0;

    invoke-virtual {v2, v1, p1}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v1}, Le/m/e/g0/c;->close()V

    .line 8
    sget-object p1, Lx3/g0/a/b;->c:Lu3/c0;

    invoke-virtual {v0}, Lv3/f;->E()Lv3/i;

    move-result-object v0

    const-string v1, "content"

    .line 9
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$toRequestBody"

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v1, Lu3/i0;

    invoke-direct {v1, v0, p1}, Lu3/i0;-><init>(Lv3/i;Lu3/c0;)V

    return-object v1
.end method
