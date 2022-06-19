.class public final La3;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/k<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:La3;

.field public static final d:La3;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La3;-><init>(I)V

    sput-object v0, La3;->c:La3;

    new-instance v0, La3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La3;-><init>(I)V

    sput-object v0, La3;->d:La3;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, La3;->b:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, La3;->b:I

    const-string v1, "it"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1
    check-cast p1, Ls1/k;

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 4
    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_1
    check-cast p1, Ls1/k;

    .line 7
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 9
    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method
