.class public final Lv1;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lv1;

.field public static final d:Lv1;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv1;-><init>(I)V

    sput-object v0, Lv1;->c:Lv1;

    new-instance v0, Lv1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lv1;-><init>(I)V

    sput-object v0, Lv1;->d:Lv1;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lv1;->b:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lv1;->b:I

    const-string v1, "ThreadUtils"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "it"

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v5, :cond_0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v1, v3, v2}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_1
    check-cast p1, Ljava/lang/String;

    .line 7
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p1, v1, v3, v2}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p1

    xor-int/2addr p1, v5

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
