.class public final Lh2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lh2;

.field public static final d:Lh2;

.field public static final e:Lh2;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh2;-><init>(I)V

    sput-object v0, Lh2;->c:Lh2;

    new-instance v0, Lh2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lh2;-><init>(I)V

    sput-object v0, Lh2;->d:Lh2;

    new-instance v0, Lh2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lh2;-><init>(I)V

    sput-object v0, Lh2;->e:Lh2;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lh2;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lh2;->b:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1
    invoke-static {}, Le/a/c/p/a;->s0()Le/m/d/n/i;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 3
    throw v0

    .line 4
    :cond_2
    invoke-static {}, Le/a/l4/k;->T()Z

    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "qaServer"

    .line 6
    invoke-static {v0}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
