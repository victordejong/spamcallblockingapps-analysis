.class public final Le/a/y4/g/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Character;",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/y4/g/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/y4/g/e;

    invoke-direct {v0}, Le/a/y4/g/e;-><init>()V

    sput-object v0, Le/a/y4/g/e;->b:Le/a/y4/g/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    .line 2
    invoke-static {p1}, Le/a/w4/t/a/f/f;->a(C)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x2c

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v1, 0x6

    invoke-static {p1, v0, v2, v2, v1}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
