.class public final Lz1;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lz1;

.field public static final d:Lz1;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz1;-><init>(I)V

    sput-object v0, Lz1;->c:Lz1;

    new-instance v0, Lz1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz1;-><init>(I)V

    sput-object v0, Lz1;->d:Lz1;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lz1;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lz1;->b:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0

    :cond_1
    return-object v0
.end method
