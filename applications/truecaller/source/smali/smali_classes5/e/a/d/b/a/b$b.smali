.class public final Le/a/d/b/a/b$b;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/a/b;->gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Le/a/d/b/a/b$b;

.field public static final d:Le/a/d/b/a/b$b;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/d/b/a/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/d/b/a/b$b;-><init>(I)V

    sput-object v0, Le/a/d/b/a/b$b;->c:Le/a/d/b/a/b$b;

    new-instance v0, Le/a/d/b/a/b$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/a/d/b/a/b$b;-><init>(I)V

    sput-object v0, Le/a/d/b/a/b$b;->d:Le/a/d/b/a/b$b;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Le/a/d/b/a/b$b;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/d/b/a/b$b;->b:I

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
