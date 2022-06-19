.class public final Le/a/h0/a/v$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h0/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Le/a/h0/a/v;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/h0/a/v$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/h0/a/v$d;

    invoke-direct {v0}, Le/a/h0/a/v$d;-><init>()V

    sput-object v0, Le/a/h0/a/v$d;->b:Le/a/h0/a/v$d;

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
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Le/a/h0/a/v;

    .line 1
    sget-object v1, Le/a/h0/a/v$a;->i:Le/a/h0/a/v$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Le/a/h0/a/v$e;->i:Le/a/h0/a/v$e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sget-object v1, Le/a/h0/a/v$j;->i:Le/a/h0/a/v$j;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    sget-object v1, Le/a/h0/a/v$k;->i:Le/a/h0/a/v$k;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    sget-object v1, Le/a/h0/a/v$f;->i:Le/a/h0/a/v$f;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6
    sget-object v1, Le/a/h0/a/v$i;->i:Le/a/h0/a/v$i;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 7
    sget-object v1, Le/a/h0/a/v$h;->i:Le/a/h0/a/v$h;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 8
    sget-object v1, Le/a/h0/a/v$g;->i:Le/a/h0/a/v$g;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 9
    sget-object v1, Le/a/h0/a/v$b;->i:Le/a/h0/a/v$b;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 10
    sget-object v1, Le/a/h0/a/v$c;->i:Le/a/h0/a/v$c;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 11
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
