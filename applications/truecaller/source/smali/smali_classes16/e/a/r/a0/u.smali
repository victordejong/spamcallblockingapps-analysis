.class public final Le/a/r/a0/u;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Landroid/text/style/CharacterStyle;",
        "Ljava/lang/Integer;",
        "Landroid/text/style/CharacterStyle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r/a0/r;


# direct methods
.method public constructor <init>(Le/a/r/a0/r;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/u;->b:Le/a/r/a0/r;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/text/style/CharacterStyle;

    check-cast p2, Ljava/lang/Integer;

    .line 2
    instance-of p2, p1, Landroid/text/style/URLSpan;

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Le/a/r/a0/t;

    invoke-direct {p2, p0, p1}, Le/a/r/a0/t;-><init>(Le/a/r/a0/u;Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method
