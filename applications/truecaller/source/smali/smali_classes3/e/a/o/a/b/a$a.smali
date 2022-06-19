.class public final Le/a/o/a/b/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/b/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/o/a/b/j;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Le/a/o/a/b/a$a;

.field public static final d:Le/a/o/a/b/a$a;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/o/a/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/o/a/b/a$a;-><init>(I)V

    sput-object v0, Le/a/o/a/b/a$a;->c:Le/a/o/a/b/a$a;

    new-instance v0, Le/a/o/a/b/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/a/o/a/b/a$a;-><init>(I)V

    sput-object v0, Le/a/o/a/b/a$a;->d:Le/a/o/a/b/a$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Le/a/o/a/b/a$a;->b:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/o/a/b/a$a;->b:I

    const-string v2, "it"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1
    check-cast p1, Le/a/o/a/b/j;

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1

    .line 4
    :cond_1
    check-cast p1, Le/a/o/a/b/j;

    .line 5
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
