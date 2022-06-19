.class public final Le/k/a/c/d0/z/v$i;
.super Le/k/a/c/d0/z/v$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/v$k<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final h:Le/k/a/c/d0/z/v$i;

.field public static final i:Le/k/a/c/d0/z/v$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le/k/a/c/d0/z/v$i;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Le/k/a/c/d0/z/v$i;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    sput-object v0, Le/k/a/c/d0/z/v$i;->h:Le/k/a/c/d0/z/v$i;

    .line 2
    new-instance v0, Le/k/a/c/d0/z/v$i;

    const-class v1, Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/k/a/c/d0/z/v$i;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    sput-object v0, Le/k/a/c/d0/z/v$i;->i:Le/k/a/c/d0/z/v$i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Le/k/a/c/d0/z/v$k;-><init>(Ljava/lang/Class;Le/k/a/c/m0/f;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->T1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->B0()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/k/a/c/d0/z/v$k;->g:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->X(Le/k/a/b/j;Le/k/a/c/g;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/b0;->W(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
