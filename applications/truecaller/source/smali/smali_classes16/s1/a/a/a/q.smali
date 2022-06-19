.class public final Ls1/a/a/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ls1/a/a/a/v0/b/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/q;

    invoke-direct {v0}, Ls1/a/a/a/q;-><init>()V

    sput-object v0, Ls1/a/a/a/q;->a:Ls1/a/a/a/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/r;

    check-cast p2, Ls1/a/a/a/v0/b/r;

    .line 2
    invoke-static {p1, p2}, Ls1/a/a/a/v0/b/q;->b(Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/r;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
