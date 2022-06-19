.class public final Le/a/p5/s0/s;
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
.field public final synthetic b:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Ls1/z/b/l;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/s0/s;->b:Ls1/z/b/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/text/style/CharacterStyle;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    const-string p2, "style"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p2, p1, Landroid/text/style/URLSpan;

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Le/a/p5/s0/r;

    invoke-direct {p2, p0, p1}, Le/a/p5/s0/r;-><init>(Le/a/p5/s0/s;Landroid/text/style/CharacterStyle;)V

    move-object p1, p2

    :cond_0
    return-object p1
.end method
