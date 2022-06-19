.class public final Le/a/c/b/a$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/b/a;-><init>(Le/a/b0/e/r/a;Le/a/b0/o/a;Le/a/p5/g;Le/a/b0/e/f;Lo3/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/insights/state/MemoryLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/c/b/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/c/b/a$b;

    invoke-direct {v0}, Le/a/c/b/a$b;-><init>()V

    sput-object v0, Le/a/c/b/a$b;->b:Le/a/c/b/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const v2, 0xf4240

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x80

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/insights/state/MemoryLevel;->SMALL:Lcom/truecaller/insights/state/MemoryLevel;

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x100

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 3
    sget-object v0, Lcom/truecaller/insights/state/MemoryLevel;->MEDIUM:Lcom/truecaller/insights/state/MemoryLevel;

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/truecaller/insights/state/MemoryLevel;->LARGE:Lcom/truecaller/insights/state/MemoryLevel;

    :goto_0
    return-object v0
.end method
