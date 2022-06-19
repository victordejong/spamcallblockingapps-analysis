.class public final Le/a/a/i1/c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/i1/c;-><init>(Le/a/p5/c0;Le/a/a/k/a/a/q;Le/a/o5/b0;Le/a/u3/g;Le/a/h0/m;Le/a/a/i0;Le/a/p5/c;)V
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
        "Le/a/a/c/j8/a;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/a/i1/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/a/i1/c$a;

    invoke-direct {v0}, Le/a/a/i1/c$a;-><init>()V

    sput-object v0, Le/a/a/i1/c$a;->b:Le/a/a/i1/c$a;

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

    const/4 v0, 0x7

    new-array v0, v0, [Le/a/a/c/j8/a;

    .line 1
    new-instance v1, Le/a/a/c/j8/a;

    const v2, 0x7f110005

    const-string v3, "\ud83e\udd23"

    invoke-direct {v1, v3, v2}, Le/a/a/c/j8/a;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    new-instance v1, Le/a/a/c/j8/a;

    const v2, 0x7f110006

    const-string v3, "\ud83d\ude0d"

    invoke-direct {v1, v3, v2}, Le/a/a/c/j8/a;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Le/a/a/c/j8/a;

    const v2, 0x7f110002

    const-string v3, "\ud83e\udd73"

    invoke-direct {v1, v3, v2}, Le/a/a/c/j8/a;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    new-instance v1, Le/a/a/c/j8/a;

    const/high16 v2, 0x7f110000

    const-string v3, "\ud83d\udd25"

    invoke-direct {v1, v3, v2}, Le/a/a/c/j8/a;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    new-instance v1, Le/a/a/c/j8/a;

    const v2, 0x7f110003

    const-string v3, "\ud83e\udd7a"

    invoke-direct {v1, v3, v2}, Le/a/a/c/j8/a;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6
    new-instance v1, Le/a/a/c/j8/a;

    const v2, 0x7f110001

    const-string v3, "\ud83d\ude2d"

    invoke-direct {v1, v3, v2}, Le/a/a/c/j8/a;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 7
    new-instance v1, Le/a/a/c/j8/a;

    const v2, 0x7f110004

    const-string v3, "\ud83d\ude21"

    invoke-direct {v1, v3, v2}, Le/a/a/c/j8/a;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 8
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
